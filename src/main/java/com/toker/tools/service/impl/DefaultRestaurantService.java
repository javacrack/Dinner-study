package com.toker.tools.service.impl;

import com.toker.tools.service.DinnerService;
import com.toker.tools.util.__;
import org.springframework.stereotype.Service;

@Service("restauarntService")
public class DefaultRestaurantService implements DinnerService {

    @Override
    public String url() {
        return __.MEICAN.API_URL_PREFIX.concat("/restaurants/list");
    }
}
