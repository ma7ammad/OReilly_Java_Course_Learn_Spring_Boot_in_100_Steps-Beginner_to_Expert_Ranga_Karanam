package com.in28minutes.springboot.web.service;

public class LoginService {
	
	public boolean validateUser(String userid, String password) {
		return userid.equalsIgnoreCase("moapp")
				&& password.equalsIgnoreCase("pass");
	}

}
