package com.toker.tools.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;

/**
 * 
* Copyright: Copyright (c) Toker
* 
* @ClassName: Ordercron.java
* @Description: 定时任务类
*
* @version: v1.0.0
* @author: Toker
*
* Modification History:
* Date         	Author          Version            Description
*---------------------------------------------------------------------------*
* 2019-05-29     Toker           v1.0.0             新建
 */
@EnableAutoConfiguration//我的不加这个会不错   Unable to start EmbeddedWebApplicationContext due to missing EmbeddedServletContainerFactory bean. 
@Entity  
@Table(name = "ordercron")
public class Ordercron {
	@Id
	private int cron_id;
	private String username;
	private String cron;
	private String corpAddressUniqueId;
	private String userAddressUniqueId;
	private String dishId;
	private String tabUniqueId;
	public int getCron_id() {
		return cron_id;
	}
	public void setCron_id(int cron_id) {
		this.cron_id = cron_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCron() {
		return cron;
	}
	public void setCron(String cron) {
		this.cron = cron;
	}
	public String getCorpAddressUniqueId() {
		return corpAddressUniqueId;
	}
	public void setCorpAddressUniqueId(String corpAddressUniqueId) {
		this.corpAddressUniqueId = corpAddressUniqueId;
	}
	public String getUserAddressUniqueId() {
		return userAddressUniqueId;
	}
	public void setUserAddressUniqueId(String userAddressUniqueId) {
		this.userAddressUniqueId = userAddressUniqueId;
	}
	public String getDishId() {
		return dishId;
	}
	public void setDishId(String dishId) {
		this.dishId = dishId;
	}
	public String getTabUniqueId() {
		return tabUniqueId;
	}
	public void setTabUniqueId(String tabUniqueId) {
		this.tabUniqueId = tabUniqueId;
	}
	
}
