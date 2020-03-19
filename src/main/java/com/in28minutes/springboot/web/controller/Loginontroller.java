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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String ShowLoginPage(ModelMap model) {
		model.put("name", "moapp");
		return "welcome";
	}
}
