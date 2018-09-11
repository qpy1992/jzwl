package com.jeecg.doorpoint.service.impl;
import com.jeecg.doorpoint.entity.DpcontactEntity;
import com.jeecg.doorpoint.service.DoorPointServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import com.jeecg.doorpoint.entity.DoorPointEntity;
import com.jeecg.doorpoint.page.DoorPointPage;

import org.jeecgframework.core.util.*;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;

import java.util.ArrayList;
import java.util.UUID;
import java.io.Serializable;

import org.jeecgframework.web.cgform.enhance.CgformEnhanceJavaInter;
import java.util.Map;
import java.util.HashMap;
import org.jeecgframework.minidao.util.FreemarkerParseFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

@Service("doorPointService")
@Transactional
public class DoorPointServiceImpl extends CommonServiceImpl implements DoorPointServiceI {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
 	public void delete(DoorPointEntity entity) throws Exception{
 		super.delete(entity);
 	}
	
	public void addMain(DoorPointPage doorPointPage) throws Exception {
		DoorPointEntity doorPoint = new DoorPointEntity();
		MyBeanUtils.copyBeanNotNull2Bean(doorPointPage, doorPoint);
		//保存主信息
        doorPoint.setFcode(PinyinUtil.getPinYinHeadChar(doorPoint.getFname()));
		this.save(doorPoint);
		/**保存-门点联系人*/
		List<DpcontactEntity> dpcontactList = doorPointPage.getDpcontactList();
		for(DpcontactEntity dpcontact:dpcontactList){
			//外键设置
			dpcontact.setFid(doorPoint.getId());
			this.save(dpcontact);
		}
	}

	
	public void updateMain(DoorPointPage doorPointPage) throws Exception{
		DoorPointEntity doorPoint = new DoorPointEntity();
		//保存主表信息
		if(StringUtil.isNotEmpty(doorPointPage.getId())){
			doorPoint = findUniqueByProperty(DoorPointEntity.class, "id", doorPointPage.getId());
			MyBeanUtils.copyBeanNotNull2Bean(doorPointPage, doorPoint);
			this.saveOrUpdate(doorPoint);
		}else{
			this.saveOrUpdate(doorPoint);
		}
		//===================================================================================
		//获取参数
		Object id0 = doorPoint.getId();
		//===================================================================================
		//1.门点联系人数据库的数据
	    String hql0 = "from DpcontactEntity where 1 = 1 AND fid = ? ";
	    List<DpcontactEntity> dpcontactOldList = this.findHql(hql0,id0);
		//2.门点联系人新的数据
		List<DpcontactEntity> dpcontactList = doorPointPage.getDpcontactList();
	    //3.筛选更新明细数据-门点联系人
		if(dpcontactList!=null &&dpcontactList.size()>0){
			for(DpcontactEntity oldE:dpcontactOldList){
				boolean isUpdate = false;
				for(DpcontactEntity sendE:dpcontactList){
					//需要更新的明细数据-门点联系人
					if(oldE.getId().equals(sendE.getId())){
		    			try {
							MyBeanUtils.copyBeanNotNull2Bean(sendE,oldE);
							this.saveOrUpdate(oldE);
						} catch (Exception e) {
							e.printStackTrace();
							throw new BusinessException(e.getMessage());
						}
						isUpdate= true;
		    			break;
		    		}
		    	}
	    		if(!isUpdate){
		    		//如果数据库存在的明细，前台没有传递过来则是删除-门点联系人
		    		super.delete(oldE);
	    		}
	    		
			}
			//4.持久化新增的数据-门点联系人
			for(DpcontactEntity dpcontact:dpcontactList){
				if(oConvertUtils.isEmpty(dpcontact.getId())){
					//外键设置
					dpcontact.setFid(doorPoint.getId());
					this.save(dpcontact);
				}
			}
		}
	}

	
	public void delMain(DoorPointEntity doorPoint) throws Exception{
		//删除主表信息
		this.delete(doorPoint);
		//===================================================================================
		//获取参数
		Object id0 = doorPoint.getId();
		//===================================================================================
		//删除-门点联系人
	    String hql0 = "from DpcontactEntity where 1 = 1 AND fid = ? ";
	    List<DpcontactEntity> dpcontactOldList = this.findHql(hql0,id0);
		this.deleteAllEntitie(dpcontactOldList);
	}
	
 	
}