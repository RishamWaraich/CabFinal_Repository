package com.cab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class Aboutus {
	

	@RequestMapping("/about")
	public String about() {

	    return "aboutUs";
	}
}
