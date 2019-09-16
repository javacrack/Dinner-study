package com.toker.tools.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.util.ResourceUtils;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.toker.tools.interceptor.LoginInterceptor;

@Configuration
@EnableWebMvc
public class WebConfigurer implements WebMvcConfigurer {
	/**
	 * 添加静态资源文件，外部可以直接访问地址
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		String prefix=ResourceUtils.CLASSPATH_URL_PREFIX + "/public/";
		registry.addResourceHandler("/**")
        .addResourceLocations(prefix);
//	    registry.addResourceHandler("/css/**")
//	    		.addResourceLocations(prefix+"/css");
//	    registry.addResourceHandler("/js/**")
//		    	.addResourceLocations(prefix+"/js");
//		registry.addResourceHandler("/images/**")
//			    .addResourceLocations(prefix+"/images");
//		registry.addResourceHandler("/fonts/**")
//	    		.addResourceLocations(prefix+"/fonts");
	}
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LoginInterceptor())
		.addPathPatterns("/**")
		.excludePathPatterns("/login","/error","/css/**","/js/**,/images/**");
		
	}
}