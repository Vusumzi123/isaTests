package com.vusumzi.spring.mvc.controller;

import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Hello {
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("time", new Date());
		return "welcome";
	}
	
	@RequestMapping("/test")
	public String test(Map<String, Object> model) {
		return "test";
	}

}
