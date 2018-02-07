package com.cpr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpr.Dao.DashboardDAO;
import com.cpr.service.DynamicDashboardService;

@Controller
@SessionAttributes("/dynamicDashboard")
public class DynamicDashboardController {
	
	@Autowired
	private DynamicDashboardService dynamicDashboardService;
	
	@Autowired
	private DashboardDAO dashboardDAO;
	
	@RequestMapping(value = "/getDynamicWidgets", method = RequestMethod.GET)
	@ResponseBody
	public String getDynamicWidgets() {
		// DashboardService dashboardJSON = new DashboardService();
		// return dashboardJSON.createDashboardJson();
		String dashboardJsonResponse = dynamicDashboardService.fetchDashboard2Widgets("dd001");		
		//String response = dashboardDAO.getDashboardJson();
		System.out.println("The response is" + dashboardJsonResponse);
		return dashboardJsonResponse;
	}

}
