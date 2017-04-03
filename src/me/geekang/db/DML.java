package me.geekang.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DML {

	public static void blackListInsert(Map<String,String> items) {

		Connection connection;
		String sql;
		PreparedStatement preStmt;
		String tableName = "black_list";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();
			
			sql = "INSERT INTO " + tableName
					+ "(ip,method,ua,url,remarks) VALUES (?,?,?,?,?)";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);

			preStmt.setString(1, items.get("ip"));
			preStmt.setString(2, items.get("m"));
			preStmt.setString(3, items.get("ua"));
			preStmt.setString(4, items.get("url"));
			preStmt.setString(5, items.get("remarks"));

			preStmt.execute();
			connection.commit();

			preStmt.close();
			connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void blackListUpdate(Map<String,String> items) {

		Connection connection;
		String sql;
		PreparedStatement preStmt;
		String tableName = "black_list";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();
			
			sql = "UPDATE " + tableName
					+ " SET ip=?,method=?,ua=?,url=?,remarks=? WHERE id=?";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);

			preStmt.setString(1, items.get("ip"));
			preStmt.setString(2, items.get("m"));
			preStmt.setString(3, items.get("ua"));
			preStmt.setString(4, items.get("url"));
			preStmt.setString(5, items.get("remarks"));
			preStmt.setInt(6, Integer.parseInt(items.get("id")));

			preStmt.execute();
			connection.commit();

			preStmt.close();
			connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void whiteListInsert(Map<String,String> items) {

		Connection connection;
		String sql;
		PreparedStatement preStmt;
		String tableName = "white_list";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();
			
			sql = "INSERT INTO " + tableName
					+ "(ip,method,ua,url,remarks) VALUES (?,?,?,?,?)";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);

			preStmt.setString(1, items.get("ip"));
			preStmt.setString(2, items.get("m"));
			preStmt.setString(3, items.get("ua"));
			preStmt.setString(4, items.get("url"));
			preStmt.setString(5, items.get("remarks"));

			preStmt.execute();
			connection.commit();

			preStmt.close();
			connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
