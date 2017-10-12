package com.cpr.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

public class DashboardJSON {
	
	private Dashboard  dashboard;
	
	public DashboardJSON(){
		
		dashboard = new Dashboard();
	}
	
	public String createDashboardJson(){
		
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(dashboard.createDashboard());
		String response = gson.toJson(element);
		return response;
	}

}
