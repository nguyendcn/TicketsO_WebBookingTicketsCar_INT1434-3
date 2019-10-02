package com.ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.ptithcm.entities.User;
import com.ptithcm.service.UserServiceImp;

@Controller
@RequestMapping("api/")
@Transactional
@SessionAttributes("current_user")
public class ApiController {

	@Autowired
	UserServiceImp userServiceImp;

	@GetMapping("checkLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String username, @RequestParam String password, ModelMap modelMap) {
		boolean isSuccess = userServiceImp.checkLogin(username, password);
		System.out.println("{username:" + username + ", password:" + password + "}");

		if (isSuccess) {
			modelMap.addAttribute("current_user", username);
			return "true";
		} else
			return "false";
	}

	@GetMapping("getPagingContent")
	@ResponseBody
	public String getUserByPage(@RequestParam int page, @RequestParam int numPerPage) {
		List<User> le = userServiceImp.findByPage(page, numPerPage);

		le.forEach(val -> {
			System.out.println(val.toString());
		});
		
		le.remove(le.get(le.size() - 1));
		
		String json = new Gson().toJson(le);
		return json;
	}
	
	@GetMapping("delRecordById")
	@ResponseBody
	public String delUserById(@RequestParam int idRecord) {
		int affectRows = userServiceImp.deleteUserById(idRecord);
		
		if(affectRows > 0) {
			return ("OK");
		}else{
			return "ERR";
		}
	}
	
	@GetMapping("getQuantityUser")
	@ResponseBody
	public String getQuantityUser() {
		int quantity = userServiceImp.getQuantityUser();
		return quantity + "";
	}

	@RequestMapping("/testapi")
	@ResponseBody
	public String test() {
		return "Success";
	}
}
