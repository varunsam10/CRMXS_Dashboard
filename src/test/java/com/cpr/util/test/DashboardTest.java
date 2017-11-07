package com.cpr.util.test;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import com.cpr.util.Dashboard;
import com.cpr.util.Widget;

import junit.framework.TestCase;

public class DashboardTest extends TestCase{
	private ArrayList<Widget> widgets = new ArrayList<Widget>();
	private Dashboard dashboard = new Dashboard();	
	
	
	@Before
	public void initialize() {

		// dashboardService = new DashboardService();
	}
	@Test
	private void testCreateDashboard(){
		
		assertEquals(2, dashboard.createDashboard().size());
		
	}

}
