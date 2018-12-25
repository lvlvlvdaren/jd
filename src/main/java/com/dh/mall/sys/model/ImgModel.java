package com.dh.mall.sys.model;

import st.tool.FormatPager;

public class ImgModel extends FormatPager {
	private Integer id;
	private String proid;
	private String url;
	private String style;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProid() {
		return proid;
	}

	public void setProid(String proid) {
		this.proid = proid;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public ImgModel(String proid, String url, String style) {
		this.proid = proid;
		this.url = url;
		this.style = style;
	}

	public ImgModel() {

	}
}
