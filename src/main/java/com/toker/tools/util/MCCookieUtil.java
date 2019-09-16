package com.toker.tools.util;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.joda.time.DateTime;
import org.joda.time.Period;
import org.joda.time.PeriodType;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/**
 * 
*Copyright: Copyright (c) Toker
* 
* @ClassName: MCCookieUtil.java
* @Description:  meica cookie util
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-28     Toker           v1.0.0              meica cookie util
 */
public class MCCookieUtil {
	/**
	 * 将mc的response的header中Set-Cookie转换成项目servletResponse添加cookie保存下来
	 * @param servletResponse
	 * @param response
	 */
	public static void convertMCRes2Response(final HttpServletResponse servletResponse,final HttpResponse response) {
		Header[] setCookies = response.getHeaders("Set-Cookie");
		if (ArrayUtils.isNotEmpty(setCookies)) {
			String[] keyValues=null;String[] focusValues=null;Cookie cookie=null;String value=null;
			for (Header header : setCookies) {
				/**
				 * header.getName()是"Set-Cookie" header.getValue() format为
				 * remember=9a9abb478af49e99334a3c761fac0ddde7a67e3c-727792; Expires=Wed,
				 * 22-Nov-2028 21:15:29 GMT;Path=/; Domain=.meican.com
				 */
				keyValues = header.getValue().split(";");				
				focusValues = keyValues[0].split("=");// guestId,machineId等都是在第一个
				
				// 当 focusValues是PLAY_ERRORS=的时候focusValues.length==1是我们不需要的			
				if (focusValues.length == 2) {//我们只要guestId,machineId 和 remember三个
					// eg:remember=9a9abb478af49e99334a3c761fac0ddde7a67e3c-727792
					cookie = new Cookie(focusValues[0],focusValues[1]);
					for(String kv:keyValues) {							
						value=kv.split("=")[1];
						if(kv.contains(__.COOKIE.EXPIRES)) {
							value=value.substring(value.indexOf(",")+1, value.indexOf("GMT")-1).trim();
							cookie.setMaxAge(getMaxAge(value));//以m为单位							
						}else if(kv.contains(__.COOKIE.PATH)) {
							cookie.setPath(value);
						}
						/*else if(kv.contains(__.COOKIE.DOMAIN)) {
							cookie.setDomain(value);
						}	*/					
					}
					servletResponse.addCookie(cookie);
				}
			}			
		}
	}
	
	private static int getMaxAge(String expires) {
		DateTimeFormatter formatter = DateTimeFormat.forPattern(__.TIME.COOKIE_EXPIRE_DATE_FORMAT);
		DateTime expiresDate =DateTime.parse(expires,formatter.withLocale(Locale.ENGLISH));
		DateTime now = new DateTime();
		Period p = new Period(now,expiresDate,PeriodType.seconds());
		int maxAge=p.getSeconds();
		return maxAge;
		
	}
}
