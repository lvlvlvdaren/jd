package com.dh.mall.cust.mapper;

import java.util.List;

import com.dh.mall.cust.model.ClassModel;
import com.dh.mall.cust.model.ProductwebModel;

public interface ProductwebMapper {

	List<ProductwebModel> searchByName(ProductwebModel pwm);
//	List<ProductwebModel> searchByName(String scode);
}
