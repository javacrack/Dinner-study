package com.toker.tools.service.impl;

import org.springframework.stereotype.Service;

import com.toker.tools.service.DinnerService;
import com.toker.tools.util.__;
@Service("recommendService")
public class DefaultRecommendationService implements DinnerService{

	@Override
	public String url() {		
		return __.MEICAN.API_URL_PREFIX.concat(__.MEICAN.RECOMMENDATIONS_PATH);
	}

	
}
