package com.cpr.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cpr.model.GraphParams;

@Repository
public class CustomDashboardDAO {

	@Autowired
	private DataSource dataSource;

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

}
