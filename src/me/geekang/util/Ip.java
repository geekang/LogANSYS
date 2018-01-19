package me.geekang.util;

import java.io.RandomAccessFile;

import com.glodon.miracle.qqwry.QQWryFile;
import com.glodon.miracle.qqwry.QQWryRecord;

public class Ip {
	
	static QQWryFile qqWryFile = QQWryFile.getInstance();
	static RandomAccessFile ipFile = qqWryFile.getIpFile();
	
	/**
	 * 获取IP地理位置和运营商信息
	 * @param ip
	 * @return IP地理位置和运营商信息
	 */
	public static String getIpInfo(String ip){
		
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		return record.getCountry() + " " + record.getArea();
	}
	
	/**
	 * 获取IP所在城市
	 * @param ip
	 * @return IP所在城市
	 */
	public static String getIpCountry(String ip){
		
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		return record.getCountry();
	}
	
	public static String ipFilter(String ip) {
		
		//IP信息
		String info;
		//提示颜色（green/orange/red）
		String color = new String();
		//输出class
		String className;
		
		/*
		 * 获得IP信息
		 */
		QQWryFile qqWryFile = QQWryFile.getInstance();
		RandomAccessFile ipFile = qqWryFile.getIpFile();
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		info = record.getCountry() + " " + record.getArea();
		
		//判断是否为搜索引擎
		if (info.contains("谷歌") || info.contains("百度") || info.contains("微软") || info.contains("雅虎")
				|| info.contains("360") || info.contains("Microsoft") || info.contains("MSN") || info.contains("蜘蛛")) {
			color =  "green";
		}
		
		switch (color) {
		case "green":
			className = "label label-success";
			break;
		case "orange":
			className = "label label-warning";
			break;
		case "red":
			className = "label label-danger";
			break;
		default:
			className = "";
		}
		return className;
	}

}
