package com.dh.mall.sys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dh.mall.sys.model.ThingsModel;
import com.dh.mall.sys.service.ThingsService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/tingsController")
public class ThingsController {
	@Autowired
	private ThingsService thingsService;

	@ResponseBody
	@RequestMapping(value = "/getThings", produces = "application/json;charset=utf-8")
	public String getThings(ThingsModel thingsModel) {

		// Map<String, Object> map = new HashMap<>();
		// map.put("list", thingsService.selectAll(thingsModel));
		List<ThingsModel> list = thingsService.selectAll(thingsModel);
		JSONArray json = JSONArray.fromObject(list);
		return json.toString();
		// return JSONArray.fromObject(list).toString();
	}
}
