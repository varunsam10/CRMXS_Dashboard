package com.cpr.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cpr.model.Dashboard3;
import com.cpr.model.DashboardDAO;
import com.cpr.model.FilterData;
import com.cpr.service.DashboardService;

@Controller
@SessionAttributes("/dashboard6")
public class Dashboard6Controller {
	
	@Autowired
	private DashboardDAO dashboardDAO;
	
	@Autowired 
	private FilterData filterData;

	@RequestMapping("/drawboard1")
	public ModelAndView initializeForm() {
		Dashboard3 dashboard3 = new Dashboard3();
		//System.out.println("inside dashboard 6!!");
		//DashboardDAO.getDashboardJson();
		return new ModelAndView("dashboard6/drawboard1", "Dashboard3", new Dashboard3());
	}

	@RequestMapping(value = "/getWidgets", method = RequestMethod.GET)
	@ResponseBody
	public String getWidgets() {
		//DashboardService dashboardJSON = new DashboardService();
		//System.out.println(dashboardJSON.createDashboardJson());
		//return dashboardJSON.createDashboardJson();
		String response = dashboardDAO.getDashboardJson();
		System.out.println("The response is"+response);
		return response;
	}
	
	@RequestMapping(value = "/applyFilter", method = RequestMethod.POST,consumes=MediaType.APPLICATION_JSON_VALUE)
	//@RequestMapping(value = "/applyFilter", method = RequestMethod.POST)
	@ResponseBody
	public String applyFilter(@RequestBody FilterData filterdata){
		System.out.println("the filtered data widgetID:"+filterdata.getWidgetId());
		return dashboardDAO.getFilteredWidgetConfig();
	}	
	@RequestMapping(value = "/getWidgetsInteract", method = RequestMethod.GET)
	@ResponseBody
	public String getInteractiveWidgets() {
		DashboardService dashboardJSON = new DashboardService();
		//System.out.println(dashboardJSON.createDashboardJson());
		return dashboardJSON.createDashboardJson();
		//return DashboardDAO.getDashboardJson();
	}
	
	@RequestMapping("/drawboard2")
	public ModelAndView initializeFormDrawboard2() {
		Dashboard3 dashboard3 = new Dashboard3();
		return new ModelAndView("dashboard6/drawboard2", "Dashboard3", new Dashboard3());
	}

	@RequestMapping("/drawboard3")
	public String initializeFormDrawboard3() {
		// Click for graph details
		return "dashboard6/drawboard3";
	}

	@RequestMapping("/drawboard4")
	public String initializeFormDrawboard4() {
		// Click for graph type
		return "dashboard6/drawboard4";
	}	
	@RequestMapping("/drawboard5")
	public String initializeFormDrawboard5() {
		// Click for graph type
		return "dashboard6/drawboard5";
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