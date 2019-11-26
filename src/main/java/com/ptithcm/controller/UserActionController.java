package com.ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ptithcm.models.UserInfo;
import com.ptithcm.models.UserInfoValidator;
import com.ptithcm.service.UserServiceImp;

@Controller
@SessionAttributes("current_user")
@RequestMapping("/dashboard")
public class UserActionController {

	@Autowired
	UserServiceImp usersi;
	
	@Autowired
	UserInfoValidator userValidator;
	
	@RequestMapping("/login")
	public String login(ModelMap modelMap) {
		
		modelMap.addAttribute("userInfo", new UserInfo());
		
		return "dashboard/user/login";
	}
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public String checkLogin(@ModelAttribute("userInfo") UserInfo user,
			BindingResult result,  ModelMap modelMap) {
		
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			return "dashboard/user/login";
		}
		
		boolean status = usersi.checkLogin(user.getUsername(), user.getPassword());
		
		if(!status) {
			modelMap.addAttribute("errorLogin", "Tai khoan khong ton tai.");
			return "dashboard/user/login";
		}
		modelMap.addAttribute("current_user", user.getUsername());
		return "dashboard/mainDashboard";
		
	}
}
