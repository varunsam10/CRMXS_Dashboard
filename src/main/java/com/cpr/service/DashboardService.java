package com.cpr.service;

import java.util.ArrayList;
import org.springframework.stereotype.Service;
import com.cpr.util.Dashboard;
import com.cpr.util.Widget;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Service
public class DashboardService {

	private Dashboard dashboard;

	public DashboardService() {

		dashboard = new Dashboard();
	}

	public Dashboard getDashboard() {
		return dashboard;
	}

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
