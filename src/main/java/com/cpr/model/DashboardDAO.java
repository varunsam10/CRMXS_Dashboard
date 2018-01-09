package com.cpr.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.google.gson.Gson;


public class DashboardDAO {
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
    
    public DataSource getDataSource() {
		return dataSource;
	}
	public String getDashboardJson(){
		Gson gson = new Gson();
		//java.sql.Connection con = FetchData.getConnection();
		try {
			String sql = "select * from widget";
           // Statement statement = con.prepareStatement(sql);
            //ResultSet rs = statement.executeQuery(sql);
            List<String> widgetContent = new ArrayList<String>();
            //JsonArrayBuilder widgetConfig = Json.createArrayBuilder();
          /*  while(rs.next())            
            {
            	java.sql.Blob widgetBlob = rs.getBlob(2);
            	String str = new String(widgetBlob.getBytes(1l, (int) widgetBlob.length()));
            	//System.out.println(str);
            	//String widgetJson = gson.toJson(str);
            	widgetContent.add(str);
            	//widgetConfig.add(str);
            	//Json.createArrayBuilder()
            	
            }*/
            //String dashboardJson = widgetConfig.build().toString();
            
        	JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
            
                 
            String dashboardJson = widgetContent.toString();
        	//String dashboardJson = gson.toJson(widgetContent);
        	System.out.println(dashboardJson);
        	return dashboardJson;
        	
		}
		catch (Exception e) {
	            e.printStackTrace();
	    }
		return null;
	}
	public String getFilteredWidgetConfig(){
		
		return "Hello world";
	}
}
