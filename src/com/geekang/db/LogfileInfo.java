package com.geekang.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Date:2016-01-25
 * Update:2016-01-25
 * @author Geekang
 *
 */
public class LogfileInfo {

	/*
	 * Get log file field description from DB.
	 */
	public static String getLogfileHead(String fileHead){
		
		Connection connection;
		String sql;
		PreparedStatement preStmt;
		String desc = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();
			
			sql = "SELECT description FROM logfile_head WHERE field='" + fileHead + "'";
			preStmt = connection.prepareStatement(sql);
			ResultSet rs = preStmt.executeQuery(sql);

			while (rs.next()) {
				desc = rs.getString(1);
			}
			
			preStmt.close();
			connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return desc;
	}
}
