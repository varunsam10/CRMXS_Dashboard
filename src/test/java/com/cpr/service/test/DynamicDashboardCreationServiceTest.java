package com.cpr.service.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cpr.service.DynamicDashboardCreationService;

import junit.framework.Assert;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class DynamicDashboardCreationServiceTest {
	@Autowired
	private DynamicDashboardCreationService dynamicDashboardService;
	
	@Before
	public void setup(){
		
	}
	
	@Test
	public void testcreateDashboard2(){
		assertEquals("Success", dynamicDashboardService.createDashboard2());
	}
	
	@After
	public void tearDown()
	{
		//dynamicDashboardService = null;
	}

}
