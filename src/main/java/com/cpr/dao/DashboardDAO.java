package com.cpr.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;

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
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String getWidgetForDashboard(String dashboardId) {
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

	public String updateWidget(String widgetId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String deleteWidget(String widgetId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String addWidget(String widgetId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String editWidgetTitle(String widgetId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

	public String downloadWidgetData(String widgetId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			String sql = "delete from widget where dashId = ?";
			jdbcTemplate.update(sql, new Object[] { widgetId });
		} catch (Exception e) {
			System.out.println("The exception is" + e);
			return "Failed";
		}
		return "Success";
	}

}
