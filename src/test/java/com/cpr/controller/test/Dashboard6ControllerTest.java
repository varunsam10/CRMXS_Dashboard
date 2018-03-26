package com.cpr.controller.test;

import java.nio.charset.Charset;

import org.apache.commons.codec.binary.Base64;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class Dashboard6ControllerTest {
	private HttpHeaders httpHeaders;
	private HttpEntity<?> entity;
	private UriComponentsBuilder builder;
	private String url;
	private String filterData;
	@Before
	public void Setup() {
		httpHeaders = createHeaders("sree", "secret");
		entity = new HttpEntity<>(httpHeaders);
		
		Gson gson = new Gson();
		JsonArray list = new JsonArray();
		list.add("US");
		list.add("UK");
		JsonObject filterdata = new JsonObject();
		filterdata.addProperty("fromDate", "02/01/2014");
		filterdata.addProperty("toDate", "04/02/2015");
		filterdata.addProperty("widgetId", "wd001");
		filterdata.add("countries", list);
		filterData = filterdata.toString();
	}
	public HttpHeaders createHeaders(String username, String password) {
		final String user = username;
		final String passwd = password;
		return new HttpHeaders() {
			{
				String auth = user + ":" + passwd;
				byte[] encodedAuth = Base64.encodeBase64(auth.getBytes(Charset.forName("US-ASCII")));
				String authHeader = "Basic " + new String(encodedAuth);
				set("Authorization", authHeader);
			}
		};
	}
	@Test
	public void testgetWidgets() {
		url = "http://localhost:8080/Crmxs-Dashboard/getWidgets.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	/*@Test
	public void testapplyFilter() {
		url = "http://localhost:8080/Crmxs-Dashboard/applyFilters.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		builder.queryParam("filterData", filterData);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}*/
	@Test
	public void testgetInteractiveWidgets() {
		url = "http://localhost:8080/Crmxs-Dashboard/getWidgetsInteract.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testinitializeFormDrawboard3() {
		url = "http://localhost:8080/Crmxs-Dashboard/drawboard3.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testinitializeFormDrawboard4() {
		url = "http://localhost:8080/Crmxs-Dashboard/drawboard4.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testinitializeFormDrawboard5() {
		url = "http://localhost:8080/Crmxs-Dashboard/drawboard5.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testinitializeFormDrawboard6() {
		url = "http://localhost:8080/Crmxs-Dashboard/drawboard6.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testgraphDetailsPage() {
		url = "http://localhost:8080/Crmxs-Dashboard/graphDetails.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
	@Test
	public void testwidgetClickDrawboard3() {
		url = "http://localhost:8080/Crmxs-Dashboard/widgetClick.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}
}
