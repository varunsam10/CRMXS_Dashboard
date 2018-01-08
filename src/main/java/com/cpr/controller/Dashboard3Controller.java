package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.cpr.model.Dashboard3;;


@Controller
@SessionAttributes("/dashboard3")
public class Dashboard3Controller {
	
	@RequestMapping("/dashboard3")
	public ModelAndView initializeForm()
	{
		Dashboard3 dashboard3=new Dashboard3();
	//	System.out.println("inside dashboard 3!!");
		return new ModelAndView("dashboard3/dashboard3","Dashboard3",new Dashboard3());
	}
	

}