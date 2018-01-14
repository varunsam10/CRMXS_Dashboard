package com.cpr.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.tree.RowMapper;
import javax.swing.tree.TreePath;

public class CountryRowMapper implements RowMapper {

	
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Countries country=new Countries();
		country.setCode(rs.getString("Code"));
    	country.setName(rs.getString("Name"));
        country.setContinent(rs.getString("Continent"));
        country.setRegion(rs.getString("Region"));
    	country.setPopulation(rs.getInt("Population"));
    	country.setCapital(rs.getString("Capital"));
		
		return country;
	}

	public int[] getRowsForPaths(TreePath[] path) {
		// TODO Auto-generated method stub
		return null;
	}
}
