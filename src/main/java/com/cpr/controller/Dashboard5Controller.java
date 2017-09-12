package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;


@Controller
@SessionAttributes("/dashboard5")
public class Dashboard5Controller {
	
	@RequestMapping("/dashboard5")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3=new Dashboard3();
		System.out.println("inside dashboard 5!!");
		return new ModelAndView("dashboard5/dashboard5","Dashboard3",new Dashboard3());
	}
	

}