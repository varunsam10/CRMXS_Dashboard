package com.cpr.service.test;

import org.junit.Before;
import org.junit.Test;

import junit.framework.TestCase;
import static org.junit.Assert.*;

import org.junit.After;

import com.cpr.service.DynamicDashboardService;

public class DynamicDashboardServiceTest {

	private DynamicDashboardService dynamicDashboardService;
	
	@Before
	public void setup(){
		 dynamicDashboardService = new DynamicDashboardService();
	}
	
	@Test
	public void testfetchDashboard2Widgets(){
		String response = dynamicDashboardService.fetchDashboard2Widgets("dd01");
		assertNotNull(dynamicDashboardService.fetchDashboard2Widgets("dd01"));
	}
	
	@After
	public void tearDown(){
		dynamicDashboardService = null;
	}
}
