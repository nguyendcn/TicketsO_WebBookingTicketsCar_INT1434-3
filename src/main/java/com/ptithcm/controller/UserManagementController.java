package com.ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptithcm.entities.Role;
import com.ptithcm.entities.Status;
import com.ptithcm.entities.User;
import com.ptithcm.service.RoleServiceImp;
import com.ptithcm.service.StatusServiceImp;
import com.ptithcm.service.UserServiceImp;

@Controller
@RequestMapping("/dashboard/users")
public class UserManagementController {
	
	@Autowired
	UserServiceImp userServiceImp;
	
	@Autowired
	RoleServiceImp roleServiceImp;
	
	@Autowired
	StatusServiceImp statusServiceImp;
	
	@RequestMapping("/show")
	public String showListUsers(ModelMap modelMap){
		
		int quantityUser = userServiceImp.getQuantityUser();
		List<User> le = userServiceImp.findByPage(1, 10); 
		
		le.forEach(val->{
			System.out.println(val.toString());
		});
		
		modelMap.addAttribute("listUsers", le);
		modelMap.addAttribute("quantityUsers", quantityUser);
		modelMap.addAttribute("currentPage", 1);
		modelMap.addAttribute("quantityPage", calQuantityPage(quantityUser, 10));
		modelMap.addAttribute("numPerPage", 10);
		
		System.out.println("quantity-page: " + quantityUser + "| current-page: " + 1 + "| quantity-page: " + calQuantityPage(quantityUser, 10));
		
		return "dashboard/user-management/user-list";
	}
	
	@RequestMapping("/editRecordById")
	public String editRecordById(@RequestParam int idRecord, ModelMap modelMap) {
		User user = userServiceImp.findById(idRecord);
		
		modelMap.addAttribute("user", user);
		return "dashboard/user-management/user-edit";
	}
	
	@RequestMapping(value = "/updateUser", method=RequestMethod.POST)
	public String updateUser(HttpServletRequest request, ModelMap modelMap) {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = userServiceImp.findById(id);
		if(user != null) {
		user.setEmail(request.getParameter("email"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		
		   userServiceImp.update(user);
		}
		
		
		return showListUsers(modelMap);
	}
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String createUser(ModelMap modelMap) {
		List<Role> lr = roleServiceImp.findAll();
		
		modelMap.addAttribute("listRoles", lr);
		
		lr.forEach((val)->{
			System.out.println(val.getName());
		});
		return "dashboard/user-management/user-add";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String createUser_2(HttpServletRequest request, ModelMap modelMap) {
		
		User user = new User();
		user.setId(-1);
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setName(request.getParameter("name"));
		Role role = roleServiceImp.findById(Integer.parseInt(request.getParameter("role_id")));
		Status status = null;
		if(request.getParameter("status").equals("null")) {
			status = statusServiceImp.findById(2);
		}else if(request.getParameter("status").equals("on")) {
			status = statusServiceImp.findById(1);
		}
		user.setStatus(status);
		user.setRole(role);
		
		System.out.println(Integer.parseInt(request.getParameter("role_id")));
		//System.out.println(role.getId());
		System.out.println(user.toString());
		
		userServiceImp.add(user);
		
		return "dashboard/user-management/user-list";
	}
	
	@RequestMapping("/show/getUserByQuantity")
	public String showListUsersByQuantity(@RequestParam int numPerPage, ModelMap modelMap){
		
		int quantityUser = userServiceImp.getQuantityUser();
		List<User> le = userServiceImp.findByPage(1, numPerPage); 
		
		le.forEach(val->{
			System.out.println(val.toString());
			
		});
		
		modelMap.addAttribute("listUsers", le);
		modelMap.addAttribute("quantityUsers", quantityUser);
		modelMap.addAttribute("currentPage", 1);
		modelMap.addAttribute("quantityPage", calQuantityPage(quantityUser, 10));
		modelMap.addAttribute("numPerPage", numPerPage);
		
		System.out.println("quantity-page: " + quantityUser + "| current-page: " + 1 + "| quantity-page: " + calQuantityPage(quantityUser, 10));
		
		return "dashboard/user-management/user-list";
	}
	
	@RequestMapping("/edit")
	public String editUser(){
		return "dashboard/user-management/user-edit";
	}
	
	
	@RequestMapping("/management")
	public String init_m(ModelMap modelMap) {
		List<User> le = userServiceImp.findByPage(1, 5);
		int quantity = Integer.parseInt(le.get(le.size() - 1).getPassword());
		
		le.remove(le.get(le.size() - 1));
		
		modelMap.addAttribute("listUser", le);
		modelMap.addAttribute("current_page", 1);
		
		int showing = 5 > le.size() ? le.size() : 5;
		modelMap.addAttribute("num_per_page", showing);
		modelMap.addAttribute("quantity", quantity);
		return "dashboard/user/management";
	}
	
	@RequestMapping("/management/getuserbypage")
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
		
		return "dashboard/users/management";
	}
	
	public int calQuantityPage(int totalRecords, int recordPerPage) {
		if(totalRecords % recordPerPage == 0) {
			return (totalRecords / recordPerPage);
		}else {
			return ((totalRecords / recordPerPage) + 1);
		}
	}
}
