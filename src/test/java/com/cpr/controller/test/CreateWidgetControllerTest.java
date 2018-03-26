package com.cpr.controller.test;

import java.nio.charset.Charset;

import org.apache.commons.codec.binary.Base64;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.UriComponentsBuilder;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:test_crmxsDashboard.xml")
@WebAppConfiguration
public class CreateWidgetControllerTest {
	private HttpHeaders httpHeaders;
	private HttpEntity<?> entity;
	private UriComponentsBuilder builder;
	private String url;
	@Autowired
	private WebApplicationContext context;

	private MockMvc mvc;

	/*@Before
	public void setup() {
		mvc = MockMvcBuilders.webAppContextSetup(context)
				.apply(springSecurity()) 1
				.build();
	}*/

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
	public void testinitializeForm() {

	}

}
