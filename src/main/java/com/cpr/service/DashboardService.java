package com.cpr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.dao.DashboardDAO;

@Service
public class DashboardService {

	@Autowired
	private DashboardDAO dashboardDAO;

	public String getDashboardJson() {
		String response = dashboardDAO.getDashboardJson();
		return response;
	}

}
