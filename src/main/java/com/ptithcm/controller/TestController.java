package com.ptithcm.controller;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/")
public class TestController {
	
	@RequestMapping()
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
		
		return "test";
	}
}
