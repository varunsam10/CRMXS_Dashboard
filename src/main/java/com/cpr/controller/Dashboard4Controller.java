package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;


@Controller
@SessionAttributes("/dashboard4")
public class Dashboard4Controller {
	
	@RequestMapping("/dashboard4")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3=new Dashboard3();
		System.out.println("inside dashboard 4!!");
		return new ModelAndView("dashboard4/dashboard4","Dashboard3",new Dashboard3());
	}
	

}