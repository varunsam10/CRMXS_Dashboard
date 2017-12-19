package com.cpr.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;


public class DashboardDAO {
	
	public static String getDashboardJson(){
		Gson gson = new Gson();
		java.sql.Connection con = FetchData.getConnection();
		try {
			String sql = "select * from widget";
            Statement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery(sql);
            List<String> widgetContent = new ArrayList<String>();
            //JsonArrayBuilder widgetConfig = Json.createArrayBuilder();
            while(rs.next())            
            {
            	java.sql.Blob widgetBlob = rs.getBlob(2);
            	String str = new String(widgetBlob.getBytes(1l, (int) widgetBlob.length()));
            	//System.out.println(str);
            	//String widgetJson = gson.toJson(str);
            	widgetContent.add(str);
            	//widgetConfig.add(str);
            	//Json.createArrayBuilder()
            	
            }
            //String dashboardJson = widgetConfig.build().toString();
            String dashboardJson = widgetContent.toString();
        	//String dashboardJson = gson.toJson(widgetContent);
        	System.out.println(dashboardJson);
        	return dashboardJson;
        	
		}
		 catch (SQLException e) {
	            e.printStackTrace();
	        }
		return null;
	}
	
}
