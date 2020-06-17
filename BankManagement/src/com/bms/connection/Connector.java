package com.bms.connection;


import java.sql.Connection;
import java.sql.DriverManager;

public class Connector {
	private static Connection con = null;
	static String DRIVER = "com.mysql.jdbc.Driver";
	static String CONNECTION_URL = "jdbc:mysql://localhost:3306/retailbank";
	static String USERNAME = "root";
	static String PASSWORD = "";

	public static Connection getConnection() {
		if (con != null) {
			try {
				Class.forName(DRIVER);
				con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
			} catch (Exception e) {
				System.out.print(e.getLocalizedMessage());
			}
		}
		return con;
	}
}

