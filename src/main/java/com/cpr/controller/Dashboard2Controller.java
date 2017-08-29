package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard2;


@Controller
@SessionAttributes("Dashboard2")
public class Dashboard2Controller {
	
	@RequestMapping("/dashboard2")
	public ModelAndView initializeForm()
	{
		Dashboard2 dashboard2=new Dashboard2();
		System.out.println("inside dashboard2!!");
		return new ModelAndView("dashboard2/dashboard2","Dashboard2",new Dashboard2());
	}
	

}