package com.monitoring.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MonitoringDao {
	private Connection connection;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	
	private String id = "root";
	private String password = "mju12345";
	private String url = "jdbc:mysql://localhost:3306/server";
	
	public void connect() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, id, password);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (connection == null) {
				connection.close();
			} else if (preparedStatement == null) {
				preparedStatement.close();
			} else if (resultSet == null) {
				resultSet.close();
			}
		}
	}	
}
