package com.care.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	//Testing
	@RequestMapping("/header/l_header")
	public String l_header() {
		return "/header/l_header";
	}
	@RequestMapping("/header/m_header")
	public String m_header() {
		return "/header/m_header";
	}
	@RequestMapping("/header/f_header")
	public String f_header() {
		return "/header/f_header";
	}
	@RequestMapping("/header/my_header")
	public String my_header() {
		return "/header/my_header";
	}
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
}
