package com.ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptithcm.models.UserInfo;
import com.ptithcm.service.UserServiceImp;

@Controller
@RequestMapping("/dashboard")
public class UserActionController {

	@Autowired
	UserServiceImp usersi;
	
	@RequestMapping("/login")
	public String login(ModelMap modelMap) {
		
		modelMap.addAttribute("userInfo", new UserInfo());
		
		return "dashboard/user/login";
	}
	
	@RequestMapping("/checkLogin")
	@ResponseBody
	public String checkLogin(@ModelAttribute("userInfo") UserInfo user) {
		
		String status = usersi.checkLogin(user.getUsername(), user.getPassword())?"success":"fail";
		
		return status;
		
	}
}
