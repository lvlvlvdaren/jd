package com.dh.mall.sys.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.dh.mall.sys.model.ImgModel;
import com.dh.mall.sys.service.ImgService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("imgController")
public class ImgController {
	@Autowired
	private ImgService imgService;
	private String PATH = "E:/DxOffice/workspace/image/";

	@RequestMapping("/upload")
	@ResponseBody
	public String upload(HttpServletRequest request, String code) throws IllegalStateException, IOException {
		// 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		// 检查form中是否有enctype="multipart/form-data"
		if (multipartResolver.isMultipart(request)) {
			// 将request变成多部分request
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			// 获取multiRequest 中所有的文件名
			Iterator<String> iter = multiRequest.getFileNames();
			// 一次遍历所有文件
			while (iter.hasNext()) {
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					String filename = file.getOriginalFilename();
					String saveName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
					String path = PATH + saveName;
					file.transferTo(new File(path));// 上传
					imgService.insert(new ImgModel(code, saveName, "2"));
				}
			}
		}
		Map<String, String> result = new HashMap<>();
		result.put("code", "0");
		return JSONObject.fromObject(result).toString();
	}

	// public String upload(HttpServletRequest request,String code) throws
	// IllegalStateException, IOException{
	// CommonsMultipartResolver multipartResolver = new
	// CommonsMultipartResolver(request.getSession().getServletContext());
	// if(multipartResolver.isMultipart(request)) {
	// MultipartHttpServletRequest multiRequest =
	// (MultipartHttpServletRequest)request;
	// Iterator<String> iter = multiRequest.getFileNames();
	// while(iter.hasNext()) {
	// MultipartFile file = multiRequest.getFile(iter.next());
	// if(file != null) {
	// String filename = file.getOriginalFilename();
	// String saveName = UUID.randomUUID().toString() + filename;
	// String path = PATH + saveName;
	// file.transferTo(new File(path));
	// imgService.insert(new ImgModel(code,saveName,"2"));
	// }
	// }
	// }
	// Map<String,String> result = new HashMap<>();
	// result.put("code", "0");
	// return JSONObject.fromObject(result).toString();
	// }
	@RequestMapping(value = "/getList", produces = "application/json;charset=utf-8")
	@ResponseBody
	private String getList(ImgModel imgModel) {
		imgModel.setProid("%" + imgModel.getProid() + "%");
		imgModel.setOrderby("type");
		Map<String, Object> map = new HashMap<>();
		map.put("list", imgService.selectAll(imgModel));
		return JSONObject.fromObject(map).toString();
	}

	@RequestMapping(value = "/del", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String del(ImgModel imgModel) {
		File file = new File(PATH + imgModel.getUrl());
		file.delete();
		return imgService.deleteModel(imgModel) + "";
	}

	@RequestMapping(value = "/style", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String style(ImgModel imgModel) {
		Integer id = imgModel.getId();
		ImgModel t = new ImgModel();
		t.setProid(imgModel.getProid());
		List<ImgModel> list = imgService.selectAll(t);
		String msg = "";
		boolean pp = false;
		for (ImgModel ppm : list) {
			if (id.equals(ppm.getId())) {
				ppm.setStyle("1");

			} else {
				ppm.setStyle("2");

			}
			imgService.updateActive(ppm);
			pp = true;
		}
		if (pp = true) {
			msg = "1";
		}
		return msg;
	}
}
