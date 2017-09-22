package com.cpr.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.HttpRequestHandler;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

//@WebServlet("/PopulateTable")
public class PopulateTable {
	private static final long serialVersionUID = 1L;

    public PopulateTable() {
        
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		ArrayList<Countries> country=new ArrayList<Countries>();
		country=FetchData.getAllCountries();
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(country, new TypeToken<List<Countries>>() {}.getType());

		JsonArray jsonArray = element.getAsJsonArray();
		response.setContentType("application/json");
		response.getWriter().print(jsonArray);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

/*	public void handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Countries> country=new ArrayList<Countries>();
		country=FetchData.getAllCountries();
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(country, new TypeToken<List<Countries>>() {}.getType());

		JsonArray jsonArray = element.getAsJsonArray();
		arg1.setContentType("application/json");
		arg1.getWriter().print(jsonArray);
		
	}*/

}
