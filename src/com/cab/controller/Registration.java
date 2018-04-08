package com.cab.controller;


import java.util.List;

import javax.servlet.http.Cookie;
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
import com.cab.system.EmailClient;
import com.cab.system.OTPGeneration;

@Controller
public class Registration {
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registration(HttpServletRequest request, HttpServletResponse response) {
		 ModelAndView mav = new ModelAndView("registration");
		    mav.addObject("user", new UserRegister());
		    return mav;
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/card-details", method = RequestMethod.POST)
	public ModelAndView getegistration(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") UserRegister user) {
		
		
		
		Configuration c = new Configuration();
		c.configure(); // loads hibernate.cfg.xml

		SessionFactory sf = c.buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = (Transaction) s.beginTransaction();
		UserRegister data = new UserRegister();
		data.setId("2");
		data.setUserName(user.getUserName());
		data.setUserPassword(user.getUserPassword());
		data.setUserPassword(user.getUserPassword());
		data.setUserFName(user.getUserFName());
		data.setUserLName(user.getUserLName());
		data.setUserPhoneNumber(user.getUserPhoneNumber());
		data.setUserAddress(user.getUserAddress());
		data.setUserCountry(user.getUserCountry());
		data.setUserState(user.getUserState());
		data.setUserPCode(user.getUserPCode());		
		data.setUserWAddress(user.getUserWAddress());
		data.setUserWCountry(user.getUserWCountry());
		data.setUserWState(user.getUserWState());
		data.setUserWCity(user.getUserWCity());
		data.setUserWPCode(user.getUserWPCode());
		
		String OTPString = OTPGeneration.generatePassword();
		System.out.println("OTP STring : " + OTPString);
		data.setUserOTP(OTPString);		
		
		String emailBody = "OTP for "+user.getUserFName()+" is "+OTPString;
		//TODO remove these comments
		EmailClient.sendEmail(user.getUserName(), emailBody);
		//Query q = s.createQuery("Insert into ");
		
		
//		Query q = s.createQuery("from UserRegister");
//		List<UserRegister> list= q.list();
//		System.out.println(""+list.size());
//		
//		for(int i=0;i<list.size();i++) {
//			System.out.println(""+list.get(i));
//			System.out.println(""+list.get(i).getUserName());
//		}
		
		s.persist(data);
		t.commit();
		s.close();
		sf.close();
		
		
		ModelAndView mav =  new ModelAndView("card-details");
		
		 mav.addObject("userName", user.getUserName());
		 mav.addObject("userPassword", user.getUserPassword());
		 mav.addObject("userFName", user.getUserFName());
		 mav.addObject("userLName", user.getUserLName());
		 mav.addObject("userPhoneNumber", user.getUserPhoneNumber());
		 mav.addObject("userAddress", user.getUserAddress());
		 mav.addObject("userCountry", user.getUserCountry());
		 mav.addObject("userState", user.getUserState());
		 mav.addObject("userCity", user.getUserCity());
		 mav.addObject("userPCode", user.getUserPCode());
		 mav.addObject("userWAddress", user.getUserWAddress());
		 mav.addObject("userWCountry", user.getUserWCountry());
		 mav.addObject("userWState", user.getUserWState());
		 mav.addObject("userWCity", user.getUserWCity());
		 mav.addObject("userWPCode", user.getUserWPCode());
		 mav.addObject("userOTP" ,OTPString);
		 response.addCookie(new Cookie("cabUserName", user.getUserName()));

		 return mav;
	}
	
	
}
