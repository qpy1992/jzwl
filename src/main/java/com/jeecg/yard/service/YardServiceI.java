package com.jeecg.yard.service;
import com.jeecg.yard.entity.YardEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface YardServiceI extends CommonService{
	
 	public void delete(YardEntity entity) throws Exception;
 	
 	public Serializable save(YardEntity entity) throws Exception;
 	
 	public void saveOrUpdate(YardEntity entity) throws Exception;
 	
}
