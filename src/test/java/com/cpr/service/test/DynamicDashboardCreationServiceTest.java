package com.cpr.service.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.cpr.service.DynamicDashboardCreationService;

import junit.framework.Assert;

public class DynamicDashboardCreationServiceTest {
	
	private DynamicDashboardCreationService dynamicDashboardService;
	
	@Before
	public void setup(){
		dynamicDashboardService =  new DynamicDashboardCreationService();
	}
	
	@Test
	public void testcreateDashboard2(){
		assertEquals("Success", dynamicDashboardService.createDashboard2());
	}
	
	@After
	public void tearDown()
	{
		dynamicDashboardService = null;
	}

}
