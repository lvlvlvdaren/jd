package com.dh.mall.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.sys.mapper.ProclassMapper;
import com.dh.mall.sys.model.ProclassModel;


@Service
public class ProclassService {
	@Autowired
	private ProclassMapper proclassMapper;
	public List<ProclassModel> selectScode(){
		return proclassMapper.selectScode();
	}
	public String addClass(ProclassModel pcm) {
		int msg = proclassMapper.insert(pcm);
		return msg +"";
	}
	public List<ProclassModel> selectModel(ProclassModel umn) {
		List<ProclassModel>list = proclassMapper.selectModel(umn);
		
		return list;
	}
	public int selectCount(ProclassModel umn) {
		
		return proclassMapper.selectCount(umn);
	}
	public List<ProclassModel> selectById(int id) {
		
		return proclassMapper.selectById(id);
	}
	public String updClass(ProclassModel pcm) {
		int msg = proclassMapper.updByScode(pcm);
		return msg+"";
	}
}
