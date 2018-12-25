package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.OrderMapper;
import com.dh.mall.sys.model.OrderModel;
import com.dh.mall.sys.model.ProductModel;

import st.tool.FormatEmpty;



@Service
public class OrderService {
	@Autowired
	private OrderMapper orderMapper;
	public List<OrderModel> selectModel(OrderModel umn) {
		List<OrderModel>list = orderMapper.selectModel(umn);
		return list;
	}
	public int selectCount(OrderModel umn) {
		return orderMapper.selectCount(umn);
	}
	public String del(OrderModel pm) {
		String msg="";
		if(!FormatEmpty.isEmpty(orderMapper.sel(pm))) {
			orderMapper.del(pm);
			orderMapper.deln(pm);
			msg="1";
		}else {
		orderMapper.del(pm);
		msg = "1";
		}
		return msg;
	}
}
