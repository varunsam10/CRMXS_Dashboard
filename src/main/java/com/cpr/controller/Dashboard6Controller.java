package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;
import com.cpr.service.DashboardService;


@Controller
@SessionAttributes("/dashboard6")
public class Dashboard6Controller {
	
	@RequestMapping("/drawboard1")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3 = new Dashboard3();
		System.out.println("inside dashboard 6!!");
		return new ModelAndView("dashboard6/drawboard1","Dashboard3",new Dashboard3());
	}
	
	@RequestMapping(value="/getWidgets", method=RequestMethod.GET)
	@ResponseBody
	public String getWidgets()
	{
		DashboardService dashboardJSON =new DashboardService();		
		return dashboardJSON.createDashboardJson();
	}
	
	@RequestMapping("/drawboard2")
	public ModelAndView initializeFormDrawboard2()
	{
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("dashboard6/drawboard2","Dashboard3",new Dashboard3());
	}
	@RequestMapping("/drawboard3")
	public ModelAndView initializeFormDrawboard3()
	{
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("dashboard6/drawboard3","Dashboard3",new Dashboard3());
	}
	
	
}