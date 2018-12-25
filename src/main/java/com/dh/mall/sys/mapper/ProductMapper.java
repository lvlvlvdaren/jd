package com.dh.mall.sys.mapper;

import java.util.List;

import com.dh.mall.sys.model.ProductModel;
import com.dh.mall.sys.model.UserModel;

public interface ProductMapper {
	List<ProductModel> selectScode(ProductModel pcm);

	List<UserModel> searchByProcode(String procode);

	int insert(ProductModel pm);

	List<ProductModel> selectModel(ProductModel umn);

	int selectCount(ProductModel umn);

	List<ProductModel> selectById(int id);

	int updByProcode(ProductModel pm);

	int del(Integer id);

	

}
