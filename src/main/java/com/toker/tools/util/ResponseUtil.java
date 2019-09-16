package com.toker.tools.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.http.Consts;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import sun.misc.BASE64Encoder;

/**
 * 
 * @author Toker
 * 响应解析类
 */
public class ResponseUtil {
	private static final Logger LOGGER =LoggerFactory.getLogger(ResponseUtil.class);
	 public static String getHttpContent(HttpResponse response) {
	        HttpEntity entity = response.getEntity();
	        String body = null;
	        if (entity == null) {
	            return null;
	        }
	        try {
	            body = EntityUtils.toString(entity, Consts.UTF_8);	         
	        } catch (Throwable e) {
	        	LOGGER.error("获取结果失败!", e);
	        }
	        return body;
	    }
	 
	 /**
		 * 对图片base64编码
		 * @param httpResponse
		 * @return
		 */
		@SuppressWarnings("restriction")
		public static String getBase64ImageStr(HttpResponse httpResponse) {
			InputStream inputStream = null;
		    byte[] data = null;
			try {
				inputStream = httpResponse.getEntity().getContent();
				data = new byte[inputStream.available()];
				inputStream.read(data);
			} catch (IOException e) {
				e.printStackTrace();
			}
		    // 加密
		    BASE64Encoder encoder = new BASE64Encoder();
		    return encoder.encode(data);
		}
}
