package com.accounts.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.accounts.dao.UserDao;
import com.accounts.models.User;

@Controller
public class UserController {
	
	@Autowired
	UserDao dao;
	
	@RequestMapping(value={"/", "/login"}, method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value={"/register"}, method=RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register", "user", new User());
		return mv;
	}
	
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerEmployee(@ModelAttribute("user") User user, @RequestParam("rawPassword") String rawPassword) {
		ModelAndView mv = new ModelAndView();
		String message = null;
		
		String encodedPassword = encodePassword(rawPassword);
		if (encodedPassword != null) {
			user.setPassword(encodedPassword);
			dao.save(user);
			message = "Added user";
			mv.setViewName("login");
		} else {
			message = "Failed to add user";
			mv.setViewName("register");
		}
		mv.addObject("message", message);
		return mv;
	}
	
	public String encodePassword(String password) {
		String encodedPassword = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte[] digestBytes = md.digest(password.getBytes());
			int digestBytesLength = digestBytes.length;
			StringBuilder sb = new StringBuilder();
			for (int i=0; i<digestBytesLength; i++) {
				sb.append(Integer.toHexString(0xff & digestBytes[i]));
			}
			encodedPassword = sb.toString();
			
		} catch (NoSuchAlgorithmException nsae) {
			nsae.printStackTrace();
		}
		return encodedPassword;
	}
}
