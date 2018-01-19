package me.geekang.db;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 数据库连接类。
 * 
 * @author geekang
 * @version 1.0.0
 * 
 */
public class MysqlConnector {

	static String url = null;
	
	static URI uri = null;

	static Connection connection = null;

	public MysqlConnector() {

	}

	public static Connection getConnect() {
		
		try {
			//uri = new URI(System.getenv("DATABASE_URL"));//mysql://user:pwd@localhost:3306/db
			uri = new URI("mysql://root:root@localhost:3306/logansys");
			//System.out.println(uri);
			
			url = "jdbc:mysql://" + uri.getHost() + ":" + uri.getPort() + "/" + uri.getPath().split("/")[1] + "?user="
					+ uri.getUserInfo().split(":")[0] + "&password=" + uri.getUserInfo().split(":")[1];
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection(url);			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			System.out.println("找不到环境变量");
			e.printStackTrace();
		}
		return connection;
	}

}
