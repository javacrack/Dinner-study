package com.toker.tools.util;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.toker.tools.aop.DAPJSONField;






/**
 * 
 * @author Toker
 * 通用对象转换类
 */
public class ConvertUtil{
	private static final Logger LOGGER =LoggerFactory.getLogger(ConvertUtil.class);

	/**
	 * 转换赋值
	 * @param source
	 * @param target
	 */
	public static void convert(Object source,Object target) {
		initDefaultValue();//注册日期格式
        Field[] targetFields = target.getClass().getDeclaredFields();
        Map<String,Object> fieldsMap=constFieldsMap(source);        
        Stream.of(targetFields).forEach(field -> {
        	field.setAccessible(true);
            try {
            	DAPJSONField fieldAnnotation = field.getAnnotation(DAPJSONField.class);
            	/**
            	 * 获取转换目标类的属性名称或者别名，这样可以从源名称中获取属性对应的值
            	 */
            	String  propertyName=field.getName();            	
            	if(null!=fieldAnnotation&&fieldAnnotation.alias().length()!=0) {
            		propertyName=fieldAnnotation.alias();
            	}
            	/**
            	 * 获取源名称中获取属性对应的值，
            	 * 当转化目标类中注释需要源属性进行json转换，则先进行json转换
            	 */
            	Object fieldValue=fieldsMap.get(propertyName);
            	if(null!=fieldValue) {
            		if(null!=fieldAnnotation&&fieldAnnotation.jsonConvert()) {
                		fieldValue=JSON.parseObject((String)fieldValue,field.getType());
                	}
                	/**
                	 * 如果属性上没有注解。或者有注解并且注解是需要赋值的对象时候，直接赋值
                	 * 如果是非赋值对象，则递归对该对象赋值
                	 */
                	if(null==fieldAnnotation||fieldAnnotation.isEvaluateObject()) {  
                		if(null!=field.getType())
                			field.set(target,ConvertUtils.convert(fieldValue, field.getType()));
                	}else {
                		convert(field,fieldValue);
                	}
            	}
            	
            	
             } catch (Throwable e) {
            	LOGGER.error(String.format("对象赋值出错：%s", e));
            }
        });
	}
	

	/**
	 * 构建对象的filed的名称和field的对应关系
	 * @param source
	 * @return
	 */
	public static Map<String,Object> constFieldsMap(Object  obj){
		Field[] srcFields = obj.getClass().getDeclaredFields();
        Map<String,Object> fieldsMap=new HashMap<String,Object>();
        Stream.of(srcFields).forEach(field -> {
            field.setAccessible(true);
            try {
        	   fieldsMap.put(field.getName(), field.get(obj));
            } catch (Throwable e) {
            	LOGGER.error(String.format("构建对象的filed的名称和field的对应关系出错：%s", e));
            }
        });
        return fieldsMap;
	}
	/**
	 * 初始化日期类的转换格式
	 */
	private static void initDefaultValue() {
		if(!ConvertUtils.getDefaultBoolean()) {
			DateConverter convert = new DateConverter();  
			String[] datePattern = { "yyyy-mm-dd","yyyy-MM-dd HH:mm:ss","yyyy-MM-dd HH:mm", "yyyy/mm/dd", "yyyy-mm-dd","yyyyMMddHHmmss"};  
			convert.setPatterns(datePattern);  
			ConvertUtils.register(convert, java.util.Date.class);
			ConvertUtils.setDefaultBoolean(true);
		}
		
	}
	
	
}
