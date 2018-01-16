package com.cpr.model;

import java.sql.Date;
import java.sql.Array;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.cpr.util.AxisLayout;
import com.cpr.util.TitleFont;
import com.cpr.util.WidgetConfig;
import com.cpr.util.WidgetContent;
import com.cpr.util.WidgetData;
import com.cpr.util.WidgetLayout;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;


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
	
	public String getDateFilteredData(FilterData filterData){
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = null;
		Date fromDate = null;
		Date toDate = null;	
		String[] countryInFilter = null;
		List<Map<String, Object>> rows = null;
		//String[] countriesInFilter = null;
		Integer resultSize =0;
		Map<String,List<GraphParams>>countryMap =new HashMap<String,List<GraphParams>>();
		if(null!=filterData.getFromDate() && null!= filterData.getToDate() && (filterData.getCountries().length != 0)){
			
			try{
						SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
						java.util.Date parsedFrom = format.parse(filterData.getFromDate());
						java.util.Date parsedTo = format.parse(filterData.getToDate());
						System.out.println(parsedFrom + "\t" + parsedTo);
						fromDate = new Date(parsedFrom.getTime());
						toDate  = new Date(parsedTo.getTime());
						System.out.println(fromDate + "\t" + toDate);
			}catch(ParseException ex){
				
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				//e.printStackTrace();
			}	
			
			countryInFilter = filterData.getCountries();
			NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(dataSource);
			
			System.out.println(fromDate + "\t" + toDate + "\t" + countryInFilter);
			if(filterData.getCountries().length == 0)
			{
				sql = "SELECT * FROM crmxsdashboard.redemption where date >= ? and date <= ?  order by date asc";
				rows = jdbcTemplate.queryForList(sql, fromDate, toDate);
			}
				
			else if(filterData.getCountries().length >=1)
			{
				sql = "SELECT * FROM crmxsdashboard.redemption where date >= (:fromDate) and date <= (:toDate) and country IN (:countries) order by date asc";
				List<String> countriesList = Arrays.asList(countryInFilter);
				for(String c: countriesList){
					System.out.println(c);
				}
				MapSqlParameterSource parameters = new MapSqlParameterSource();
				parameters.addValue("countries", countriesList);
				parameters.addValue("fromDate", fromDate);
				parameters.addValue("toDate", toDate);
				
				//Map<String, List> paramMap = Collections.singletonMap("countries", countriesList);
				
				//Map<String, Date> paramMap2 = Collections.singletonMap("fromDate", fromDate);
				//Map<String, Date> paramMap3 = Collections.singletonMap("toDate", toDate);
				
				rows = template.queryForList(sql, parameters);
				//rows = jdbcTemplate.queryForList(sql, fromDate, toDate,paramMap);
			}
				
				
			//List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, fromDate, toDate,countryInFilter);
			System.out.println(rows.size());
			resultSize = rows.size();
			
			for(Map<String, Object> rs : rows) {				
				GraphParams graphParam = new GraphParams();
				graphParam.setyValue(rs.get("revenue").toString());
				graphParam.setxValue(rs.get("date").toString());
				String country = rs.get("country").toString();
				System.out.println(country);
				if(countryMap.isEmpty()){
					List<GraphParams> graphParamsList = new ArrayList<GraphParams>();
					graphParamsList.add(graphParam);       
					
					countryMap.put(country,graphParamsList);
				}else{				
					if(countryMap.containsKey(country)){
						countryMap.get(country).add(graphParam);
					}					
				}											
			}			
		}else{
			
		}		
		String widgetContentConfig = getFilteredWidgetConfig(resultSize,countryMap);	
		return widgetContentConfig;
	}
	
	public String getFilteredWidgetConfig(Integer resultSize,Map<String,List<GraphParams>> countryMap){
		ArrayList<WidgetData> widgetsDataList = new ArrayList<WidgetData>();
		Object[] xaxis =  new Object[resultSize]; 
		Object[] yaxis  =  new Object[resultSize];
		Set<String> keys = countryMap.keySet();
		int i=0;
		for(String country : keys){
			List<GraphParams> graphParamList = countryMap.get(country);
			for(int j=0;j<graphParamList.size();j++){
				xaxis[j] = graphParamList.get(j).getxValue();
				yaxis[j] = graphParamList.get(j).getyValue();
			}
			WidgetData trace = new WidgetData(xaxis, yaxis, country, "scatter");
			i++;
			widgetsDataList.add(trace);
		}
		
		
		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);

		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);

		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout, true);

		String[] modeBarButtonsToRemove = { "sendDataToCloud" };
		WidgetConfig widgetConfig = new WidgetConfig(modeBarButtonsToRemove);
		
		WidgetContent widgetContent = new WidgetContent(widgetsDataList, widgetLayout, widgetConfig);
		
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(widgetContent);
		String response = gson.toJson(element);
		return response;	
		
	}
}
