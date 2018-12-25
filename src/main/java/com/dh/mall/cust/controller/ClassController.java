package com.dh.mall.cust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dh.mall.cust.model.CartModel;
import com.dh.mall.cust.model.ClassModel;
import com.dh.mall.cust.model.CustModel;
import com.dh.mall.cust.model.ProductwebModel;
import com.dh.mall.cust.service.CartService;
import com.dh.mall.cust.service.ClassService;
import com.dh.mall.cust.service.ProductwebService;

@Controller
@RequestMapping("/classController")
public class ClassController {
	@Autowired
	private ClassService classService;
	@Autowired
	private ProductwebService productwebService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/tohome")
	public String tohome() {
//		ModelAndView mv = new ModelAndView("/webpage/homepage");
//		List<ClassModel> listf = classService.selectClassf();
//		List<ClassModel> lists = classService.selectClasss();
//		mv.addObject("listf", listf);
//		mv.addObject("lists",lists);
		searchClass();
		return "/webpage/homepage";
	}
	
	@RequestMapping("/searchClass")
	public ModelAndView searchClass() {
		ModelAndView mv = new ModelAndView("/webpage/homepage");
		List<ClassModel> listf = classService.selectClassf();
		List<ClassModel> lists = classService.selectClasss();
		mv.addObject("listf", listf);
		mv.addObject("lists",lists);
		return mv;
	}
//	@RequestMapping("/searchByCname")
//	public ModelAndView searchByCname(ClassModel cm) {
//		ModelAndView mv = new ModelAndView("/webpage/listpage");
//		List<ProductwebModel> lists = productwebService.searchByScode(cm);
//		mv.addObject("products", lists);
//		return mv;
//	}
@RequestMapping("/searchByName")
public ModelAndView searchByName(ProductwebModel pwm) {
	ModelAndView mv = new ModelAndView("/webpage/listpage");
	List<ProductwebModel> list = productwebService.searchByName(pwm);
	mv.addObject("products", list);
	
	return mv;
}

@RequestMapping("/searchByCode")
public ModelAndView searchByCode(ProductwebModel pwm) {
	ModelAndView mv = new ModelAndView("/webpage/detailpage");
	List<ProductwebModel> listc = productwebService.searchByCode(pwm);
	ProductwebModel p=listc.get(0);
//	System.out.println(p+"+++++++++++++++++++");
	mv.addObject("p", p);
	return mv;
}

@RequestMapping(value="addCart")
public String addCart(CartModel cartModel,HttpServletRequest request){
	CustModel cust = (CustModel)request.getSession().getAttribute("cust");
	cartModel.setCust(cust);
	boolean flag = cartService.addCart(cartModel);
	return "redirect:/classController/cart.do";
}
@RequestMapping(value="cart")
public ModelAndView shopcar(@RequestParam(value="sId",defaultValue="1") int sId,
		HttpServletRequest request){
	ModelAndView mv = new ModelAndView("webpage/buycar");
	CustModel u =  (CustModel) request.getSession().getAttribute("cust");
	if(u!=null){
		mv.addObject("user", u.getAccount()+"»¶Ó­Äú");
	}else{
		mv.addObject("user","ÇëµÇÂ¼" );
	}
	CustModel us =  (CustModel) request.getSession().getAttribute("cust");
	String custAccount = us.getAccount();
	List<CartModel> list = cartService.searchGoodsByUser(custAccount);
	mv.addObject("cars", list);
	return mv;
}
@RequestMapping(value="deleteCart")
public String deleteCart(String procode ) {
	boolean flag = cartService.deletePro(procode);
	return "redirect:/classController/cart.do";
}
@RequestMapping(value="updateTotalIncart",produces="appliction/josn;charset=utf-8")
@ResponseBody
public String updateTotalIncart(CartModel cart) {
	CartModel cm = cartService.updateTotalIncart(cart);
	return cm.getTotal().toString();
}
}
