package com.cab.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cab.controller.model.UserRegister;
 
/*
 * author: Crunch.com
 * 
 */
 
@Controller
public class Carddetails {

	@RequestMapping(value = "/card-details", method = RequestMethod.GET)
	public ModelAndView authentication(HttpServletRequest request, HttpServletResponse response) {
		 ModelAndView mav2 = new ModelAndView("card-details");
		    mav.addObject("user", new UserRegister());
		    return mav2;
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/authentication", method = RequestMethod.POST)
	public ModelAndView gethelloWorld1(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") UserRegister user) {
		
	     
		 ModelAndView mav =  new ModelAndView("authentication");
		 mav.addObject("userName", user.getUserName());
		 mav.addObject("userPassword", user.getUserPassword());
		 mav.addObject("userFName", user.getUserFName());
		 return mav;
	}
}
