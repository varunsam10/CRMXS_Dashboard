package com.cpr.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.model.DashboardDAO;
import com.cpr.util.Widget;

@Service
public class Dashboard2Creation {
	
	@Autowired
	private DashboardService dashboardService;
	
	@Autowired 
	private DashboardDAO dashboardDAO;
	
	public String createDashboard2JSON(){
			
		ArrayList<Widget> widgets = dashboardService.getDashboard().getWidgets();
		return dashboardService.createDashboardJSON(widgets);
		
	}

}
