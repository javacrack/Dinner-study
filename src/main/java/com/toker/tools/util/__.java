package com.toker.tools.util;

import java.nio.charset.Charset;

public interface __ {
	interface HTTP{
		String CONTENT_TYPE="Content-Type";
		String FORM_DATA_CONTENT_TYPE="application/x-www-form-urlencoded;charset=UTF-8";
		Charset charset=Charset.forName("UTF-8");
	}
	
	interface MEICAN{
		String BASE_URL="https://www.meican.com";
		String LOGIN_PATH="/account/directlogin";//登录
		String RECOMMENDATIONS_PATH="/recommendations/dishes";//推荐
		String API_URL_PREFIX="https://meican.com/preorder/api/v2.1";//baseurl前缀
		String CALENDAR_ITEMS="/calendarItems/list";//按日期显示基础信息(公司地址，中晚餐unquieid,商家等)
		String K11_DINNER_TAB_UNIQUEID="51954a88-a837-4fe7-a8b7-6a2247e24235";//k11晚餐的tabUniqueId,午餐和晚餐加班餐的的tabUniqueId不在我考虑范围
		String COPORATION_ADDRESS_CODE="860675";//公司地址code
		String TAB_UNIQUEID="tabUniqueId";
		String TARGETTIME="targetTime";		
		String DINNER_NAME="K11 晚餐";
	}
	
	interface COOKIE{
		String MC_DOMAIN_NAME=".meican.com";
		String DOMAIN="Domain";
		String PATH="Path";
		String EXPIRES="Expires";	
		/*美餐三要素*/
		String REMEMBER="remember";
		String GUESTID="guestId";
		String MACHINEID="machineId";
	}
	
	interface TIME{
		/*Thu, 23-Nov-2028 14:31:53 GMT* 我在写文件的时候去掉GMT和Thu*/
		String COOKIE_EXPIRE_DATE_FORMAT="dd-MMM-yyyy HH:mm:ss";
	}
}
