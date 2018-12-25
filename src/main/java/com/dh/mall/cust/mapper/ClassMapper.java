package com.dh.mall.cust.mapper;

import java.util.List;

import com.dh.mall.cust.model.ClassModel;
import com.dh.mall.sys.model.ProductModel;

public interface ClassMapper {

	List<ClassModel> selectf();
	List<ClassModel> selects();

	List<ProductModel> selectByName(String proname);

}
