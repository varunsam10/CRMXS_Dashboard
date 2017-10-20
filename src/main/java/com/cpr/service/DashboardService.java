package com.cpr.service;

import com.cpr.util.Dashboard;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

public class DashboardService {
	
	private Dashboard  dashboard;
	
	public DashboardService(){
		
		dashboard = new Dashboard();
	}
	
	public String createDashboardJson(){
		
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(dashboard.createDashboard());
		String response = gson.toJson(element);
		return response;
	}

}
