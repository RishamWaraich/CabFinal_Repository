package com.cab.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 

 
@Controller
public class Dashboard {

	@RequestMapping("/dashboard")
	public String dashboard() {
	    return "dashboard";
	}
	
}
