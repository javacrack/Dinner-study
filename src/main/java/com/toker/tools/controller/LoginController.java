package com.toker.tools.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.toker.tools.pojo.User;
import com.toker.tools.service.DinnerService;
import com.toker.tools.service.ServiceCallback;
import com.toker.tools.util.MCCookieUtil;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Resource
	private DinnerService loginService;

	@GetMapping
	public String preLogin() {
		return "/login";
	}

	/**
	 * @RequestParam Map<String,Object> map 加上@RequestParam就能map注入
	 * @param map
	 * @param response
	 * @return
	 */
	@PostMapping
	public String login(final User user, final HttpServletRequest request, final HttpServletResponse servletResponse) {
		user.setRemember(StringUtils.equals(user.getRemember(), "1") ? "true" : "false");
		JSONObject bodyParams =  (JSONObject) JSONObject.toJSON(user);		
		loginService.execute(null,bodyParams, null, new ServiceCallback() {
			@Override
			public void call(HttpResponse response,JSONObject urlParamsMap, JSONObject bodyParamsMap) {
				MCCookieUtil.convertMCRes2Response(servletResponse, response);
			}
		});
		String referer = request.getHeader("referer");
		referer=(StringUtils.isBlank(referer) || StringUtils.containsAny(referer, "login", "error")) ? "/"
				: referer;
		return "redirect:"+referer;			
		// HttpResponse result=loginService.execute(urlParamsMap, bodyParams, null);
	}
}
