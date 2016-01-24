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

import com.geekang.db.MySQLConnector;

/*
 * Date：2016-01-24
 * Update：2016-01-24
 * Author：geekang
 */
public class Init {

	public static List<String[]> list = new ArrayList<String[]>();// log row
	public static String[] fields = {};// fields in each row
	static int fieldsNum;// fields number

	/*
	 * Date:2016-01-24 List<String[]>:The first row is the fields of this log
	 * file.
	 */
	public static List<String[]> InitLogFile(String filePath) {

		BufferedReader br;
		String byteread = null;
		String[] fieldsTEMP = null;
		String[] entryTEMP = null;
		boolean isEntry = false;

		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath)));

			list.clear();

			while ((byteread = br.readLine()) != null) {
				if (byteread.startsWith("#Fields:")) {
					fieldsTEMP = byteread.split(" ");
					
					fieldsNum = fieldsTEMP.length - 1;

					fields = new String[fieldsNum];
					System.arraycopy(fieldsTEMP, 1, fields, 0, fieldsNum);
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

	/*
	 * Date:2016-01-24
	 */
	private static void SaveData2DB() {
		
		Connection connection;
		String sql;
		PreparedStatement preStmt;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = MySQLConnector.getConnect();
			
			sql = "CREATE TABLE IIS_u_ex140928(record_id int NOT NULL AUTO_INCREMENT,date varchar(255),time varchar(255),s_ip varchar(255),cs_method varchar(255),cs_uri_stem varchar(255),cs_uri_query varchar(255),s_port varchar(255),cs_username varchar(255),c_ip varchar(255),csUser_Agent varchar(255),sc_status varchar(255),sc_substatus varchar(255),sc_win32_status varchar(255),time_taken varchar(255),PRIMARY KEY (record_id))";
			preStmt = connection.prepareStatement(sql);
			preStmt.executeUpdate();//create table
			
			sql = "INSERT INTO IIS_u_ex140928(date,time,s_ip,cs_method,cs_uri_stem,cs_uri_query,s_port,cs_username,c_ip,csUser_Agent,sc_status,sc_substatus,sc_win32_status,time_taken) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			connection.setAutoCommit(false);
			preStmt = connection.prepareStatement(sql);
			
			for(int i = 0; i < list.size() - 1; i++){
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

}
