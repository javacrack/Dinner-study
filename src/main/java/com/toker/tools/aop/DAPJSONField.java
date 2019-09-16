package com.toker.tools.aop;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 
 * @author Toker
 * 支持属性和方法的注解
 *
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER })
public @interface DAPJSONField {
	boolean jsonConvert() default false;//是否需要json转换
	boolean isEvaluateObject() default true;//是否是需要赋值的对象
	String alias() default ""; //字段别名
}
