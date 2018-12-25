package com.dh.mall.sys.model;

import st.tool.FormatPager;

public class UserModel extends FormatPager {
private Integer id;
private String name;
private String account;
private String password;
private int manage;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAccount() {
	return account;
}
public void setAccount(String account) {
	this.account = account;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getManage() {
	return manage;
}
public void setManage(int manage) {
	this.manage = manage;
}
public UserModel(String name,String password,String account,int manage) {
	this.name=name;
	this.password = password;
	this.account = account;
	this.manage = manage;
}
public UserModel() {
	
}
@Override
public String toString() {
	return super.toString() + "UserModel [id=" + id + ", name=" + name + ", account=" + account + ", password=" + password + ", manage="
			+ manage + "]" + "pageIndex" + getPageIndex() + "pageLimit" + getPageLimit() + "rowStart" + getRowStart();
}
}
