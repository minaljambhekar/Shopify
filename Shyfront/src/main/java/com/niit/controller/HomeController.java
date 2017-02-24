package com.niit.controller;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.ShyBackend.model.Person;

@Controller
public class HomeController {
	
	     @RequestMapping("/")
	     public String home() 
	     {
  	          return "index";
	     }
	
	     @RequestMapping("/home")
		 public String index(){
		   	 return "index";
		 }
	     
		 @RequestMapping(value="/Login",method=RequestMethod.GET)
		 public String login(){
	   	 return "Login";
	     }
		 
	     @RequestMapping("/Aboutus")
		 public String Aboutus(){
	   	 return "Aboutus";
	     }
	    
	     @RequestMapping("/ContactUs")
		 public String ContactUs(){
	   	 return "ContactUs";
	     }
	     
	     @RequestMapping(value="/authfailure",method=RequestMethod.GET)
	 	 public String accessDeniedPage()
	 	 {
	 		return "accessDenied";
	 	 }
	     
	     @RequestMapping("/Logout")
		 public String logout(){
	   	 return "index";
	     }
}

