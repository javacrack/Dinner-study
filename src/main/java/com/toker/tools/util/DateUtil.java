package com.toker.tools.util;

import org.joda.time.DateTime;

public final class DateUtil {

	/**
	 * targetTime的格式: 2019-05-23+16:30
	 * @return
	 */
	public static String getTargetTime() {
		DateTime today = new DateTime();
		return  today.toString("yyyy-MM-dd+HH:mm");		 
	}
	
	
	public static void main(String[] args) {
		System.out.println(getTargetTime() );
	}
	
}
