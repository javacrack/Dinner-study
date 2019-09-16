package com.toker.tools.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.alibaba.fastjson.JSONObject;

public final class RequestUtil {

	/**
	 * map转List<NameValuePair>
	 * @param parameterMap
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static List<NameValuePair> map2Paris(Map parameterMap) {
	    List<NameValuePair> param = new ArrayList<NameValuePair>();
	    Iterator it = parameterMap.entrySet().iterator();
	    while (it.hasNext()) {
	      Entry parmEntry = (Entry) it.next();
	      param.add(new BasicNameValuePair((String) parmEntry.getKey(),
	          (String) parmEntry.getValue()));
	    }
	    return param;
	  }
	/**
	 * map转拼接参数
	 * @return
	 */
	public static String evaluateUrlParams(JSONObject parameterMap) {
		String json = parameterMap.toString();
		/**注意时间有:, 如16:30 .所以替换要用\":而不是单纯的的用:替换成=*/		
		String params = "?" + json.substring(1, json.length() - 1).replace(",", "&").replace("\":", "=").replace("\"", "");
		return params;
	}
}
