package com.dh.mall.cust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.cust.mapper.CustMapper;
import com.dh.mall.cust.model.CustModel;

import st.tool.FormatEmpty;

@Service
public class CustService {
@Autowired
private CustMapper custMapper;
	public String register(CustModel cm) {
//		int msg=custMapper.insert(cm);
		String msg = "";
		int m = 0;
		List<CustModel> list = custMapper.select(cm);
		if(FormatEmpty.isEmpty(list)) {
			m =  custMapper.insert(cm);
		}else {
			msg = "ÕËºÅÒÑ´æÔÚ";
		}
		if(m==1) {
			msg = "×¢²á³É¹¦";
		}else {
			msg = "×¢²áÊ§°Ü";
		}
		return msg;
	}
	public String login(CustModel cm) {
		String msg = "";
		
		List<CustModel> list = custMapper.select(cm);
		if(FormatEmpty.isEmpty(list)) {
			msg="ÕËºÅ²»´æÔÚ";
		}
		if(list!=null&&list.size()>0) {
			
		String pass = list.get(0).getPassword();
		
		if(!pass.equals(cm.getPassword())) {
			msg = "ÃÜÂë´íÎó";
		}
		
		}
		
//		if(!FormatEmpty.isEmpty(list)&&!cm.getPassword().equals(list.get(0).getPassword())) {
//			msg="ÃÜÂë´íÎó";
//		}
		if(list!=null&&list.size()>0) {
		if(list.get(0).getPassword().equals(cm.getPassword())&&cm.getAccount().equals(list.get(0).getAccount())) {
			msg ="1";
		}
		}
		return msg;
	}

}
