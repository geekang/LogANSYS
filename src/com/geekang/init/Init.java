package com.geekang.init;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.geekang.db.MySQLConnector;
import com.geekang.db.LogfileInfo;
import com.geekang.util.File;
import com.geekang.util.Text;

/**
 * 
 * @description Init
 * @author Geekang
 * @date 2016年1月24日
 * @update 2016年1月28日
 * @version 1.0.3
 */
public class Init {

	public static List<String[]> list = new ArrayList<String[]>();// log row
	public static String[] fields = {};// fields in each row
	static int fieldsNum;// fields number
	static String firstLine;//first line
	public static String filePath;
	public static String startTime;
	public static String endTime;
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
	public static List<String[]> InitLogFile(String filePath) {

		BufferedReader br;
		String byteread = null;
		String[] fieldsTEMP = null;
		String[] entryTEMP = null;
		boolean isEntry = false;
		boolean isFirst = true;

		Init.filePath = filePath;
		
		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath)));

			list.clear();
			
			while ((byteread = br.readLine()) != null) {
				
				if(isFirst){
					firstLine = byteread;
					isFirst = false;
				}
				
				if (byteread.startsWith("#Date:")) {
					startTime = byteread.split(" ")[1] + " " + byteread.split(" ")[2];
				}
				
				if (byteread.startsWith("#Fields:")) {
					fieldsTEMP = byteread.split(" ");
					
					fieldsNum = fieldsTEMP.length - 1;

					fields = new String[fieldsNum];
					System.arraycopy(fieldsTEMP, 1, fields, 0, fieldsNum);
					for(int i = 0; i < fields.length; i++){
						fields[i] = LogfileInfo.getLogfileHead(Text.logFileField2DB(fields[i]));
					}
					list.add(fields);
					isEntry = true;
					continue;
				}
				if (isEntry) {
					entryTEMP = byteread.split(" ");
					
					for(int i = 0; i < entryTEMP.length; i++){
//						System.out.println(entryTEMP[i].length());
						if(entryTEMP[i].length() > 255){
//							System.out.println(entryTEMP[i]);
							entryTEMP[i] = entryTEMP[i].substring(0, 254);
						}
					}
					
					list.add(entryTEMP);
				}
				
			}
			
			endTime = entryTEMP[0] + " " + entryTEMP[1];
			list.add(0,LogFileInfo());
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SaveData2DB();// put the list to database

		return list;

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
			
			tableName = LogfileInfo.generateTABLEName(firstLine,"");
			
			sql = "CREATE TABLE " + tableName + "(record_id int NOT NULL AUTO_INCREMENT,date varchar(255),time varchar(255),s_ip varchar(255),cs_method varchar(255),cs_uri_stem varchar(255),cs_uri_query varchar(255),s_port varchar(255),cs_username varchar(255),c_ip varchar(255),csUser_Agent varchar(255),sc_status varchar(255),sc_substatus varchar(255),sc_win32_status varchar(255),time_taken varchar(255),PRIMARY KEY (record_id))";
			preStmt = connection.prepareStatement(sql);
			preStmt.executeUpdate();//create table
			
			sql = "INSERT INTO " + tableName + "(date,time,s_ip,cs_method,cs_uri_stem,cs_uri_query,s_port,cs_username,c_ip,csUser_Agent,sc_status,sc_substatus,sc_win32_status,time_taken) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);
			
			for(int i = 1; i < list.size() - 1; i++){
				for(int j = 0; j < fieldsNum; j++){
					preStmt.setString(j + 1,list.get(i + 1)[j]);
				}
				preStmt.addBatch();//insert
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
	 * @description TODO
	 * @author Geekang
	 * @date 2016年1月26日
	 * @update 2016年1月26日
	 * @version 1.0.1
	 * @param TODO
	 * @return TODO
	 */
	public static String[] LogFileInfo(){
		
		String[] logFileInfo = new String[6];
		String[] fileName;
		
		fileName = filePath.split("\\\\");
		logFileInfo[0] = fileName[fileName.length - 1];//file name
		logFileInfo[1] = startTime;//start time
		logFileInfo[2] = endTime;//start time
		if(firstLine.startsWith("#Software: Microsoft Internet Information Services")){
			logFileInfo[3] = "Microsoft Internet Information Services";
		}
		logFileInfo[4] = File.getFileLength(filePath);
		logFileInfo[5] = Integer.toString(list.size() - 1);
		
		return logFileInfo;
	}
	
	
	
	@Test
	public void test(){
		//System.out.println(LogFileInfo("F:\\test\\filename.txt")[0]);
	}

}
