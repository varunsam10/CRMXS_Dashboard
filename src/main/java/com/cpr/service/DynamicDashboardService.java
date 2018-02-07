package com.cpr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.model.DashboardDAO;

@Service
public class DynamicDashboardService {

	@Autowired
	private DashboardDAO dashboardDAO;

	public String fetchDashboard2Widgets(String dashboardID) {

		String dashboardJson = dashboardDAO.getDynamicDashboardJson(dashboardID);
		return dashboardJson;
	}

}
