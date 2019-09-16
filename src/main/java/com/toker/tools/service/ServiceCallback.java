package com.toker.tools.service;

import org.apache.http.HttpResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSONObject;
/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: Callback.java
* @Description: service执行完成后的处理类
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-23     Toker           v1.0.0              增加call方法
 */
public interface ServiceCallback {
	static final Logger logger=LoggerFactory.getLogger(ServiceCallback.class);
	 /**
	  * 每个service执行请求后处理response的逻辑
	  * @param response
	  */
	 void call(final HttpResponse response,JSONObject urlParamsMap,JSONObject bodyParamsMap) ;
}
