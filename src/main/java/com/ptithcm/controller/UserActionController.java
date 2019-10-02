package com.ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/booking")
public class UserActionController {
	
	@RequestMapping()
	public String defaultBooking() {
		return "choose-route";
	}
}
