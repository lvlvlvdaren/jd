package com.dh.mall.cust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.cust.mapper.ProductwebMapper;
import com.dh.mall.cust.model.ClassModel;
import com.dh.mall.cust.model.ProductwebModel;
@Service
public class ProductwebService {
	@Autowired
	private ProductwebMapper prodauctwebMapper;
	public List<ProductwebModel> searchByName(ProductwebModel pwm) {
		List<ProductwebModel> list = prodauctwebMapper.searchByName(pwm);
		return list;
	}
	public List<ProductwebModel> searchByCode(ProductwebModel pwm) {
		List<ProductwebModel> listc = prodauctwebMapper.searchByName(pwm);
		
		return listc;
	}
//	public List<ProductwebModel> searchByScode(ClassModel cm) {
//		List<ProductwebModel> lists = prodauctwebMapper.searchByName(cm.getScode());
//		return lists;
//	}
}
