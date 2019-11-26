package com.ptithcm.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ptithcm.models.UserInfo;

@Controller
@RequestMapping("/dashboard")
public class SystemController {
	
	@GetMapping
	@Transactional
	public String mainDashboard(ModelMap modelMap, HttpSession httpSession) {
		
		String current_user = (String)httpSession.getAttribute("current_user");
		System.out.println("current-user|" + current_user + "|");
		if(current_user == null) {
			modelMap.addAttribute("userInfo", new UserInfo());
			return "dashboard/user/login";
			
		}else {
			modelMap.addAttribute("user", current_user);
		}
		return "dashboard/mainDashboard";
	}
	
	@RequestMapping("/user/login")
	public String userLogin() {
		return "dashboard/user/login";
	}

	
	@RequestMapping("/user/logout")
	@Transactional
	public String userLogout(HttpSession httpSession, ModelMap modelMap) {
		httpSession.setAttribute("current_user", null);
		modelMap.addAttribute("userInfo", new UserInfo());
		return "dashboard/user/login";
	}
	
}

