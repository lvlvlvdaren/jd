package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.ThingsMapper;
import com.dh.mall.sys.model.ThingsModel;

@Service
public class ThingsService {
	@Autowired
	private ThingsMapper thingsMapper;

	public List<ThingsModel> selectAll(ThingsModel thingsModel) {
		
		return thingsMapper.getList(thingsModel);
	}

}
