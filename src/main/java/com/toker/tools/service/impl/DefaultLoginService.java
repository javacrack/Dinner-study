package com.toker.tools.service.impl;

import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpRequestBase;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.toker.tools.service.DinnerService;
import com.toker.tools.util.RequestUtil;
import com.toker.tools.util.__;

@Service("loginService")
public class DefaultLoginService implements DinnerService {

	@Override
	public String url() {			
		return __.MEICAN.BASE_URL.concat(__.MEICAN.LOGIN_PATH);
	}	

	@Override
	public HttpEntity httpEntity(JSONObject user) {
		HttpEntity entity=new UrlEncodedFormEntity(RequestUtil.map2Paris(user),__.HTTP.charset);
		return entity;
	}

	@Override
	public boolean isHttpGet() {		
		return false;
	}
	
	@Override
	public void addHeader(HttpRequestBase httpRequestBase) {
		httpRequestBase.setHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
	}


	
}
