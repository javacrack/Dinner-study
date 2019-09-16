package com.toker.tools.util;

import org.joda.time.DateTime;

import com.alibaba.fastjson.JSONObject;

/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: RequestParamsFactory.java
* @Description: 请求参数拼装
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-29     Toker           v1.0.0               修改原因
 */
public final class RequestParamsFactory {

	public static JSONObject ofCommonServiceMap() {
		DateTime dateTime = new DateTime();
		String beginDate=dateTime.toString("yyyy-MM-dd");
		String endDate=dateTime.plusWeeks(1).toString("yyyy-MM-dd");
		JSONObject commonServiceMap=new JSONObject();
		commonServiceMap.put("beginDate", beginDate);
		commonServiceMap.put("endDate", endDate);
		return commonServiceMap;
	}
	
	public static JSONObject ofRecommendService(String mealtimeType) {	
		JSONObject recommendMap=new JSONObject();
		recommendMap.put(__.MEICAN.TAB_UNIQUEID, mealtimeType);
		recommendMap.put(__.MEICAN.TARGETTIME, DateUtil.getTargetTime());
		return recommendMap;
	}

	public static JSONObject ofRestaurantService(String mealtimeType) {
		JSONObject recommendMap=new JSONObject();
		recommendMap.put(__.MEICAN.TAB_UNIQUEID, mealtimeType);
		recommendMap.put(__.MEICAN.TARGETTIME, DateUtil.getTargetTime());
		return recommendMap;
	}
	
}
