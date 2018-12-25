package com.dh.mall.cust.model;

public class CartModel {
private Integer id;
private Integer count;
private Integer total;
private CustModel cust;
private ProductwebModel product;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getCount() {
	return count;
}
public void setCount(Integer count) {
	this.count = count;
}
public Integer getTotal() {
	return total;
}
public void setTotal(Integer total) {
	this.total = total;
}
public CustModel getCust() {
	return cust;
}
public void setCust(CustModel cust) {
	this.cust = cust;
}
public ProductwebModel getProduct() {
	return product;
}
public void setProduct(ProductwebModel product) {
	this.product = product;
}
}
