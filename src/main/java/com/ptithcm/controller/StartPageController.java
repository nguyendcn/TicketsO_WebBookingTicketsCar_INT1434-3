package com.ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class StartPageController {
	@RequestMapping()
	public String redirex() {
		//return "redirect:dashboard/user/login";
		return "dashboard/mainDashboard";
	}
}
