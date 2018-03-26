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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
public class DashboardControllerTest {
	private HttpHeaders httpHeaders;
	private HttpEntity<?> entity;
	private UriComponentsBuilder builder;
	private String url;

	@Before
	public void Setup() {
		httpHeaders = createHeaders("sree", "secret");
		entity = new HttpEntity<>(httpHeaders);

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

	@Test(timeout = 3000)
	public void testChangeGraphForWidgets() {
		url = "http://localhost:8080/Crmxs-Dashboard/changeGraph.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}

	@Test(timeout = 3000)
	public void testGetWidgetBoards() {
		url = "http://localhost:8080/Crmxs-Dashboard/getWidgetBoards.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}

	@Test(timeout = 3000)
	public void testUpdateWidgetDetails() {
		url = "http://localhost:8080/Crmxs-Dashboard/updateWidget.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> responseEntity = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET,
				entity, String.class);
	}

	/*
	 * @Test(timeout=3000) public void testDeleteWidgetFromDashboard() {
	 * RestTemplate restTemplate = new RestTemplate(); ResponseEntity
	 * responseEntity = restTemplate.exchange(
	 * "http://localhost:8080/Crmxs-Dashboard/deleteWidget",
	 * HttpMethod.GET,httpHeaders, new
	 * ParameterizedTypeReference<List<String>>() { }); }
	 */
	@Test(timeout = 3000)
	public void testDeleteWidgetFromDashboard() {
		url = "http://localhost:8080/Crmxs-Dashboard/deleteWidget.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);
	}

	@Test(timeout = 3000)
	public void testAddWidgetToDashboard() {
		url = "http://localhost:8080/Crmxs-Dashboard/addWidget.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);

	}

	@Test(timeout = 3000)
	public void testEditWidgetTitleForWidget() {
		url = "http://localhost:8080/Crmxs-Dashboard/editWidget.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);

	}

	@Test(timeout = 3000)
	public void testDownloadWidgetDataOfWidget() {
		url = "http://localhost:8080/Crmxs-Dashboard/downloadData.html";
		builder = UriComponentsBuilder.fromHttpUrl(url);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> response = restTemplate.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity,
				String.class);

	}
}
