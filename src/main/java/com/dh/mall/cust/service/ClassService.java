package com.dh.mall.cust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.cust.mapper.ClassMapper;
import com.dh.mall.cust.mapper.ProductwebMapper;
import com.dh.mall.cust.model.ClassModel;
import com.dh.mall.sys.model.ProductModel;

@Service
public class ClassService {
@Autowired
private ClassMapper classMapper;

	public List<ClassModel> selectClassf() {
		List<ClassModel>listf = classMapper.selectf();
		return listf;
	}
	public List<ClassModel> selectClasss() {
		List<ClassModel>lists = classMapper.selects();
		return lists;
	}

}
