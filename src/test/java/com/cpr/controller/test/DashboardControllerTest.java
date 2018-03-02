package com.cpr.controller.test;

import java.util.List;

import org.junit.Test;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class DashboardControllerTest {
	
	@Test(timeout=3000)
	public void testChangeGraphForWidgets(){
		
	RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/changeGraph", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testGetWidgetBoards() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/getWidgetBoards", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testUpdateWidgetDetails() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/updateWidget", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testDeleteWidgetFromDashboard() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/deleteWidget", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testAddWidgetToDashboard() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/addWidget", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testEditWidgetTitleForWidget() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/editWidget", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
	@Test(timeout=3000)
	public void testDownloadWidgetDataOfWidget() {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity responseEntity = restTemplate.exchange("http://localhost:8080/Crmxs-Dashboard/downloadData", HttpMethod.GET,null, new ParameterizedTypeReference<List<String>>() {
		});
	}
}
