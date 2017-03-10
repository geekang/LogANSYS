package me.geekang.service;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

import me.geekang.db.MySQLConnector;
import me.geekang.util.Date;
import me.geekang.var.Var;

/**
 * 
 * @description Init
 * @author Geekang
 * @date 2016年1月24日
 * @update 2016年6月6日
 * @version 1.3.1
 */
public class Init {
																					// row
	public static List<TreeMap<String, String>> logList = new ArrayList<TreeMap<String, String>>();// log
																									// row
	public static String[] fields = {};// 字段
	static int fieldsNum;// 字段数量
	static String firstLine;// first line
	static String platform;

	/**
	 * 
	 * 
	 * @description TODO
	 * @author Geekang
	 * @date 2016年1月24日
	 * @update 2016年1月28日
	 * @version 1.0.3
	 * @param filePath
	 * @return TODO
	 */
	public static List<TreeMap<String, String>> InitLogFile(String filePath) {

		BufferedReader br;
		String byteread = null;
		String[] fieldsTEMP = null;
		String[] entryTEMP = null;
		boolean isEntry = false;// 是否是请求记录
		boolean isFirst = true;

		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath)));

			logList.clear();

			while ((byteread = br.readLine()) != null) {

				// #Software: Microsoft Internet Information Services 7.5
				if (isFirst) {
					Var.setPlatform(byteread);
					isFirst = false;
					continue;
				}

				// #Date: 2014-10-02 00:00:13
				if (byteread.startsWith("#Date:")) {
					Var.setStartTime(byteread.split(" ")[1] + " " + byteread.split(" ")[2]);
					continue;

				}

				// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query
				// s-port cs-username c-ip cs(User-Agent) sc-status sc-substatus
				// sc-win32-status time-taken
				if (byteread.startsWith("#Fields:")) {
					fieldsTEMP = byteread.split(" ");

					fieldsNum = fieldsTEMP.length - 1;

					fields = new String[fieldsNum];
					System.arraycopy(fieldsTEMP, 1, fields, 0, fieldsNum);
					// for(int i = 0; i < fields.length; i++){
					// fields[i] =
					// LogfileInfo.getLogfileHead(Text.logFileField2DB(fields[i]));
					// System.out.println(fields[i]);
					// }
					isEntry = true;
					continue;
				}

				// 如果是请求记录
				if (isEntry) {

					TreeMap<String, String> recordTEMP = new TreeMap<String, String>();
					entryTEMP = byteread.split(" ");

					for (int i = 0; i < entryTEMP.length; i++) {
						// System.out.println(entryTEMP[i].length());
						if (entryTEMP[i].length() > 255) {
							// System.out.println(entryTEMP[i]);
							entryTEMP[i] = entryTEMP[i].substring(0, 254);
						}
						recordTEMP.put(fields[i], entryTEMP[i]);
						// System.out.println(recordTEMP.get(fields[i]));
					}
					logList.add(recordTEMP);
				}

			}

			Var.setEndTime(entryTEMP[0] + " " + entryTEMP[1]);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SaveData2DB();// put the list to database

		Var.setRequestNum(logList.size());
		return logList;

	}

	/**
	 * 
	 * 
	 * @description Insert the structured data into MySQL.
	 * @author Geekang
	 * @date 2016年1月24日
	 * @update 2016年1月28日
	 * @version 1.0.3
	 */
	private static void SaveData2DB() {

		Connection connection;
		String sql;
		PreparedStatement preStmt;
		String tableName;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();

			tableName = generateTABLEName(Var.getPlatform(), "");

			sql = "CREATE TABLE " + tableName
					+ "(record_id int NOT NULL AUTO_INCREMENT,date varchar(255),time varchar(255),s_ip varchar(255),cs_method varchar(255),cs_uri_stem varchar(255),cs_uri_query varchar(255),s_port varchar(255),cs_username varchar(255),c_ip varchar(255),csUser_Agent varchar(255),sc_status varchar(255),sc_substatus varchar(255),sc_win32_status varchar(255),time_taken varchar(255),PRIMARY KEY (record_id))";
			preStmt = connection.prepareStatement(sql);
			preStmt.executeUpdate();// create table

			sql = "INSERT INTO " + tableName
					+ "(date,time,s_ip,cs_method,cs_uri_stem,cs_uri_query,s_port,cs_username,c_ip,csUser_Agent,sc_status,sc_substatus,sc_win32_status,time_taken) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);

			for (int i = 0; i < logList.size(); i++) {
				preStmt.setString(1, logList.get(i).get("date"));
				preStmt.setString(2, logList.get(i).get("time"));
				preStmt.setString(3, logList.get(i).get("s-ip"));
				preStmt.setString(4, logList.get(i).get("cs-method"));
				preStmt.setString(5, logList.get(i).get("cs-uri-stem"));
				preStmt.setString(6, logList.get(i).get("cs-uri-query"));
				preStmt.setString(7, logList.get(i).get("s-port"));
				preStmt.setString(8, logList.get(i).get("cs-username"));
				preStmt.setString(9, logList.get(i).get("c-ip"));
				preStmt.setString(10, logList.get(i).get("cs(User-Agent)"));
				preStmt.setString(11, logList.get(i).get("sc-status"));
				preStmt.setString(12, logList.get(i).get("sc-substatus"));
				preStmt.setString(13, logList.get(i).get("sc-win32-status"));
				preStmt.setString(14, logList.get(i).get("time-taken"));

				preStmt.addBatch();// insert
			}
			preStmt.executeBatch();
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

	/**
	 * 
	 * 
	 * @description Generate table name which format like
	 *              "f+date_platform_hash".
	 * @author Geekang
	 * @date 2016年1月26日
	 * @update 2016年1月26日
	 * @version 1.0.1
	 * @param filePath
	 * @return String
	 */
	private static String generateTABLEName(String platform, String filePath) {

		String tableName = "f" + Date.getDate("yyyyMMdd");
		if (platform.contains("Microsoft Internet Information Services")) {
			tableName = tableName + "_" + "iis";
		} else {
			tableName = tableName + "_" + "unknown";
		}
		tableName = tableName + "_" + System.currentTimeMillis();

		return tableName;
	}

}
