package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;
import com.cpr.util.DashboardJSON;


@Controller
@SessionAttributes("/dashboard6")
public class Dashboard6Controller {
	
	@RequestMapping("/dashboard6")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3 = new Dashboard3();
		System.out.println("inside dashboard 6!!");
		return new ModelAndView("dashboard6/dashboard6","Dashboard3",new Dashboard3());
	}
	
	@RequestMapping(value="/getWidgets", method=RequestMethod.GET)
	@ResponseBody
	public String getWidgets()
	{
		DashboardJSON dashboardJSON =new DashboardJSON();		
		return dashboardJSON.createDashboardJson();
	}
	
	

}