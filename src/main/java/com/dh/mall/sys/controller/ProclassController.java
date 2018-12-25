package com.dh.mall.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dh.mall.sys.model.ProclassModel;
import com.dh.mall.sys.service.ProclassService;

import net.sf.json.JSONArray;
import st.tool.FormatEmpty;

@Controller
@RequestMapping("/proclassController")
public class ProclassController {
	@Autowired
	private ProclassService proclassService;
@ResponseBody
@RequestMapping(value = "/searchPcname",produces="appliction/josn;charset=utf-8")
	public String searchPcname() {
	List<ProclassModel>list = proclassService.selectScode();
	JSONArray json = JSONArray.fromObject(list);
		return json.toString();
	}

@ResponseBody
@RequestMapping(value = "/searchById",produces="appliction/josn;charset=utf-8")
public String searchById(ProclassModel pm) {
	int id = pm.getId();
List<ProclassModel>list = proclassService.selectById(id);
JSONArray json = JSONArray.fromObject(list);
	return json.toString();
}

@ResponseBody
@RequestMapping(value = "/addClass",produces="appliction/josn;charset=utf-8")
	public String addClass(ProclassModel pm) {
	ProclassModel pcm = new ProclassModel();
	
	pcm.setDescr(pm.getDescr());
	pcm.setParentcode(pm.getParentcode());
	pcm.setSclassname(pm.getSclassname());
	pcm.setScode(pm.getScode());
	String msg = proclassService.addClass(pcm);
	JSONObject js = new JSONObject();
	js.put("msg", msg);
		return js.toString();
	}

@ResponseBody
@RequestMapping(value = "/updClass",produces="appliction/josn;charset=utf-8")
	public String updClass(ProclassModel pm) {
	ProclassModel pcm = new ProclassModel();
	
	pcm.setDescr(pm.getDescr());
	pcm.setParentcode(pm.getParentcode());
	pcm.setSclassname(pm.getSclassname());
	pcm.setScode(pm.getScode());
	String msg = proclassService.updClass(pcm);
	JSONObject js = new JSONObject();
	js.put("msg", msg);
		return js.toString();
	}


@ResponseBody
@RequestMapping(value = "/getList",produces = "appliction/json;charset=utf-8" )
public String getList(ProclassModel um) {
	String parentcode =  um.getParentcode() ;
	String sclassname =  um.getSclassname() ;
	ProclassModel umn = new ProclassModel();
	umn.setParentcode(parentcode);
	umn.setSclassname(sclassname);
	umn.setPageOn(true);
	umn.setPageIndex(um.getPageIndex());
	umn.setPageLimit(um.getPageLimit());
	List<ProclassModel> list = proclassService.selectModel(umn);
	Map<String, Object> map = new HashMap<>();
    map.put("list", list);
    map.put("count", proclassService.selectCount(umn));
    return FormatEmpty.isEmpty(list) ? "" : new JSONObject(map).toString();
	
}
}
