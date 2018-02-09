package com.cpr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.Dao.DashboardDAO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Service
public class DynamicDashboardService {
	@Autowired
	private DashboardDAO dashboardDAO;
	public String fetchDashboard2Widgets(String dashboardID) {

		String dashboardJson = dashboardDAO.getDynamicDashboardJson(dashboardID);
		return dashboardJson;
	}
	public String fetchDashboard2WidgetsNames(String dashboardID) {

		List<String> dashboardWidgetNamesJson = dashboardDAO.getDynamicDashboardWidgetNamesJson(dashboardID);
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(dashboardWidgetNamesJson);
		String response = gson.toJson(element);
		return response;
	}
	
}
