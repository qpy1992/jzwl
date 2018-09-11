package com.jeecg.entrust.service;
import com.jeecg.entrust.entity.EntrustEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface EntrustServiceI extends CommonService{
	
 	public void delete(EntrustEntity entity) throws Exception;
 	
 	public Serializable save(EntrustEntity entity) throws Exception;
 	
 	public void saveOrUpdate(EntrustEntity entity) throws Exception;
 	
}
