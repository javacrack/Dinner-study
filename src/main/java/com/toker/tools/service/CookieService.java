package com.toker.tools.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.impl.client.BasicCookieStore;

/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: CookieService.java
* @Description: 获取cookie
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-23     Toker           v1.0.0               修改原因
 */
public interface CookieService {
	/**
	 * CookieStore获取
	 * @return
	 */
	public BasicCookieStore cookieStore(HttpServletRequest request);
}	
