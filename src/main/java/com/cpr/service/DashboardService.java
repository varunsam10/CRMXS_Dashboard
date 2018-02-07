package com.cpr.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.model.DashboardDAO;
import com.cpr.util.Dashboard;
import com.cpr.util.Widget;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Service
public class DashboardService {

	@Autowired
	private Dashboard dashboard;

	@Autowired
	private DashboardDAO dashboardDAO;

	public String changeGraphForId(String widgetId) {

		String response = dashboardDAO.changeGraph(widgetId);
		return response;
	}

	public String getWidgetBoards(String dashboardId) {

		String response = dashboardDAO.getWidgetForDashboard(dashboardId);
		return response;
	}

	public String updateWidgetById(String widgetId) {

		String response = dashboardDAO.updateWidget(widgetId);
		return response;
	}

	public String deleteWidgetById(String widgetId) {

		String response = dashboardDAO.deleteWidget(widgetId);
		return response;
	}

	public String addWidgetById(String widgetId) {

		String response = dashboardDAO.addWidget(widgetId);
		return response;
	}

	public String editWidgetTitleById(String widgetId) {

		String response = dashboardDAO.editWidgetTitle(widgetId);
		return response;
	}
	public String downloadWidgetDataofWidget(String widgetId) {
		String response = dashboardDAO.downloadWidgetData(widgetId);
		return response;
	}
	/*
	 * public Dashboard getDashboard() { return dashboard; }
	 */

	public void setDashboard(Dashboard dashboard) {
		this.dashboard = dashboard;
	}

	public String createDashboardJson() {
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(dashboard.createDashboard());
		String response = gson.toJson(element);
		return response;
	}

	public String createDashboardJson(ArrayList<Widget> widgets) {
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(widgets);
		String response = gson.toJson(element);
		return response;
	}

}
