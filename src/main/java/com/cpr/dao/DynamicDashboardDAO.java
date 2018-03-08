package com.cpr.dao;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.cpr.model.WidgetContentMap;

@Repository
public class DynamicDashboardDAO {

	@Autowired
	private DataSource dataSource;

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

}
