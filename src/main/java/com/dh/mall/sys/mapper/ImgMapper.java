package com.dh.mall.sys.mapper;

import java.util.List;

import com.dh.mall.sys.model.ImgModel;

public interface ImgMapper {

	void insert(ImgModel im);

	List<ImgModel> select(ImgModel imgModel);

	int deletImg(Integer id);

	int update(ImgModel ppm);

}
