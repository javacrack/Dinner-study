package com.toker.tools.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.impl.client.BasicCookieStore;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.alibaba.fastjson.JSON;
import com.toker.tools.pojo.Restuarants;
import com.toker.tools.pojo.calendarItem.CalendarItem;
import com.toker.tools.pojo.calendarItem.DateList;
import com.toker.tools.pojo.calendarItem.MeiCanCalendar;
import com.toker.tools.pojo.recommend.BestsellerFood;
import com.toker.tools.service.CookieService;
import com.toker.tools.service.DinnerService;
import com.toker.tools.util.RequestParamsFactory;
import com.toker.tools.util.__;

@Controller
public class HomepageController {//批量重命名是用shift+f6
	
	@Resource 
	private DinnerService recommendService;
	@Resource
	private CookieService cookieService;
	@Resource
	private DinnerService commonService;
	@Resource
	private DinnerService restauarntService;

	@GetMapping(path="/")
	public String home(HttpServletRequest request,Map<String, Object> map) {//如果controller上没有路径且不给@GetMapping赋值那么任何路径都会走这个
		BasicCookieStore cookieStore=cookieService.cookieStore(request);		
		String calendarItems=commonService.execute(RequestParamsFactory.ofCommonServiceMap(), null, cookieStore, null);
		MeiCanCalendar meiCanCalendar=JSON.parseObject(calendarItems,MeiCanCalendar.class);
		map.put("meiCanCalendar", meiCanCalendar);
		
		Map<String,Object> mealTimeType=new HashMap();
		if(null!=meiCanCalendar) {
			DateList todayList=meiCanCalendar.getDateList().get(0);
			if(null!=todayList) {
				for(CalendarItem item:todayList.getCalendarItemList()) {
					mealTimeType.put(item.getTitle(), item);
				}
			}
		}	

		//最受欢迎
		String tabUniqueId=((CalendarItem)mealTimeType.get(__.MEICAN.DINNER_NAME)).getUserTab().getUniqueId();
		String recommend=recommendService.execute(RequestParamsFactory.ofRecommendService(tabUniqueId), null, cookieStore, null);
		BestsellerFood 	bestsellerFood=JSON.parseObject(recommend,BestsellerFood.class);
		map.put("bestsellerFood", bestsellerFood);

		//Restaurant列表
		String restaurant=restauarntService.execute(RequestParamsFactory.ofRestaurantService(tabUniqueId),null,cookieStore,null);
		Restuarants res=JSON.parseObject(restaurant,Restuarants.class);
		map.put("restuarants", res);
		return "index";
	}
	
	@GetMapping(path="/popular")
	public String popularFood(HttpServletRequest request) {
		recommendService.execute(null, null, cookieService.cookieStore(request), null);
		return "index";
	}
}
