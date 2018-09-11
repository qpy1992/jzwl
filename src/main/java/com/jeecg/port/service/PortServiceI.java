package com.jeecg.port.service;
import com.jeecg.port.entity.PortEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface PortServiceI extends CommonService{
	
 	public void delete(PortEntity entity) throws Exception;
 	
 	public Serializable save(PortEntity entity) throws Exception;
 	
 	public void saveOrUpdate(PortEntity entity) throws Exception;
 	
}
