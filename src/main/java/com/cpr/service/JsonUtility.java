package com.cpr.service;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.springframework.stereotype.Component;

@Component
public class JsonUtility {

	public String convertObjectToJson(final Object obj) {
		String jsonValue = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			jsonValue = mapper.writeValueAsString(obj);
		} catch (JsonGenerationException jge) {
			System.out.println(jge.getMessage());

		} catch (JsonMappingException jme) {
			System.out.println(jme.getMessage());

		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());

		}
		return jsonValue;
	}

	public String convertObjectToJsonIgnoreNullValues(final Object obj) {
		String jsonValue = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			// mapper.setSerializationInclusion(Inclusion.NON_EMPTY);
			jsonValue = mapper.writeValueAsString(obj);
		} catch (JsonGenerationException jge) {
			System.out.println(jge.getMessage());

		} catch (JsonMappingException jme) {
			System.out.println(jme.getMessage());

		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());

		}
		return jsonValue;
	}

	public Object convertJsonToObject(final String jsonValue, Object objValue) {
		Object obj = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			obj = mapper.readValue(jsonValue, objValue.getClass());
		} catch (JsonGenerationException jge) {
			System.out.println(jge.getMessage());

		} catch (JsonMappingException jme) {
			System.out.println(jme.getMessage());

		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());

		}
		return obj;
	}

	public <T> List<T> convertJsonToObjectList(final String jsonValue, Object objValue) {
		List<T> objs = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			objs = mapper.readValue(jsonValue,
					TypeFactory.defaultInstance().constructCollectionType(List.class, objValue.getClass()));
		} catch (JsonGenerationException jge) {
			System.out.println(jge.getMessage());

		} catch (JsonMappingException jme) {
			System.out.println(jme.getMessage());

		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());

		}
		return objs;
	}
}
