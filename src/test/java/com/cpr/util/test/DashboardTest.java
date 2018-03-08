package com.cpr.util.test;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cpr.util.Dashboard;
import com.cpr.util.Widget;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class DashboardTest {

	@Before
	public void initialize() {

	}

	@Test
	private void testCreateDashboard() {

	}

}
