package com.cpr.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class FetchData {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public DataSource getDataSource() {
		return dataSource;
	}

	public ArrayList<Countries> getAllCountries() {

		ArrayList<Countries> countryList = new ArrayList<Countries>();
		try {

			String sql = "select * from country limit 10";
			JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);	
			List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
			for (Map<String, Object> rs : rows) {
				Countries country = new Countries();
				country.setCode(rs.get("Code").toString());
				country.setName(rs.get("Name").toString());
				country.setContinent(rs.get("Continent").toString());
				country.setRegion(rs.get("Region").toString());
				country.setPopulation((Integer) rs.get("Population"));
				country.setCapital(rs.get("Capital").toString());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return countryList;
	}
}