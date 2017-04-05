package me.geekang.util;

import java.io.RandomAccessFile;

import com.glodon.miracle.qqwry.QQWryFile;
import com.glodon.miracle.qqwry.QQWryRecord;

public class IP {
	
	static QQWryFile qqWryFile = QQWryFile.getInstance();
	static RandomAccessFile ipFile = qqWryFile.getIpFile();
	
	/**
	 * 获取IP实际地理位置
	 * @param ip
	 * @return
	 */
	public static String getIpAddr(String ip){
		
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		return record.getCountry() + " " + record.getArea();
	}

	public static String getIPInfo(String ip) {

		String info = null;
		String color = null;
		String className = "";

		QQWryFile qqWryFile = QQWryFile.getInstance();
		RandomAccessFile ipFile = qqWryFile.getIpFile();
		
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		// System.out.println(Utils.ipToStr(record.getBeginIP()));
		// System.out.println(Utils.ipToStr(record.getEndIP()));
		// System.out.println(record.getCountry());
//		 System.out.println(record.getArea());

		info = record.getCountry() + " " + record.getArea();
		color = getColor(info);

		switch (color) {
		case "green":
			className = "success";
			break;
		case "orange":
			className = "warning";
			break;
		case "red":
			className = "danger";
			break;
		default:
		}
		return className;// label
		// label-danger
	}

	private static String getColor(String info) {

		if (info.contains("谷歌") || info.contains("百度") || info.contains("微软") || info.contains("雅虎")
				|| info.contains("360") || info.contains("Microsoft") || info.contains("MSN") || info.contains("蜘蛛")) {
			return "green";
		}
		return "";
	}

}
