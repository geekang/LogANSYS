package me.geekang.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import me.geekang.db.MysqlConnector;
import me.geekang.var.Var;

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
	 * @description 取得日志文件信息
	 * @author Geekang
	 * @date 2016年1月26日
	 * @update 2016年3月28日
	 * @version 1.4.1.4
	 * @param TODO
	 * @return TODO
	 */
	public static HashMap<String, String> getLogFileInfo() {
		
		HashMap<String, String> fileInfo = new HashMap<String, String>(8);

		//上传的文件名
		fileInfo.put("fileName", Var.getFileName());
		//上传时间
		fileInfo.put("uploadTime", Var.getUploadTime());
		//日志开始时间
		fileInfo.put("startTime", Var.getStartTime());
		//日志结束时间
		fileInfo.put("endTime", Var.getEndTime());
		//Web平台
		fileInfo.put("platform", Var.getPlatform());
		// 日志文件大小
		fileInfo.put("fileSize", Var.getFileSize());
		//请求数量
		fileInfo.put("requestNum", Var.getRequestNum());
		//该日志文件处理时间
		fileInfo.put("processingTime", Var.getProcessingTime());

		return fileInfo;
	}

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
			connection = MysqlConnector.getConnect();
			
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
