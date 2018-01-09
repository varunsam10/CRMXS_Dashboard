package com.cpr.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;


public class FetchData {

   /* private static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {
                //Properties prop = new Properties();
                //InputStream inputStream = FetchData.class.getClassLoader().getResourceAsStream("/db.properties");
                //prop.load(inputStream);
                String driver = "com.mysql.jdbc.Driver";   //prop.getProperty("driver");
                String url = "jdbc:mysql://localhost:3306/crmxsdashboard"; //prop.getProperty("url");
                String user = "root"; //prop.getProperty("user");
                String password = "root"; //prop.getProperty("password");
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } 
            return connection;
        }

    }*/
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
    
    public DataSource getDataSource() {
		return dataSource;
	}

	public ArrayList<Countries> getAllCountries() {
    //	connection = FetchData.getConnection();
        ArrayList<Countries> countryList = new ArrayList<Countries>();
        try {
           // Statement statement = connection.createStatement();
          //  ResultSet rs = statement.executeQuery("select * from country limit 10");
        	String sql = "select * from country limit 10";
        	JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
       /* 	while(rs.next()) {	
            	Countries country=new Countries();
            	country.setCode(rs.getString("Code"));
            	country.setName(rs.getString("Name"));
                country.setContinent(rs.getString("Continent"));
                country.setRegion(rs.getString("Region"));
            	country.setPopulation(rs.getInt("Population"));
            	country.setCapital(rs.getString("Capital"));
            	countryList.add(country);
            }*/
        	
        	List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        	for (Map<String, Object> rs : rows) {
        		Countries country = new Countries();
        		country.setCode(rs.get("Code").toString());
            	country.setName(rs.get("Name").toString());
                country.setContinent(rs.get("Continent").toString());
                country.setRegion(rs.get("Region").toString());
            	country.setPopulation((Integer)rs.get("Population"));
            	country.setCapital(rs.get("Capital").toString());
        	}     	
        	
        	
        } catch (Exception e) {
            e.printStackTrace();
        }

        return countryList;
    }
}