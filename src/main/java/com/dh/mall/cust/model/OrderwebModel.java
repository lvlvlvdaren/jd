package com.dh.mall.cust.model;

import java.util.ArrayList;
import java.util.List;

import com.sun.jmx.snmp.Timestamp;

public class OrderwebModel {
private int id;
//private Timestamp time;
private String ordcode;
private Integer total;
private Integer mcount;
private CustModel cust = new CustModel();
private List<ProductwebModel> product = new ArrayList<>();
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
//public Timestamp getTime() {
//	return time;
//}
//public void setTime(Timestamp time) {
//	this.time = time;
//}
public String getOrdcode() {
	return ordcode;
}
public void setOrdcode(String ordcode) {
	this.ordcode = ordcode;
}
public CustModel getCust() {
	return cust;
}
public void setCust(CustModel cust) {
	this.cust = cust;
}
public List<ProductwebModel> getProduct() {
	return product;
}
public void setProduct(List<ProductwebModel> product) {
	this.product = product;
}
public Integer getTotal() {
	return total;
}
public void setTotal(Integer total) {
	this.total = total;
}
public Integer getMcount() {
	return mcount;
}
public void setMcount(Integer mcount) {
	this.mcount = mcount;
}

}
