package com.cpr.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	
	public void getDateFilteredData(FilterData filterData){

		String sql = null;
		Date fromDate = null;
		Date toDate = null;
		if(null!=filterData.getFromDate() && null!= filterData.getToDate() && (filterData.getCountries().length == 0)){
			fromDate = Date.valueOf(filterData.getFromDate());
			toDate  = Date.valueOf(filterData.getToDate());
			sql = "SELECT * FROM crmxsdashboard.redemption where date >= ? and date<= ?";
		}else{
			
		}
			
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, fromDate, toDate);
		System.out.println(rows.size());
		for(Map<String, Object> rs : rows) {
			System.out.println("here1");
			System.out.println("Revenue-> " + rs.get("revenue").toString() + " Date->" + rs.get("date").toString());
			
		}
	}
	
	public String getFilteredWidgetConfig(){
		
		return "Hello world";
	}
}
