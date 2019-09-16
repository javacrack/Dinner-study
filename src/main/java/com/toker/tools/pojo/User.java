package com.toker.tools.pojo;
/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: User.java
* @Description: 用户登录类
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-28     Toker           v1.0.0               修改原因
 */
public class User {
	
	private String username;
	private String password;
	private String loginType="username";
	private String remember="true";
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	public String getRemember() {
		return remember;
	}
	public void setRemember(String remember) {
		this.remember = remember;
	}
	
		
}
