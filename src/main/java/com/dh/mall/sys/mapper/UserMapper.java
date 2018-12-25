package com.dh.mall.sys.mapper;

import java.util.List;

import com.dh.mall.sys.model.UserModel;

public interface UserMapper {
	
// List<UserModel> selectList();

List<UserModel> searchByAccount(String account);

int updateActive(UserModel um);

List<UserModel> selectModel(UserModel umn);

int selectCount(UserModel umn);

int insert(UserModel um);

int delUser(String account);

//void insert(UserModel um);

//Integer selectCount(UserModel um);

}
