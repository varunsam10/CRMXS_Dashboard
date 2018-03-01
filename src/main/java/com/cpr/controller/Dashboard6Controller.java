package com.cpr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.dao.DashboardDAO;
import com.cpr.model.Dashboard3;
import com.cpr.model.FilterData;
import com.cpr.service.CustomDashboardService;
import com.cpr.service.DynamicDashboardCreationService;
import com.google.gson.Gson;

@Controller
@SessionAttributes("/dashboard6")
public class Dashboard6Controller {
	@Autowired
	private DynamicDashboardCreationService dashboardCreationService;
	@Autowired
	private DashboardDAO dashboardDAO;
	@RequestMapping("/drawboard1")
	public ModelAndView initializeForm() {
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("dashboard6/drawboard1", "Dashboard3", new Dashboard3());
	}
	@RequestMapping("/index")
	public ModelAndView initializeMainForm() {
		Dashboard3 dashboard3 = new Dashboard3();
		// DashboardDAO.getDashboardJson();
		return new ModelAndView("index", "Dashboard3", new Dashboard3());
	}
	@RequestMapping("/drawboard2")
	public ModelAndView initializeFormDrawboard2() {
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("dashboard6/drawboard2", "Dashboard3", new Dashboard3());
	}
	@RequestMapping(value = "/getWidgets", method = RequestMethod.GET)
	@ResponseBody
	public String getWidgets() {
		String response = dashboardDAO.getDashboardJson();
		System.out.println("The response is" + response);
		return response;
	}
	@RequestMapping(value = "/applyFilters", method = RequestMethod.POST)
	@ResponseBody
	public String applyFilter(@RequestBody String filterdata) {
		Gson gson = new Gson();
		FilterData filterData = gson.fromJson(filterdata, FilterData.class);
		String filteredWidgetData = dashboardDAO.getDateFilteredData(filterData);
		return filteredWidgetData;
	}
	@RequestMapping(value = "/getWidgetsInteract", method = RequestMethod.GET)
	@ResponseBody
	public String getInteractiveWidgets() {
		CustomDashboardService dashboardJSON = new CustomDashboardService();
		return dashboardJSON.createDashboardJson();

	}
	@RequestMapping("/drawboard3")
	public String initializeFormDrawboard3() {

		return "dashboard6/drawboard3";
	}
	@RequestMapping("/drawboard4")
	public String initializeFormDrawboard4() {

		return "dashboard6/drawboard4";
	}
	@RequestMapping("/drawboard5")
	public String initializeFormDrawboard5() {

		return "dashboard6/drawboard5";
	}
	@RequestMapping("/drawboard6")
	public String initializeFormDrawboard6() {

		return "dashboard6/drawboard6";
	}
	@RequestMapping("/graphDetails")
	public String graphDetailsPage() {

		return "dashboard6/graphDetails";
	}
	@RequestMapping("/widgetClick")
	public String widgetClickDrawboard3() {
		Dashboard3 widgetClick = new Dashboard3();
		return "forward:/graphDetails.html";
	}
}