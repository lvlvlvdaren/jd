package com.dh.mall.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dh.mall.sys.model.OrderModel;
import com.dh.mall.sys.model.ProductModel;
import com.dh.mall.sys.service.OrderService;

import st.tool.FormatEmpty;

@Controller
@RequestMapping("/orderController")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@ResponseBody
    @RequestMapping(value = "/getList",produces = "appliction/json;charset=utf-8" )
    public String getList(OrderModel om) {
    	String odrcode =  om.getOrdcode();
   
    	String username =  om.getUsername();
    	OrderModel umn = new OrderModel();
    	umn.setUsername(username);
    	umn.setOrdcode(odrcode);
    	umn.setPageOn(true);
    	umn.setPageIndex(om.getPageIndex());
    	umn.setPageLimit(om.getPageLimit());
    	
    	List<OrderModel> list = orderService.selectModel(umn);
    	Map<String, Object> map = new HashMap<>();
        map.put("list", list);
        map.put("count", orderService.selectCount(umn));
        return FormatEmpty.isEmpty(list) ? "" : new JSONObject(map).toString();
    	
    }
	@ResponseBody
	@RequestMapping(value = "/del",produces="appliction/josn;charset=utf-8")
	public String del(OrderModel pm) {
		String msg = orderService.del(pm);
		System.out.println("+++++++++++++++++"+msg);
		JSONObject js = new JSONObject();
		js.put("msg", msg);
		return js.toString();
	}
}
