package com.dh.mall.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dh.mall.sys.model.ProductModel;
import com.dh.mall.sys.service.ProductService;

import net.sf.json.JSONArray;
import st.tool.FormatEmpty;

@Controller
@RequestMapping("/productController")
public class ProductController {
@Autowired
private ProductService productService;
	@ResponseBody
	@RequestMapping(value = "/searchPcname",produces="appliction/josn;charset=utf-8")
		public String searchPcname(@RequestParam("up") String up) {
		ProductModel pm = new ProductModel();
		pm.setProclass2(up);
		pm.setOrderby("proclass2,proclass1");
		List<ProductModel>list = productService.selectSclass(pm);
		JSONArray json = JSONArray.fromObject(list);
			return json.toString();
		}
	@ResponseBody
	@RequestMapping(value = "/addProd",produces="appliction/josn;charset=utf-8")
	public String addProd(ProductModel pm) {
		String msg = productService.addProd(pm);
    	JSONObject jo = new JSONObject();
    	jo.put("msg", msg);
    	return jo.toString();
	}
	@ResponseBody
	@RequestMapping(value = "/getList",produces = "appliction/json;charset=utf-8" )
	public String getList(ProductModel um) {
		String parentcode =  um.getProcode() ;
		String sclassname =  um.getProname() ;
		ProductModel umn = new ProductModel();
		umn.setProcode(parentcode);
		umn.setProname(sclassname);
		umn.setPageOn(true);
		umn.setPageIndex(um.getPageIndex());
		umn.setPageLimit(um.getPageLimit());
		List<ProductModel> list = productService.selectModel(umn);
//		System.out.println(list.get(0).getProclass1());
		Map<String, Object> map = new HashMap<>();
	    map.put("list", list);
	    map.put("count", productService.selectCount(umn));
	    return FormatEmpty.isEmpty(list) ? "" : new JSONObject(map).toString();
		
	}
	@ResponseBody
	@RequestMapping(value = "/searchById",produces="appliction/josn;charset=utf-8")
	public String searchById(ProductModel pm) {
		int id = pm.getId();
	List<ProductModel>list = productService.selectById(id);
	JSONArray json = JSONArray.fromObject(list);
		return json.toString();
	}
	@ResponseBody
	@RequestMapping(value = "updProd",produces="appliction/josn;charset=utf-8")
	public String updProd(ProductModel pm) {
		String msg = productService.updProd(pm);
		
		JSONObject js = new JSONObject();
		js.put("msg", msg);
		return js.toString();
	}
	@ResponseBody
	@RequestMapping(value = "/del",produces="appliction/josn;charset=utf-8")
	public String del(ProductModel pm) {
		String msg = productService.del(pm);
		System.out.println("+++++++++++++++++"+msg);
		JSONObject js = new JSONObject();
		js.put("msg", msg);
		return js.toString();
	}
}
