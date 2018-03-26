package com.cpr.service.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cpr.service.CustomDashboardService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class CustomDashboardServiceTest{
	@Autowired
	private CustomDashboardService customDashboardService;
	private String dashboardId;
	private String widgetId;

	@Before
	public void setup() {
		dashboardId = "dd01";
		widgetId = "w001";
	}

	@Test
	public void testCreateDashboardJson() {
		String result = customDashboardService.createDashboardJson();
		assertNotNull(result);
	}

	@Test
	public void testchangeGraphForId() {
		assertEquals("Success", customDashboardService.changeGraphForId(widgetId));
	}

	@Test
	public void testgetWidgetBoards() {
		assertEquals("Success", customDashboardService.getWidgetBoards(dashboardId));
	}

	@Test
	public void testaddWidgetById() {
		assertEquals("Success", customDashboardService.addWidgetById(widgetId));
	}

	@Test
	public void testupdateWidgetById() {
		assertEquals("Success", customDashboardService.updateWidgetById(widgetId));
	}

	@Test
	public void testeditWidgetTitleById() {
		assertEquals("Success", customDashboardService.editWidgetTitleById(widgetId));
	}

	@Test
	public void testdownloadWidgetDataofWidget() {
		assertEquals("Success", customDashboardService.downloadWidgetDataofWidget(widgetId));
	}

	@After
	public void tearDown() {
		dashboardId = null;
		widgetId = null;
	}

}
