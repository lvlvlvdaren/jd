package com.dh.mall.sys.model;

import st.tool.FormatPager;

public class OrderModel extends FormatPager {
	private Integer id;
	private String ordcode;
	private String username;
	private String time;
	private String addr;
	private String state;
private String ordcoden;
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrdcode() {
		return ordcode;
	}

	public void setOrdcode(String ordcode) {
		this.ordcode = ordcode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOrdcoden() {
		return ordcoden;
	}

	public void setOrdcoden(String ordcoden) {
		this.ordcoden = ordcoden;
	}

	@Override
	public String toString() {
		return "OrderModel [id=" + id + ", ordcode=" + ordcode + ", username=" + username + ", time=" + time + ", addr="
				+ addr + ", state=" + state + "]";
	}
	
}
