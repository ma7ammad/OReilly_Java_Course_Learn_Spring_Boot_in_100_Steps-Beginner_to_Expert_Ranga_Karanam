package com.in28minutes.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.LoginService;

@Controller
@SessionAttributes("name")
public class Loginontroller {
	
	LoginService service = new LoginService();
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String ShowLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String name
			, @RequestParam String password) {
		boolean isValidUser = service.validateUser(name, password);
		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials!");
			return "login";
		}
		model.put("name", name);
		return "welcome";
	}
		
	
	
//	@RequestMapping("/login")	
	//@ResponseBody
//	public String loginMessage(@RequestParam String name, ModelMap model) {
//		model.put("name", name);
//
//		//System.out.println("name is: " + name);
//		return "login";
//		//return "Hello Mohamed...";
//	}
	
}
