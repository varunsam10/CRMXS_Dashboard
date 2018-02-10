package com.cpr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpr.dao.DashboardDAO;
import com.cpr.model.Dashboard3;
import com.cpr.service.DynamicDashboardCreationService;
import com.cpr.service.DynamicDashboardService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Controller
@SessionAttributes("/dynamicDashboard")
public class DynamicDashboardController {
	@Autowired
	private DynamicDashboardService dynamicDashboardService;
	@Autowired
	private DynamicDashboardCreationService dashboardCreationService;
	@Autowired
	private DashboardDAO dashboardDAO;
	@RequestMapping("/dynamic/create")
	public ResponseEntity createInitialDynamicBoard() {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardCreationService.createDynamicDashboard();
		if (null != response) {
			return new ResponseEntity(HttpStatus.OK);
		} else {
			return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	@RequestMapping("/dynamic/delete")
	public ResponseEntity deleteInitialDynamicBoard() {
		String response = dashboardCreationService.deleteDynamicDashboard();
		if (null != response && response == "Success") {
			return new ResponseEntity(HttpStatus.OK);
		} else {
			return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	@RequestMapping(value = "/getDynamicWidgetNames", method = RequestMethod.GET)
	@ResponseBody
	public String getDynamicWidgetNames() {
		String dashboardJsonResponse = dynamicDashboardService.fetchDashboard2WidgetsNames("dd001");
		System.out.println("The response is" + dashboardJsonResponse);
		return dashboardJsonResponse;
	}
	@RequestMapping(value = "/getDynamicWidgets", method = RequestMethod.GET)
	@ResponseBody
	public String getDynamicWidgets() {
		String dashboardJsonResponse = dynamicDashboardService.fetchDashboard2Widgets("dd001");
		System.out.println("The response is" + dashboardJsonResponse);
		return dashboardJsonResponse;
	}
	@RequestMapping(value ="/getWidgetDefinition", method = RequestMethod.GET)
	@ResponseBody
	public String getWidgetDefinition(@RequestParam("widgetName") String widgetName) {
		String widgetDefinitionJsonResponse = dynamicDashboardService.getWidgetDefinition(widgetName);
		return widgetDefinitionJsonResponse;
	}
}
