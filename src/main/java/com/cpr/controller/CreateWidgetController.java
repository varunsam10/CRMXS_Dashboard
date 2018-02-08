package com.cpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;

@Controller
@SessionAttributes("/createWidget")
public class CreateWidgetController {

	@RequestMapping("/createWidget")
	public ModelAndView initializeForm() {
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("createWidget/createWidget", "Dashboard3", new Dashboard3());
	}

	@RequestMapping("/configureWidget")
	public ModelAndView initializeForm2() {
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("createWidget/configureWidget", "Dashboard3", new Dashboard3());
	}

}