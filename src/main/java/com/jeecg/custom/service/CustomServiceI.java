package com.jeecg.custom.service;

import com.jeecg.custom.entity.CustomEntity;
import com.jeecg.custom.page.CustomPage;
import org.jeecgframework.core.common.service.CommonService;

public interface CustomServiceI extends CommonService{
 	public void delete(CustomEntity entity) throws Exception;
	/**
	 * 添加一对多
	 * 
	 */
	public void addMain(CustomPage customPage) throws Exception;
	        
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(CustomPage customPage) throws Exception;
	
	/**
	 * 删除一对多
	 * 
	 */
	public void delMain (CustomEntity custom) throws Exception;
}
