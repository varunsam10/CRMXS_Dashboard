package com.cpr.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.cpr.util.AxisLayout;
import com.cpr.util.TitleFont;
import com.cpr.util.WidgetConfig;
import com.cpr.util.WidgetContent;
import com.cpr.util.WidgetData;
import com.cpr.util.WidgetLayout;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;


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
		Integer resultSize =0;
		Map<String,List<GraphParams>>countryMap =new HashMap<String,List<GraphParams>>();
		if(null!=filterData.getFromDate() && null!= filterData.getToDate() && (filterData.getCountries().length == 0)){
			fromDate = Date.valueOf(filterData.getFromDate());
			toDate  = Date.valueOf(filterData.getToDate());
			sql = "SELECT * FROM crmxsdashboard.redemption where date >= ? and date<= ?";			
			List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, fromDate, toDate);
			System.out.println(rows.size());
			resultSize = rows.size();
			
			for(Map<String, Object> rs : rows) {
				
				GraphParams graphParam = new GraphParams();
				graphParam.setxValue(rs.get("revenue").toString());
				graphParam.setxValue(rs.get("date").toString());
				String country = rs.get("country").toString();
				if(countryMap.isEmpty()){
					List<GraphParams> graphParamsList = new ArrayList<GraphParams>();
					graphParamsList.add(graphParam);
					countryMap.put(country,graphParamsList);
				}else{				
					if(countryMap.containsKey(country)){
						countryMap.get(country).add(graphParam);
					}					
				}											
				//System.out.println("Revenue-> " + rs.get("revenue").toString() + " Date->" + rs.get("date").toString());
			}			
		}else{
			
		}		
		String widgetContentConfig = getFilteredWidgetConfig(resultSize,countryMap);	
		return widgetContentConfig;
	}
	
	public String getFilteredWidgetConfig(Integer resultSize,Map<String,List<GraphParams>> countryMap){
		//WidgetData[] widgetTraces = new WidgetData[countryMap.size()];
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
			//widgetTraces[i] = trace;
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
