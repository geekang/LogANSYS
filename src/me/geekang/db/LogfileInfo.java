package me.geekang.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import me.geekang.util.Date;

/**
 * 
 * @description Log file info related class.
 * @author Geekang
 * @date 2016年1月25日
 * @update 2016年1月26日
 * @version 1.0.2
 */
public class LogfileInfo {

	/**
	 * 
	 * 
	 * @description Get log file field description from DB.
	 * @author Geekang
	 * @date 2016年1月25日
	 * @update 2016年1月25日
	 * @version 1.0.1
	 * @param fileHead
	 * @return String
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
	
	/**
	 * 
	 * 
	 * @description Generate table name which format like "f+date_platform_hash".
	 * @author Geekang
	 * @date 2016年1月26日
	 * @update 2016年1月26日
	 * @version 1.0.1
	 * @param filePath
	 * @return String
	 */
	public static String generateTABLEName(String platform,String filePath){
		
		String tableName = "f";
		
		tableName = tableName + Date.getDate("yyyyMMdd");
		if(platform.startsWith("#Software: Microsoft Internet Information Services")){
			tableName = tableName + "_" + "iis";
		} else {
			tableName = tableName + "_" + "unknown";
		}
		tableName = tableName + "_" + System.currentTimeMillis();

		return tableName;
	}
}
