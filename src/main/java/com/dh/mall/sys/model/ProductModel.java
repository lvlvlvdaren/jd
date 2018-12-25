package com.dh.mall.sys.model;

import st.tool.FormatPager;

public class ProductModel extends FormatPager{
private Integer id;
private String procode;
private String proname;
private Integer price;
private String descr;
private Integer amount;
private String state;
private String proclass1;
private String proclass2;
private String proclassname;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getProcode() {
	return procode;
}
public void setProcode(String procode) {
	this.procode = procode;
}
public String getProname() {
	return proname;
}
public void setProname(String proname) {
	this.proname = proname;
}
public Integer getPrice() {
	return price;
}
public void setPrice(Integer price) {
	this.price = price;
}
public String getDescr() {
	return descr;
}
public void setDescr(String descr) {
	this.descr = descr;
}
public Integer getAmount() {
	return amount;
}
public void setAmount(Integer amount) {
	this.amount = amount;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getProclass1() {
	return proclass1;
}
public void setProclass1(String proclass1) {
	this.proclass1 = proclass1;
}
public String getProclass2() {
	return proclass2;
}
public void setProclass2(String proclass2) {
	this.proclass2 = proclass2;
}
public String getProclassname() {
	return proclassname;
}
public void setProclassname(String proclassname) {
	this.proclassname = proclassname;
}

}
