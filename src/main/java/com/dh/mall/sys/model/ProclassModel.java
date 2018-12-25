package com.dh.mall.sys.model;

import st.tool.FormatPager;

public class ProclassModel extends FormatPager{
private Integer id;
private String sclassname;
private String scode;
private String descr;
private String parentcode;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getSclassname() {
	return sclassname;
}
public void setSclassname(String sclassname) {
	this.sclassname = sclassname;
}
public String getScode() {
	return scode;
}
public void setScode(String scode) {
	this.scode = scode;
}
public String getDescr() {
	return descr;
}
public void setDescr(String descr) {
	this.descr = descr;
}
public String getParentcode() {
	return parentcode;
}
public void setParentcode(String parentcode) {
	this.parentcode = parentcode;
}
}
