package com.ptithcm.controller;

import java.io.Console;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptithcm.entities.Employee;
import com.ptithcm.entities.User;
import com.ptithcm.service.EmployeeServiceImp;
import com.ptithcm.service.UserServiceImp;


@Controller
@Transactional
public class TestController {

	@Autowired
	EmployeeServiceImp esi;
	
	@Autowired
	UserServiceImp usi;
	
	@RequestMapping("/test")
	public String test() {
		
//		List<Department> ld = dsi.findAll();
//		
//		ld.forEach(val->{
//			System.out.println(val.toString());
//			System.out.println("===================");
//		});
//		
//		
//		
//		List<Employee> le = esi.findAll();
//		
//		le.forEach(val->{
//			System.out.println(val.toString());
//		});
		
//		Session s = sessionFactory.getCurrentSession();
//		
//		List<User> lu = s.createQuery("from User").getResultList();
//		
//		lu.forEach(val->{
//			System.out.println(val.toString());
//		});
		
//		List<User> lu = usi.findAll();
//		lu.forEach(val->{
//			System.out.println(val.toString());
//		});
//		
//		System.out.println(usi.checkLogin("admin", "admin"));
		
		return "dashboard/user/login";
	}
}
