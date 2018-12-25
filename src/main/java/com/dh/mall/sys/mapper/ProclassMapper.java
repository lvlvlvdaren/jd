package com.dh.mall.sys.mapper;

import java.util.List;

import com.dh.mall.sys.model.ProclassModel;

public interface ProclassMapper {
	
List<ProclassModel> selectScode();

int insert(ProclassModel pcm);

List<ProclassModel> selectModel(ProclassModel umn);

int selectCount(ProclassModel umn);

List<ProclassModel> selectById(int id);

int updByScode(ProclassModel pcm);

}
