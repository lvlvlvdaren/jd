package com.dh.mall.cust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dh.mall.cust.model.CartModel;
import com.dh.mall.cust.model.CustModel;
import com.dh.mall.cust.model.OrderwebModel;
import com.dh.mall.cust.service.CartService;
import com.dh.mall.cust.service.OrderwebService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/orderwebController")
public class OrderwebController {
@Autowired
private OrderwebService orderwebService;
@Autowired
private CartService cartService;

@ResponseBody
@RequestMapping(value="/addOrder",produces="appliction/josn;charset=utf-8")
public String addOrder(@RequestBody List<CartModel> list,HttpServletRequest request) {
//	ModelAndView mv = new ModelAndView("redirect:/orderwebController/showOrder.do");
	showOrder(request);
	CustModel cm = (CustModel)request.getSession().getAttribute("cust");
	
	orderwebService.addOrder(list,cm);
	return "";
}
@RequestMapping("/showOrder")
public ModelAndView showOrder(HttpServletRequest request) {
	ModelAndView mv = new ModelAndView("webpage/order");
	CustModel cm = (CustModel)request.getSession().getAttribute("cust");
	if(cm!=null) {
		int totals = cartService.searchCountsByUser(cm);
		mv.addObject("totals",totals);
		mv.addObject("user", cm.getAccount()+"»¶Ó­Äú");
	}else {
		mv.addObject("user", "ÇëµÇÂ¼");
	}
	List<OrderwebModel> list = orderwebService.searchAllByCust(cm);
	mv.addObject("orders", JSONArray.fromObject(list));
	return mv;
}
}
