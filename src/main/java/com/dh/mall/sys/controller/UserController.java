package com.dh.mall.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dh.mall.sys.model.UserModel;
import com.dh.mall.sys.service.UserService;

import st.tool.FormatAuthCodeServlet;
import st.tool.FormatEmpty;

@Controller
@RequestMapping("/userController")
public class UserController {
	
 @Autowired
 private UserService userService;

 @Autowired
 private HttpSession session;
	@ResponseBody
	@RequestMapping(value = "/login", produces = "appliction/json;charset=utf-8")
	public String login(UserModel um) {
		

		String ms = userService.searchByAccount(um);
		List<UserModel> list = userService.searchUser(um);
		
		if("0".equals(ms)) {
			
			session.setAttribute("manageUser", list.get(0));
			
			
		}
//		String ran =  request.getSession().getAttribute("authCode").toString();
//		if(!ran.equals(ids[2])) {
//			ms = "2";
//		}
return ms;
	}
		
	    @RequestMapping(value = "/getVerify")
	    public void getVerify(HttpServletRequest request, HttpServletResponse response){
	       
	        FormatAuthCodeServlet ran = new FormatAuthCodeServlet();
	        try {
	        	
	        	 ran.doGet(request, response);//输出验证码图片方法
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
//	        ImageIO.write(ran.doGet(request, response), "jpg", response.getOutputStream());
	    }

//	@ResponseBody
//	@RequestMapping(value = "/random", method = RequestMethod.GET)
//	public void random(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		FormatAuthCodeServlet ran = new FormatAuthCodeServlet();
//		ran.doGet(request, response);
//	}
	    @ResponseBody
	    @RequestMapping(value = "/searchOne",produces = "appliction/json;charset=utf-8" )
	    public String searchOne(UserModel um) {
	    	List<UserModel> list = userService.searchUser(um);
	    	JSONArray json = new JSONArray();
	    	JSONObject js = new JSONObject();
	    	js.put("account", list.get(0).getAccount());
	    	js.put("name", list.get(0).getName());
	    	json.put(js);
	    	return json.toString();
	    }
	    
	    @ResponseBody
	    @RequestMapping(value = "/modifyUser",produces = "appliction/json;charset=utf-8" )
	    public String modifyUser(UserModel um) {
	    	String msg = userService.updateActive(um);
//	    	JSONArray json = new JSONArray();
	    	UserModel sessionUser = (UserModel)session.getAttribute("manageUser");
	    	if(um.getAccount().equals(sessionUser.getAccount())) {
	    		sessionUser.setName(um.getName());
	    		session.setAttribute("manageUser", sessionUser);
	    	}
	    	JSONObject js = new JSONObject();
	    	js.put("msg", msg);
	    	
	    	return js.toString();
	    }
	    @ResponseBody
	    @RequestMapping(value = "/modifyPass",produces = "appliction/json;charset=utf-8" )
	    public String modifyPass(UserModel um) {
	    	String msg = userService.updateActive(um);
//	    	JSONArray json = new JSONArray();
	    	JSONObject js = new JSONObject();
	    	js.put("msg", msg);
	    	
	    	return js.toString();
	    }
	    
	    
	    @ResponseBody
	    @RequestMapping(value = "/list",produces = "appliction/json;charset=utf-8" )
	    public String getList(UserModel um) {
	    	String account =  um.getAccount() ;
	    	String name =  um.getName() ;
	    	UserModel umn = new UserModel();
	    	umn.setAccount(account);
	    	umn.setName(name);
	    	umn.setPageOn(true);
	    	umn.setPageIndex(um.getPageIndex());
	    	umn.setPageLimit(um.getPageLimit());
	    	
	    	List<UserModel> list = userService.selectModel(umn);
	    	Map<String, Object> map = new HashMap<>();
	        map.put("list", list);
	        map.put("count", userService.selectCount(umn));
	        return FormatEmpty.isEmpty(list) ? "" : new JSONObject(map).toString();
	    	
	    }
	    @ResponseBody
	    @RequestMapping(value = "/addUser",produces = "appliction/json;charset=utf-8")
	    public String addUser(UserModel um) {
	    	
	    	String msg = userService.addUser(um);
	    	JSONObject jo = new JSONObject();
	    	jo.put("msg", msg);
	    	return jo.toString();
	    }
	    @ResponseBody
	    @RequestMapping(value = "/delUser",produces = "appliction/json;charset=utf-8")
	    public String delUser(UserModel um) {
	    	
	    	String msg = userService.delUser(um);
	    	JSONObject jo = new JSONObject();
	    	jo.put("msg", msg);
	    	return jo.toString();
	    }
}

