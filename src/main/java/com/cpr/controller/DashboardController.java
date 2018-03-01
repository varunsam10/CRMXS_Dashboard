package com.cpr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cpr.model.Dashboard3;
import com.cpr.service.CustomDashboardService;

@Controller
@SessionAttributes("/mainDashboard")
public class DashboardController {

	@Autowired
	private CustomDashboardService dashboardService;

	@RequestMapping("/changeGraph")
	public ResponseEntity changeGraphForWidgets(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.changeGraphForId(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/getWidgetBoards")
	public ResponseEntity getWidgetBoards(@RequestBody String dashboardId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.getWidgetBoards(dashboardId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/updateWidget")
	public ResponseEntity updateWidgetDetails(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.addWidgetById(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/deleteWidget")
	public ResponseEntity deleteWidgetFromDashboard(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.deleteWidgetById(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/addWidget")
	public ResponseEntity addWidgetToDashboard(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.addWidgetById(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/editWidget")
	public ResponseEntity editWidgetTitleForWidget(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.editWidgetTitleById(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/downloadData")
	public ResponseEntity downloadWidgetDataOfWidget(@RequestBody String widgetId) {
		Dashboard3 dashboard3 = new Dashboard3();
		String response = dashboardService.downloadWidgetDataofWidget(widgetId);
		return new ResponseEntity(HttpStatus.OK);
	}

}
