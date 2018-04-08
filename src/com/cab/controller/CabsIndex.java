package com.cab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cab.controller.model.UserRegister;
 
/*
 * author: Crunchify.com
 * 
 */
 
@Controller
public class CabsIndex {
 
	@RequestMapping("/welcome")
public ModelAndView helloWorld() {
		String message = "<br><div style='text-align:left;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
	
	
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView helloWorld(HttpServletRequest request, HttpServletResponse response) {
		 ModelAndView mav = new ModelAndView("welcome");
		    mav.addObject("user", new UserRegister());
		    return mav;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	public ModelAndView gethelloWorld(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") UserRegister user) {
		
		
		
		Configuration c = new Configuration();
		c.configure(); // loads hibernate.cfg.xml

		SessionFactory sf = c.buildSessionFactory();
		Session s = sf.openSession();

	
		Query q = s.createQuery("from UserRegister user");
		
		List<UserRegister> list= q.list();
		System.out.println(""+list.size());
		
		for(int i=0;i<list.size();i++) {
			System.out.println("Hello My friends"+list.get(i));
			System.out.println(""+list.get(i).getUserName());
		}
	
	     sf.close();
	     
		 ModelAndView mav =  new ModelAndView("dashboard");
		 mav.addObject("userName", user.getUserName());
		 mav.addObject("userPassword", user.getUserPassword());
		 return mav;
	}
	
}
