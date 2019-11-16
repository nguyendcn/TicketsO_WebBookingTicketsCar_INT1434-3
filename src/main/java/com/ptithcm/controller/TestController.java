package com.ptithcm.controller;

import java.io.Console;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptithcm.entities.Employee;
import com.ptithcm.entities.Tour;
import com.ptithcm.entities.User;
import com.ptithcm.service.EmployeeServiceImp;
import com.ptithcm.service.TourServiceImp;
import com.ptithcm.service.UserServiceImp;


@Controller
@Transactional
public class TestController {

	@Autowired
	EmployeeServiceImp esi;
	
	@Autowired
	UserServiceImp usi;
	
	@Autowired
	TourServiceImp tsi;
	
	@RequestMapping("/test")
	public String test() {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse("2019-10-27");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<Tour> lt = tsi.getTourByOrder("C", "D", date);
		
		lt.forEach((t)->{
			System.out.println(t.getId());
		});
		

		return "test";
	}
	
	@RequestMapping("/test/1")
	public String test1() {
		return "booking-details";
	}
	
	@RequestMapping("/test/2")
	public String test2() {
		return "booking-success";
	}
	
	@RequestMapping("/test/3")
	public String test3() {
		return "tickets-info";
	}
}
