package com.jeecg.custom.service.impl;

import com.jeecg.custom.entity.CusCombinationEntity;
import com.jeecg.custom.entity.CusContactEntity;
import com.jeecg.custom.entity.CusSalesEntity;
import com.jeecg.custom.service.CustomServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import com.jeecg.custom.entity.CustomEntity;
import com.jeecg.custom.page.CustomPage;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.util.MyBeanUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import java.util.List;

@Service("customService")
@Transactional
public class CustomServiceImpl extends CommonServiceImpl implements CustomServiceI {
    @Autowired
    private SystemService systemService;

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
 	public void delete(CustomEntity entity) throws Exception{
 		super.delete(entity);
 	}
	
	public void addMain(CustomPage customPage) throws Exception {
		CustomEntity custom = new CustomEntity();
		MyBeanUtils.copyBeanNotNull2Bean(customPage, custom);
		//保存主信息
        custom.setFcode(systemService.getFcode(97));
		this.save(custom);
		systemService.executeSql("update t_billCodeRule set FProjectVal=FProjectVal+1 where FBillType=97 and FProjectID=3");
		/**保存-联系人*/
		List<CusContactEntity> cusContactList = customPage.getCusContactList();
		for(CusContactEntity cusContact:cusContactList){
			//外键设置
			cusContact.setFid(custom.getId());
			this.save(cusContact);
		}
		/**保存-业务员*/
		List<CusSalesEntity> cusSalesList = customPage.getCusSalesList();
		for(CusSalesEntity cusSales:cusSalesList){
			//外键设置
			cusSales.setFid(custom.getId());
			this.save(cusSales);
		}
		/**保存-费用组合*/
		List<CusCombinationEntity> cusCombinationList = customPage.getCusCombinationList();
		for(CusCombinationEntity cusCombination:cusCombinationList){
			//外键设置
			cusCombination.setFid(custom.getId());
			this.save(cusCombination);
		}
	}

	
	public void updateMain(CustomPage customPage) throws Exception{
		CustomEntity custom = new CustomEntity();
		//保存主表信息
		if(StringUtil.isNotEmpty(customPage.getId())){
			custom = findUniqueByProperty(CustomEntity.class, "id", customPage.getId());
			MyBeanUtils.copyBeanNotNull2Bean(customPage, custom);
			this.saveOrUpdate(custom);
		}else{
			this.saveOrUpdate(custom);
		}
		//===================================================================================
		//获取参数
		Object id0 = custom.getId();
		Object id1 = custom.getId();
		Object id2 = custom.getId();
		//===================================================================================
		//1.联系人数据库的数据
	    String hql0 = "from CusContactEntity where 1 = 1 AND fid = ? ";
	    List<CusContactEntity> cusContactOldList = this.findHql(hql0,id0);
		//2.联系人新的数据
		List<CusContactEntity> cusContactList = customPage.getCusContactList();
	    //3.筛选更新明细数据-联系人
		if(cusContactList!=null &&cusContactList.size()>0){
			for(CusContactEntity oldE:cusContactOldList){
				boolean isUpdate = false;
				for(CusContactEntity sendE:cusContactList){
					//需要更新的明细数据-联系人
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
		    		//如果数据库存在的明细，前台没有传递过来则是删除-联系人
		    		super.delete(oldE);
	    		}
	    		
			}
			//4.持久化新增的数据-联系人
			for(CusContactEntity cusContact:cusContactList){
				if(oConvertUtils.isEmpty(cusContact.getId())){
					//外键设置
					cusContact.setFid(custom.getId());
					this.save(cusContact);
				}
			}
		}
		//===================================================================================
		//1.业务员数据库的数据
	    String hql1 = "from CusSalesEntity where 1 = 1 AND fid = ? ";
	    List<CusSalesEntity> cusSalesOldList = this.findHql(hql1,id1);
		//2.业务员新的数据
		List<CusSalesEntity> cusSalesList = customPage.getCusSalesList();
	    //3.筛选更新明细数据-业务员
		if(cusSalesList!=null &&cusSalesList.size()>0){
			for(CusSalesEntity oldE:cusSalesOldList){
				boolean isUpdate = false;
				for(CusSalesEntity sendE:cusSalesList){
					//需要更新的明细数据-业务员
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
		    		//如果数据库存在的明细，前台没有传递过来则是删除-业务员
		    		super.delete(oldE);
	    		}
	    		
			}
			//4.持久化新增的数据-业务员
			for(CusSalesEntity cusSales:cusSalesList){
				if(oConvertUtils.isEmpty(cusSales.getId())){
					//外键设置
					cusSales.setFid(custom.getId());
					this.save(cusSales);
				}
			}
		}
		//===================================================================================
		//1.费用组合数据库的数据
	    String hql2 = "from CusCombinationEntity where 1 = 1 AND fid = ? ";
	    List<CusCombinationEntity> cusCombinationOldList = this.findHql(hql2,id2);
		//2.费用组合新的数据
		List<CusCombinationEntity> cusCombinationList = customPage.getCusCombinationList();
	    //3.筛选更新明细数据-费用组合
		if(cusCombinationList!=null &&cusCombinationList.size()>0){
			for(CusCombinationEntity oldE:cusCombinationOldList){
				boolean isUpdate = false;
				for(CusCombinationEntity sendE:cusCombinationList){
					//需要更新的明细数据-费用组合
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
		    		//如果数据库存在的明细，前台没有传递过来则是删除-费用组合
		    		super.delete(oldE);
	    		}
	    		
			}
			//4.持久化新增的数据-费用组合
			for(CusCombinationEntity cusCombination:cusCombinationList){
				if(oConvertUtils.isEmpty(cusCombination.getId())){
					//外键设置
					cusCombination.setFid(custom.getId());
					this.save(cusCombination);
				}
			}
		}
	}

	
	public void delMain(CustomEntity custom) throws Exception{
		//删除主表信息
		this.delete(custom);
		//===================================================================================
		//获取参数
		Object id0 = custom.getId();
		Object id1 = custom.getId();
		Object id2 = custom.getId();
		//===================================================================================
		//删除-联系人
	    String hql0 = "from CusContactEntity where 1 = 1 AND fid = ? ";
	    List<CusContactEntity> cusContactOldList = this.findHql(hql0,id0);
		this.deleteAllEntitie(cusContactOldList);
		//===================================================================================
		//删除-业务员
	    String hql1 = "from CusSalesEntity where 1 = 1 AND fid = ? ";
	    List<CusSalesEntity> cusSalesOldList = this.findHql(hql1,id1);
		this.deleteAllEntitie(cusSalesOldList);
		//===================================================================================
		//删除-费用组合
	    String hql2 = "from CusCombinationEntity where 1 = 1 AND fid = ? ";
	    List<CusCombinationEntity> cusCombinationOldList = this.findHql(hql2,id2);
		this.deleteAllEntitie(cusCombinationOldList);
	}
	
 	
}