package com.toker.tools.service;



import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSONObject;
import com.toker.tools.util.RequestUtil;
import com.toker.tools.util.ResponseUtil;
import com.toker.tools.util.__.HTTP;

public interface DinnerService {
	
	static final Logger logger=LoggerFactory.getLogger(DinnerService.class);
	/**
	 * 拼接url
	 * @return
	 */
	String url();
	/**
	 * 要传的参数
	 * @param urlParamsMap
	 * @return
	 */
	default HttpEntity httpEntity(JSONObject urlParamsMap) {
		return null;
	};
	/**
	 * 默认是application/json,但是如登录接口表单提交就需要重写这个方法了
	 * @param httpRequestBase
	 */
	default void addHeader(HttpRequestBase httpRequestBase) {
		httpRequestBase.setHeader(HTTP.CONTENT_TYPE, "application/json;chartset=uft-8");
	}
	/**
	 * 请求类型
	 * @return
	 */
	default boolean isHttpGet() {
		return true;
	}

	/**
	 * service执行流程
	 * @param cookieService
	 * @param call
	 */
	default String  execute(JSONObject urlParamsMap ,JSONObject  bodyParams,BasicCookieStore cookieStore,ServiceCallback call) {
		CloseableHttpClient client=(null==cookieStore?
				HttpClients.createDefault():
				HttpClients.custom().setDefaultCookieStore(cookieStore).build());//客户端是否带有cookie
		String url=url();
		if(null!=urlParamsMap) {
			url=url.concat(RequestUtil.evaluateUrlParams(urlParamsMap));
		}
		HttpRequestBase httpRequestBase=isHttpGet()?new HttpGet(url):new HttpPost(url);//请求方法获取
		addHeader(httpRequestBase);//请求头设置		
		if(!isHttpGet()) {//post请求体
			HttpEntity entity=httpEntity(bodyParams);
			if(null!=entity) {
				((HttpPost)httpRequestBase).setEntity(entity);
			}			
		}
		HttpResponse httpResponse=null;
		String result=StringUtils.EMPTY;
		try {
			httpResponse = client.execute(httpRequestBase);		
			if(null!=call) {
				call.call(httpResponse,urlParamsMap,bodyParams);			}
			result=ResponseUtil.getHttpContent(httpResponse);			
		} catch (Throwable e) {
			logger.error("服务执行获取相应失败",e);
		}finally {
			if(null!=client) {
				try {
					client.close();
				} catch (Throwable e) {
					logger.error("httpclient关闭失败",e);
				}
			}
		}		
		return result;
	}
}
