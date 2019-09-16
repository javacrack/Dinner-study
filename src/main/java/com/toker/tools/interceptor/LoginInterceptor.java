package com.toker.tools.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import com.toker.tools.util.__;



public class LoginInterceptor implements HandlerInterceptor{


	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Cookie[] cookies=request.getCookies();
		if(ArrayUtils.isNotEmpty(cookies)) {
			for (Cookie cookie : cookies) {
				if(null!=cookie&&StringUtils.endsWithIgnoreCase(cookie.getName(), __.COOKIE.REMEMBER)
					&&StringUtils.isNoneBlank(cookie.getValue())) {
					return true;
				}
			}
		}
		response.sendRedirect(request.getContextPath() + "/login");
		return false;
	}

}
