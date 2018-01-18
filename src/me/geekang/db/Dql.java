package me.geekang.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * 
 * @author Geekang
 *
 */
public class Dql {

	/**
	 * 执行SQL语句(SELECT)
	 * 
	 * @param sql
	 * @return
	 */
	public static List<HashMap<String, String>> executeQuery(String sql) {

		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement prepstmt = null;
		List<HashMap<String, String>> resultList = new ArrayList<HashMap<String, String>>();

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = MysqlConnector.getConnect();

			prepstmt = conn.prepareStatement(sql);

			rs = prepstmt.executeQuery();

			int columnCount = rs.getMetaData().getColumnCount();
			ResultSetMetaData rsmd = rs.getMetaData();

			while (rs.next()) {
				HashMap<String, String> row = new HashMap<String, String>(10);
				for (int i = 1; i <= columnCount; i++) {
					row.put(rsmd.getColumnName(i), rs.getObject(i).toString());
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
