package com.dh.mall.sys.mapper;

import java.util.List;

import com.dh.mall.sys.model.OrderModel;

public interface OrderMapper {

	List<OrderModel> selectModel(OrderModel umn);

	int selectCount(OrderModel umn);

	int del(OrderModel pm);

	int deln(OrderModel pm);

	List<OrderModel> sel(OrderModel pm);
	

}
