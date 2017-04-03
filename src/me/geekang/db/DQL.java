package me.geekang.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DQL {

	/**
	 * 执行SQL语句(SELECT)
	 * 
	 * @param sql
	 * @return
	 */
	public static List<HashMap<String,String>> executeQuery(String sql) {

		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement prepstmt = null;
		List<HashMap<String,String>> resultList = new ArrayList<HashMap<String,String>>();

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = MySQLConnector.getConnect();

			prepstmt = conn.prepareStatement(sql);

			rs = prepstmt.executeQuery();

			int columnCount = rs.getMetaData().getColumnCount();
			ResultSetMetaData rsmd = rs.getMetaData();

			while (rs.next()) {
				HashMap<String,String> row = new HashMap<String,String>();

				for (int i = 0; i < columnCount; i++) {
					row.put(rsmd.getColumnName(i + 1),rs.getObject(i + 1).toString());
				}
				resultList.add(row);
			}

			return resultList;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				prepstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return resultList;
	}
}
