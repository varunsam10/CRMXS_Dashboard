package com.cpr.service.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.cpr.service.CustomDashboardService;
import com.cpr.util.Dashboard;

import junit.framework.TestCase;

public class CustomDashboardServiceTest extends TestCase {

	private CustomDashboardService customDashboardService;
	private String dashboardId;
	private String widgetId;

	@Before
	public void setup() {

		customDashboardService =  new CustomDashboardService();
		dashboardId = "dd01";
		widgetId = "w001";
	}

	@Test
	public void testCreateDashboardJson() {
		String result = customDashboardService.createDashboardJson();
		assertNotNull(customDashboardService.createDashboardJson());
	}
	
	@Test
	public void testchangeGraphForId(){
		assertEquals("Success", customDashboardService.changeGraphForId(widgetId));
	}
	
	@Test
	public void testgetWidgetBoards(){
		assertEquals("Success", customDashboardService.getWidgetBoards(dashboardId));
	}
	
	@Test
	public void testaddWidgetById(){
		assertEquals("Success", customDashboardService.addWidgetById(widgetId));
	}
	
	@Test
	public void testupdateWidgetById(){
		assertEquals("Success", customDashboardService.updateWidgetById(widgetId));
	}
	
	@Test
	public void testeditWidgetTitleById(){
		assertEquals("Success", customDashboardService.editWidgetTitleById(widgetId));
	}
	
	@Test
	public void testdownloadWidgetDataofWidget(){
		assertEquals("Success", customDashboardService.downloadWidgetDataofWidget(widgetId));
	}
	
	@Test
	public void testdeleteWidgetById(){
		assertEquals("Success", customDashboardService.deleteWidgetById(widgetId));
	}
	
	
	
	@After
	public void tearDown(){
		customDashboardService = null;
		dashboardId = null;
		widgetId = null;
	}
	
	
	
	

}
