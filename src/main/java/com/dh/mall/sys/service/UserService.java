package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.UserMapper;
import com.dh.mall.sys.model.UserModel;

import st.tool.FormatEmpty;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	public String searchByAccount(UserModel um) {
		List<UserModel> list = userMapper.searchByAccount(um.getAccount());
		String msg = "";
		if (FormatEmpty.isEmpty(list)) {
			msg = "1";
		} else if (!list.get(0).getPassword().equals(um.getPassword())) {
			msg = "3";
		} else if(list.get(0).getPassword().equals(um.getPassword())) {
			msg = "0";
		}
		return msg;
	}
public List<UserModel> searchUser(UserModel um){
	List<UserModel> list = userMapper.searchByAccount(um.getAccount());
	return list;
}
//	public Integer selectList(){
//		Integer msg = null;
//		if(userMapper.selectList()==null||userMapper.selectList().size()==0) {
//			msg = -1;
//		}
//		return  msg;
//	}
public String updateActive(UserModel um) {
	
	int msg = userMapper.updateActive(um);
	return msg + "";
}
public List<UserModel> selectModel(UserModel umn) {
	List<UserModel>list = userMapper.selectModel(umn);
	
	return list;
}
public int selectCount(UserModel umn) {
	// TODO Auto-generated method stub
	return userMapper.selectCount(umn);
}
public String addUser(UserModel um) {
	int msg = 0;
	List<UserModel> list = userMapper.searchByAccount(um.getAccount());
	if(!FormatEmpty.isEmpty(list)) {
		msg = 1;
	}else {
	userMapper.insert(um);
	msg = 0;
	}
	return msg+"";
}
public String delUser(UserModel um) {
//	int msg = 0;
	int msg = userMapper.delUser(um.getAccount());
	return msg + "";
}

//	public void insert(UserModel um) {
//		userMapper.insert(um);
//
//	}
//
//	public Integer selectCount(UserModel um) {
//		 
//		return userMapper.selectCount(um); 
//	}
}
