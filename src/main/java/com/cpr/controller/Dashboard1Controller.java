package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard1;


@Controller
@SessionAttributes("Dashboard1")
public class Dashboard1Controller {
	
	@RequestMapping("/dashboard1")
	public ModelAndView initializeForm()
	{
		Dashboard1 dashboard1=new Dashboard1();
		System.out.println("inside dashboard1!!");
		return new ModelAndView("dashboard1/dashboard1","Dashboard1",new Dashboard1());
	}
	@RequestMapping("/user")
	public ModelAndView initializeFormUser()
	{
		Dashboard1 dashboard1=new Dashboard1();
		return new ModelAndView("dashboard1/user","Dashboard1",new Dashboard1());
	}
	@RequestMapping("/dynamic")
	public ModelAndView initializeFormDynamic()
	{
		Dashboard1 dashboard1=new Dashboard1();
		return new ModelAndView("dashboard1/dynamic","Dashboard1",new Dashboard1());
	}

}
