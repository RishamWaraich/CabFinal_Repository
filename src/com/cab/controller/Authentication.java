package com.cab.controller;



import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cab.controller.model.UserRegister;
 
import java.sql.*;

/*
 * author: Crunch.com
 * 
 */
 
@Controller
public class Authentication {

	@RequestMapping(value = "/authentication", method = RequestMethod.GET)
	public ModelAndView authentication(HttpServletRequest request, HttpServletResponse response) {
		 ModelAndView mav = new ModelAndView("authentication");
		    mav.addObject("user", new UserRegister());
		    return mav;
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/dashboard1", method = RequestMethod.POST)
	public ModelAndView gethelloWorld1(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") UserRegister user) {
		
	     
		String enteredOTP = request.getParameter("oneTimeCode");
		System.out.println("OTP Entered :" +enteredOTP);
		String userNameTofetch="";
		
		for(Cookie c:request.getCookies())
		
		{
			if(c.getName().equals("cabUserName"))
				userNameTofetch=c.getValue();
		}
		if(userNameTofetch.isEmpty())
			System.err.println("Error: No cookie set");
		String fetchedOTP=fetchOTP(userNameTofetch);
		System.out.println("OTP Fetched:"+fetchedOTP);	
			
		String errorMesage="";
		ModelAndView mav;
		if(enteredOTP.equals(fetchedOTP))
		{
			 System.out.println("OTP Success");
			 mav =  new ModelAndView("dashboard");
			 mav.addObject("userName", user.getUserName());
			 mav.addObject("userPassword", user.getUserPassword());
		}
		else
		{
			System.out.println("OTP Failed");
			errorMesage="OTP is invalid";
			mav =  new ModelAndView("authentication");
			mav.addObject("errorMesage", errorMesage);
		 		
		}
		
		 return mav;
	}
	public String fetchOTP(String name)
	{
		 String JDBC_Driver = "oracle.jdbc.driver.OracleDriver";
		 String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		 String userName = "syntronic";
		 String password = "root";
		 
		 Connection conn = null;
		 Statement stmt = null;
		 String otpOfUser= "";
		 
		 try
		 {
			 Class.forName(JDBC_Driver);
			 
			 conn = DriverManager.getConnection(DB_URL,userName,password);
			 
			 stmt = conn.createStatement();
			 String sql = "SELECT * from users where username = '" + name + "'";
			 //"UPDATE users " + "SET username = BilluBakra where id in "
			 
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				otpOfUser = rs.getString("OTP");
			}
			rs.close();
		 }
		 catch(SQLException se)
		 {
			 se.printStackTrace();
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
			 System.out.println("Exception");			 
		 }
		 finally
		 {
			 if(conn!=null)
			 try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		 }
			return otpOfUser;
		
	}
	
}
