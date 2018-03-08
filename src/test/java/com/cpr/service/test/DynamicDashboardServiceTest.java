package com.cpr.service.test;

import static org.junit.Assert.assertNotNull;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cpr.service.DynamicDashboardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class DynamicDashboardServiceTest {

	@Autowired
	private DynamicDashboardService dynamicDashboardService;

	@Before
	public void setup() {

	}

	@Test
	public void testfetchDashboard2Widgets() {
		String response = dynamicDashboardService.fetchDashboard2Widgets("dd01");
		assertNotNull(response);
	}

	@After
	public void tearDown() {

	}
}
