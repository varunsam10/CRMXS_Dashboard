package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;;


@Controller
@SessionAttributes("/dashboard6")
public class Dashboard6Controller {
	
	@RequestMapping("/dashboard6")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3=new Dashboard3();
		System.out.println("inside dashboard 6!!");
		return new ModelAndView("dashboard6/dashboard6","Dashboard3",new Dashboard3());
	}
	

}