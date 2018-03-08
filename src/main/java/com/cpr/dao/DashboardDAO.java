package com.cpr.dao;

import java.sql.Blob;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.expression.ParseException;
import org.springframework.jdbc.InvalidResultSetAccessException;
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
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Repository
public class DashboardDAO {

	@Autowired
	private DataSource dataSource;

	public String getDashboardJson() {
		Gson gson = new Gson();
		try {
			String sql = "select * from widget";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String getDynamicDashboardJson(String dashboardID) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
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
					widgetContentMap.setWidgetContent(retrieveBlobAsString);
					return widgetContentMap;
				}
			});

		} catch (Exception e) {
			System.out.println("The exception is" + e);
		}
		String widgetContent = widgetContentMaps.get(0).getWidgetContent();
		return widgetContent;
	}

	public String getWidgetDefinition(String widgetName) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Map<String, Object>> rows = null;
		String retrieveBlobAsString = null;
		List<WidgetContentMap> widgetContentMaps = new ArrayList<WidgetContentMap>();
		try {
			StringBuilder sqlQuery = new StringBuilder("SELECT * FROM widget");
			sqlQuery.append(" WHERE widgetTitle ='").append(widgetName).append("'");
			widgetContentMaps = jdbcTemplate.query(sqlQuery.toString(), new RowMapper<WidgetContentMap>() {
				public WidgetContentMap mapRow(ResultSet rs, int rowNum) throws SQLException {
					WidgetContentMap widgetContentMap = new WidgetContentMap();
					Blob blob = rs.getBlob("widgetContent");
					String retrieveBlobAsString = new String(blob.getBytes(1, (int) blob.length()));
					widgetContentMap.setWidgetContent(retrieveBlobAsString);
					return widgetContentMap;
				}
			});

		} catch (Exception e) {
			System.out.println("The exception is" + e);
		}
		String widgetContent = widgetContentMaps.get(0).getWidgetContent();
		return widgetContent;

	}

	public List<String> getDynamicDashboardWidgetNamesJson(String dashboardID) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Map<String, Object>> rows = null;
		List<String> widgetNames = new ArrayList<String>();
		List<WidgetContentMap> widgetContentMaps = new ArrayList<WidgetContentMap>();
		try {
			String sql = "select widgetTitle from widget where dashId = ?";
			rows = jdbcTemplate.queryForList(sql, dashboardID);
			for (Map<String, Object> rs : rows) {
				widgetNames.add(rs.get("widgetTitle").toString());
			}
		} catch (Exception e) {
			System.out.println("The exception is" + e);
		}

		return widgetNames;
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
				try {
					rows = template.queryForList(sql, parameters);
				} catch (InvalidResultSetAccessException e) {
					System.out.println("Exception" + e);
				} catch (DataAccessException e) {
					System.out.println("Exception" + e);
				}
			}
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
		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);
		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout, true);
		widgetLayout.setShowlegend(true);
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
		String sql = "select Product,Customer_Name,(Quantity*Price) as Spend from demosalesitemTest group by Product,Customer_Name order by Spend DESC";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> productListMap = new HashMap<String, List<GraphParams>>();
		List<GraphParams> graphParamsList = new LinkedList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			GraphParams graphParam = new GraphParams();
			graphParam.setyValue(rs.get("Spend").toString());
			graphParam.setxValue(rs.get("Product").toString());
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
	public Map<String, List<GraphParams>> createWidgetProductListActual() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select Product,Customer_Name,(Quantity*Price) as Spend from demosalesitem group by Spend";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> productListMap = new HashMap<String, List<GraphParams>>();
		List<GraphParams> graphParamsList = new LinkedList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			GraphParams graphParam = new GraphParams();
			graphParam.setyValue(rs.get("Spend").toString());
			graphParam.setxValue(rs.get("Product").toString());
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
	public Map<String, List<GraphParams>> createWidgetTopOutletActual() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select count(Trans_ID) as Sales,Outlet_Name as Outlet from demosalesitem group by Outlet_Name";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> topOutletListMap = new HashMap<String, List<GraphParams>>();
		List<GraphParams> graphParamsList = new LinkedList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			GraphParams graphParam = new GraphParams();
			graphParam.setyValue(rs.get("Sales").toString());
			graphParam.setxValue(rs.get("Outlet").toString());
			String customerName = rs.get("Outlet").toString();
			if (topOutletListMap.isEmpty()) {
				graphParamsList.add(graphParam);
				topOutletListMap.put(customerName, graphParamsList);
			} else {
				if (topOutletListMap.containsKey(customerName)) {
					topOutletListMap.get(customerName).add(graphParam);
				} else {
					List<GraphParams> graphParamsListNew = new ArrayList<GraphParams>();
					graphParamsListNew.add(graphParam);
					topOutletListMap.put(customerName, graphParamsListNew);
				}
			}
		}
		return topOutletListMap;
	}
	public Map<String, List<GraphParams>> createWidgetTopProductActual() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select count(Trans_ID) as Sales,Product from demosalesitem group by Product order by Sales DESC LIMIT 25";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> topProductListMap = new HashMap<String, List<GraphParams>>();
		List<GraphParams> graphParamsList = new LinkedList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			GraphParams graphParam = new GraphParams();
			graphParam.setyValue(rs.get("Sales").toString());
			graphParam.setxValue(rs.get("Product").toString());
			String customerName = rs.get("Product").toString();
			if (topProductListMap.isEmpty()) {
				graphParamsList.add(graphParam);
				topProductListMap.put(customerName, graphParamsList);
			} else {
				if (topProductListMap.containsKey(customerName)) {
					topProductListMap.get(customerName).add(graphParam);
				} else {
					List<GraphParams> graphParamsListNew = new ArrayList<GraphParams>();
					graphParamsListNew.add(graphParam);
					topProductListMap.put(customerName, graphParamsListNew);
				}
			}
		}
		return topProductListMap;
	}
	public Map<String, String> averageCustomerSpend() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select FLOOR(AVG(Quantity*Price)) as Avg_Spend from demosalesitem group by Customer_Name order by Avg_Spend DESC LIMIT 1";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, List<GraphParams>> averageCustomerSpendMap = new HashMap<String, List<GraphParams>>();
		Map<String, String> averageSpendMap = new HashMap<String, String>();
		List<GraphParams> graphParamsList = new LinkedList<GraphParams>();
		for (Map<String, Object> rs : rows) {
			String averageSpend = rs.get("Avg_Spend").toString();
			averageSpendMap.put("Avg_Spend", averageSpend);
		}
		return averageSpendMap;
	}
	public Map<String, String> topProduct() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select count(Trans_ID) as transactions,Product from demosalesitem group by Product order by transactions DESC LIMIT 1";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		Map<String, String> topProductMap = new HashMap<String, String>();
		for (Map<String, Object> rs : rows) {
			String countTransactions = rs.get("transactions").toString();
			String customerName = rs.get("Product").toString();
			topProductMap.put(customerName, countTransactions);
		}
		return topProductMap;
	}

	public String insertWidgetConfig(String widgetJson, String widgetId, String dashboardId, String widgetTitle) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "INSERT INTO crmxsdashboard.widget (widgetId,widgetContent,dashId,widgetTitle) VALUES (?,?,?,?)";
		try {

			jdbcTemplate.update(sql, new Object[] { widgetId, widgetJson, dashboardId, widgetTitle });

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
