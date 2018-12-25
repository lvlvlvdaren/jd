package com.dh.mall.cust.mapper;

import java.util.List;

import com.dh.mall.cust.model.CustModel;

public interface CustMapper {

	int insert(CustModel cm);

	List<CustModel> select(CustModel cm);

}
