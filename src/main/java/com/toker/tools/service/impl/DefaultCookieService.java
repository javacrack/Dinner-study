package com.toker.tools.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.toker.tools.service.CookieService;
import com.toker.tools.util.ConvertUtil;
import com.toker.tools.util.__;
/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: DefaultCookieService.java
* @Description: cookie序列化和cookiestore获取类
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-23     Toker           v1.0.0             新建类
 */
@Service
public class DefaultCookieService implements CookieService{
	static final Logger logger=LoggerFactory.getLogger(CookieService.class);
	

	@Override
	public BasicCookieStore cookieStore(HttpServletRequest request) {
		BasicCookieStore cookieStore = new BasicCookieStore();	
		BasicClientCookie clientCookie = null;
		Cookie[] cookies=request.getCookies();
		for (Cookie cookie : cookies) {
			clientCookie=new BasicClientCookie(cookie.getName(),cookie.getValue());
			ConvertUtil.convert(cookie, clientCookie);
			clientCookie.setDomain(__.COOKIE.MC_DOMAIN_NAME);
			cookieStore.addCookie(clientCookie);
		}
		return cookieStore;
	}
	
}
