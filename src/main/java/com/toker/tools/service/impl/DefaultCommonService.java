package com.toker.tools.service.impl;

import org.springframework.stereotype.Service;

import com.toker.tools.service.DinnerService;
import com.toker.tools.util.__;

/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: DefaultCommonService.java
* @Description: 获取地址unique和中晚餐unique和开始结束时间，联系电话等
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-29     Toker           v1.0.0               修改原因
 */
@Service("commonService")
public class DefaultCommonService implements DinnerService{

	@Override
	public String url() {		
		return __.MEICAN.API_URL_PREFIX.concat(__.MEICAN.CALENDAR_ITEMS);
	}
	
	

}
