package com.dh.mall.cust.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dh.mall.cust.model.CustModel;
import com.dh.mall.cust.service.CustService;

import st.tool.MD5;

@Controller
@RequestMapping("/custController")
public class CustController {
	
	@Autowired
	private CustService custService;
	@RequestMapping("/register")
public String register(CustModel cm,Model model,HttpServletRequest request) {
	String msg = "";
	
	String password = MD5.encode(cm.getPassword());
	cm.setPassword(password);
	String sauthcode = request.getSession().getAttribute("authCode").toString();

	if(!sauthcode.equals(cm.getAuthcode())) {
		msg = "验证码不正确";
	}else {
		msg = custService.register(cm);
	}
	
	model.addAttribute("msg", msg);
	return "register";
}
	@RequestMapping("/login")
	public String login(CustModel cm,Model model,HttpServletRequest request) {
		String msg="";
		if(""==cm.getPassword()||null==cm.getPassword() ) {
			msg = "密码未填写";
		}
		String password = MD5.encode(cm.getPassword());
		cm.setPassword(password);
		
		msg = custService.login(cm);
		if(msg.equals("1")) {
			request.getSession().setAttribute("cust", cm);
		}
//		String s = request.getSession().getAttribute("cust").toString();
//		System.out.println(s);
		model.addAttribute("msg", msg);
		return "login";
	}
}
