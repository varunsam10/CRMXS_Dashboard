package com.cpr.Dao;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.sql.Blob;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cpr.model.FilterData;
import com.cpr.model.GraphParams;
import com.cpr.model.WidgetContentMap;
import com.cpr.util.AxisLayout;
import com.cpr.util.TitleFont;
import com.cpr.util.WidgetConfig;
import com.cpr.util.WidgetContent;
import com.cpr.util.WidgetData;
import com.cpr.util.WidgetLayout;
import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

@Repository
public class DashboardDAO {

	@Autowired
	private DataSource dataSource;

	/*
	 * public void setDataSource(DataSource dataSource) { this.dataSource =
	 * dataSource; }
	 * 
	 * public DataSource getDataSource() { return dataSource; }
	 */

	public String getDashboardJson() {

		Gson gson = new Gson();
		// java.sql.Connection con = FetchData.getConnection();
		try {
			String sql = "select * from widget";
			// Statement statement = con.prepareStatement(sql);
			// ResultSet rs = statement.executeQuery(sql);
	/*		List<String> widgetContent = new ArrayList<String>();
			JsonArrayBuilder widgetConfig = Json.createArrayBuilder();
			widgetConfig.add(str);
			String dashboardJson = widgetConfig.build().toString()
			 while(rs.next()) { java.sql.Blob widgetBlob = rs.getBlob(2);
			 String str = new String(widgetBlob.getBytes(1l, (int)
			  widgetBlob.length())); //System.out.println(str); //String
			 widgetJson = gson.toJson(str); widgetContent.add(str);*/
			 //widgetConfig.add(str); //Json.createArrayBuilder() }
			 
			// String dashboardJson = widgetConfig.build().toString();
			/*JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
			String dashboardJson = widgetContent.toString();*/
			// String dashboardJson = gson.toJson(widgetContent);
			/*System.out.println(dashboardJson);
			return dashboardJson;*/
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String getDynamicDashboardJson(String dashboardID) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		final Gson gson = new Gson();
		List<Map<String, Object>> rows = null;
		String retrieveBlobAsString = null;
		List<WidgetContentMap> widgetContentMaps = new ArrayList<WidgetContentMap>();
		try {
			String sql = "select * from widget where dashId = ?";
			StringBuilder sqlQuery = new StringBuilder("SELECT * FROM widget");
			sqlQuery.append(" WHERE dashId ='").append(dashboardID).append("'");
			widgetContentMaps = jdbcTemplate.query(sqlQuery.toString(), new RowMapper<WidgetContentMap>() {
				public WidgetContentMap mapRow(ResultSet rs, int rowNum) throws SQLException {
					WidgetContentMap widgetContentMap = new WidgetContentMap();
					Blob blob = rs.getBlob("widgetContent");
					String retrieveBlobAsString = new String(blob.getBytes(1, (int) blob.length()));					
								
					
				//	dashboardJson.add(retrieveBlobAsString);
			    //  String dashboardJsonStr = dashboardJson.build().toString();					
					widgetContentMap.setWidgetContent(retrieveBlobAsString);
					//widgetContentMap.setWidgetContent(gson.toJson(retrieveBlobAsString));
					return widgetContentMap;
				}
			});
			// rows = jdbcTemplate.query(sql, dashboardID);
			/*
			 * JsonArrayBuilder widgetConfig = Json.createArrayBuilder(); for
			 * (Map<String, Object> rs : rows) {
			 * 
			 * Blob widgetBlob = rs.getBlob("widgetContent"); InputStream input
			 * = widgetBlob.getBinaryStream(); ObjectInputStream object = new
			 * ObjectInputStream(input); retrieveBlobAsString = (String)
			 * object.readObject(); }
			 */
		} catch (Exception e) {
			System.out.println("The exception is" + e);
		}
		String widgetContent = widgetContentMaps.get(0).getWidgetContent();
		return widgetContent;
	}

	public String deleteDynamicDashboard(String dashboardId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { dashboardId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String getDateFilteredData(FilterData filterData) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = null;
		Date fromDate = null;
		Date toDate = null;
		String[] countryInFilter = null;
		List<Map<String, Object>> rows = null;
		// String[] countriesInFilter = null;
		Integer resultSize = 0;
		java.util.Date parsedFrom = null;
		java.util.Date parsedTo = null;
		Map<String, List<GraphParams>> countryMap = new HashMap<String, List<GraphParams>>();
		if (null != filterData.getFromDate() && null != filterData.getToDate()
				&& (filterData.getCountries().length != 0)) {

			try {
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
				parsedFrom = format.parse(filterData.getFromDate());
				parsedTo = format.parse(filterData.getToDate());
				fromDate = new Date(parsedFrom.getTime());
				toDate = new Date(parsedTo.getTime());
			} catch (ParseException ex) {

			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
			}
			countryInFilter = filterData.getCountries();
			NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(dataSource);

			if (filterData.getCountries().length == 0) {
				sql = "SELECT * FROM crmxsdashboard.redemption where date >= ? and date <= ?  order by date asc";
				rows = jdbcTemplate.queryForList(sql, fromDate, toDate);
			} else if (filterData.getCountries().length >= 1) {
				sql = "SELECT * FROM crmxsdashboard.redemption where date >= (:fromDate) and date <= (:toDate) and country IN (:countries) order by date asc";
				List<String> countriesList = Arrays.asList(countryInFilter);
				MapSqlParameterSource parameters = new MapSqlParameterSource();
				parameters.addValue("countries", countriesList);
				parameters.addValue("fromDate", fromDate);
				parameters.addValue("toDate", toDate);

				// Map<String, List> paramMap =
				// Collections.singletonMap("countries", countriesList);
				// Map<String, Date> paramMap2 =
				// Collections.singletonMap("fromDate", fromDate);
				// Map<String, Date> paramMap3 =
				// Collections.singletonMap("toDate", toDate);
				rows = template.queryForList(sql, parameters);
				// rows = jdbcTemplate.queryForList(sql, fromDate,
				// toDate,paramMap);
			}
			// List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql,
			// fromDate, toDate,countryInFilter);
			// System.out.println(rows.size());
			resultSize = rows.size();
			List<GraphParams> graphParamsList = new ArrayList<GraphParams>();

			for (Map<String, Object> rs : rows) {
				GraphParams graphParam = new GraphParams();
				graphParam.setyValue(rs.get("revenue").toString());
				graphParam.setxValue(rs.get("date").toString());
				String country = rs.get("country").toString();
				if (countryMap.isEmpty()) {
					graphParamsList.add(graphParam);
					countryMap.put(country, graphParamsList);
				} else {
					if (countryMap.containsKey(country)) {
						countryMap.get(country).add(graphParam);
					} else {
						List<GraphParams> graphParamsListNew = new ArrayList<GraphParams>();
						graphParamsListNew.add(graphParam);
						countryMap.put(country, graphParamsListNew);
					}
				}
			}
		}
		String widgetContentConfig = getFilteredWidgetConfig(resultSize, countryMap, parsedFrom, parsedTo);
		return widgetContentConfig;

	}

	public String getFilteredWidgetConfig(Integer resultSize, Map<String, List<GraphParams>> countryMap,
			java.util.Date parsedFrom, java.util.Date parsedTo) {

		ArrayList<WidgetData> widgetsDataList = new ArrayList<WidgetData>();
		Set<String> keys = countryMap.keySet();
		int i = 0;
		for (String country : keys) {
			Object[] xaxis = new Object[resultSize];
			Object[] yaxis = new Object[resultSize];
			List<GraphParams> graphParamList = countryMap.get(country);
			for (int j = 0; j < graphParamList.size(); j++) {
				xaxis[j] = graphParamList.get(j).getxValue();
				yaxis[j] = graphParamList.get(j).getyValue();
			}
			WidgetData trace = new WidgetData(xaxis, yaxis, country, "scatter");
			i++;
			widgetsDataList.add(trace);
		}
		String[] range = new String[2];
		if (null != parsedFrom && null != parsedTo) {
			range[0] = parsedFrom.toString();
			range[1] = parsedTo.toString();
		}
		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont, range);
		// AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);
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

	public Map<String, List<GraphParams>> createWidgetproductList() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		// String sql = "SELECT * FROM crmxsdashboard.demosalesitem";
		String sql = "select Customer_Name,Quantity from demosalesitemTest";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> productListMap = new HashMap<String, List<GraphParams>>();
		List<GraphParams> graphParamsList = new ArrayList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			GraphParams graphParam = new GraphParams();
			// graphParam.setyValue(rs.get("Product").toString());
			// graphParam.setxValue(rs.get("Quantity").toString());
			// String product = rs.get("Product").toString();
			graphParam.setyValue(rs.get("Customer_Name").toString());
			graphParam.setxValue(rs.get("Quantity").toString());
			String customerName = rs.get("Customer_Name").toString();
			if (productListMap.isEmpty()) {
				graphParamsList.add(graphParam);
				productListMap.put(customerName, graphParamsList);
			} else {
				if (productListMap.containsKey(customerName)) {
					productListMap.get(customerName).add(graphParam);
				} else {
					List<GraphParams> graphParamsListNew = new ArrayList<GraphParams>();
					graphParamsListNew.add(graphParam);
					productListMap.put(customerName, graphParamsListNew);
				}
			}
		}
		return productListMap;
	}

	public String insertWidgetConfig(String widgetJson, String widgetId, String dashboardId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "INSERT INTO crmxsdashboard.widget (widgetId,widgetContent,dashId) VALUES (?,?,?)";
		try {

			jdbcTemplate.update(sql, new Object[] { widgetId, widgetJson, dashboardId });

		} catch (Exception ex) {
			System.out.println("The exception is " + ex);
			return "Failure";
		}
		return "Success";
	}

	public String changeGraph(String widgetId) {

		return "Success";
	}

	public String getWidgetForDashboard(String dashboardId) {

		return "Success";
	}

	public String updateWidget(String widgetId) {

		return "Success";
	}

	public String deleteWidget(String widgetId) {

		return "Success";
	}

	public String addWidget(String widgetId) {

		return "Success";
	}

	public String editWidgetTitle(String widgetId) {

		return "Success";
	}

	public String downloadWidgetData(String widgetId) {

		return "Success";
	}

}
