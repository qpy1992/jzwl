package com.jeecg.doorpoint.service;
import com.jeecg.doorpoint.entity.DoorPointEntity;
import com.jeecg.doorpoint.page.DoorPointPage;

import java.util.List;
import org.jeecgframework.core.common.service.CommonService;
import java.io.Serializable;

public interface DoorPointServiceI extends CommonService{
 	public void delete(DoorPointEntity entity) throws Exception;
	/**
	 * 添加一对多
	 * 
	 */
	public void addMain(DoorPointPage doorPointPage) throws Exception;
	        
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(DoorPointPage doorPointPage) throws Exception;
	
	/**
	 * 删除一对多
	 * 
	 */
	public void delMain (DoorPointEntity doorPoint) throws Exception;
}
