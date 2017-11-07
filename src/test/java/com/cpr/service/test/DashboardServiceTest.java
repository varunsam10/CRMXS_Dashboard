package com.cpr.service.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.cpr.service.DashboardService;
import com.cpr.util.Dashboard;

import junit.framework.TestCase;

public class DashboardServiceTest extends TestCase {

	private DashboardService dashboardService = new DashboardService();

	@Before
	public void initialize() {

		// dashboardService = new DashboardService();
	}

	@Test
	public void testCreateDashboardJson() {
		String result = dashboardService.createDashboardJson();
		assertNotNull(dashboardService.createDashboardJson());

	}

}
