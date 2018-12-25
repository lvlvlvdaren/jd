package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.ProductMapper;
import com.dh.mall.sys.model.ProductModel;
import com.dh.mall.sys.model.UserModel;

import st.tool.FormatEmpty;

@Service
public class ProductService {
	@Autowired
	private ProductMapper productMapper;
	
	public List<ProductModel> selectSclass(ProductModel pm) {
		List<ProductModel> list = productMapper.selectScode(pm);
	
		return list;
	}

	public String addProd(ProductModel pm) {
		int msg = 0;
		List<UserModel> list =productMapper.searchByProcode(pm.getProcode());
		if(!FormatEmpty.isEmpty(list)) {
			msg = 1;
		}else {
			productMapper.insert(pm);
		msg = 0;
		}
		return msg+"";
	}
	public List<ProductModel> selectModel(ProductModel umn) {
		List<ProductModel>list = productMapper.selectModel(umn);
		
		return list;
	}
	public int selectCount(ProductModel umn) {
		
		return productMapper.selectCount(umn);
	}

	public List<ProductModel> selectById(int id) {
		
		return productMapper.selectById(id);
	}

	public String updProd(ProductModel pm) {
		int msg = productMapper.updByProcode(pm);
		return msg+"";
	}

	public String del(ProductModel pm) {
		int msg = productMapper.del(pm.getId());
		return msg+"";
	}
}
