package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.ImgMapper;
import com.dh.mall.sys.model.ImgModel;


@Service
public class ImgService {
@Autowired
private ImgMapper imgMapper;

public void insert(ImgModel im) {
	imgMapper.insert(im);
}

public List<ImgModel> selectAll(ImgModel imgModel) {
	
	return imgMapper.select(imgModel);
}

public String deleteModel(ImgModel imgModel) {
	
	return imgMapper.deletImg(imgModel.getId())+"";
}

public String updateActive(ImgModel ppm) {
	
	return imgMapper.update(ppm) +"";
}
}
