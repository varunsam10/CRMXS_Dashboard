package com.cpr.service.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cpr.model.FilterData;
import com.cpr.service.ApplyFilterService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class ApplyFilterServiceTest {
	private FilterData filterData;

	@Before
	public void setup() {
		Gson gson = new Gson();
		JsonArray list = new JsonArray();
		list.add("US");
		list.add("UK");
		JsonObject filterdata = new JsonObject();
		filterdata.addProperty("fromDate", "02/01/2014");
		filterdata.addProperty("toDate", "04/02/2015");
		filterdata.addProperty("widgetId", "wd001");
		filterdata.add("countries", list);
		filterData = gson.fromJson(filterdata.toString(), FilterData.class);
	}

	@Autowired
	private ApplyFilterService applyFilterService;

	@Test
	public void testGetDashboardJson() {
		String result = applyFilterService.getDateFilteredData(filterData);
		assertNotNull(result);
	}

}
