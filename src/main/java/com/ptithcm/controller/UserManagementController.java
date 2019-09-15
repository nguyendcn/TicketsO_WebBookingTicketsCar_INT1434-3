package com.ptithcm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptithcm.entities.User;
import com.ptithcm.service.UserServiceImp;

@Controller
public class UserManagementController {
	
	@Autowired
	UserServiceImp userServiceImp;
	
	@RequestMapping("/dashboard/user/management")
	public String init_m(ModelMap modelMap) {
		List<User> le = userServiceImp.findAll();
		
		modelMap.addAttribute("listUser", le);
		modelMap.addAttribute("current_page", 1);
		
		int showing = 5 > le.size() ? le.size() : 5;
		modelMap.addAttribute("num_per_page", showing);
		modelMap.addAttribute("quantity", le.size());
		return "dashboard/user/management";
	}
	
	@RequestMapping("/dashboard/user/management/getuserbypage")
	public String getUserByPage(@RequestParam int page, @RequestParam int numPerPage, ModelMap modelMap) {
		
		List<User> le = userServiceImp.findByPage(page, numPerPage);
		
		le.forEach(val->{
			System.out.println(val.toString());
		});
		modelMap.addAttribute("listUser", le);
		modelMap.addAttribute("current_page", page);
		
		int showing = numPerPage > le.size() ? le.size() : numPerPage;
		modelMap.addAttribute("num_per_page", showing);
		modelMap.addAttribute("quantity", le.size());
		
		return "dashboard/user/management";
	}
}
