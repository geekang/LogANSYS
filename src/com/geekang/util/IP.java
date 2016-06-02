package com.geekang.util;

import java.io.RandomAccessFile;

import com.glodon.miracle.qqwry.QQWryFile;
import com.glodon.miracle.qqwry.QQWryRecord;

public class IP {

	public static String getIPInfo(String ip) {

		String info = null;
		String color = null;
		String className = null;

		QQWryFile qqWryFile = QQWryFile.getInstance();
		RandomAccessFile ipFile = qqWryFile.getIpFile();
		QQWryRecord record = qqWryFile.find(ip, ipFile);
		// System.out.println(Utils.ipToStr(record.getBeginIP()));
		// System.out.println(Utils.ipToStr(record.getEndIP()));
		// System.out.println(record.getCountry());
		// System.out.println(record.getArea());

		info = record.getCountry() + " " + record.getArea();
		color = getColor(info);

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
		}

		return "<span class='" + className + "' title='" + info + "'>" + ip + "</span>";// label
		// label-danger
	}

	private static String getColor(String info) {

		if (info.contains("谷歌") || info.contains("百度") || info.contains("微软") || info.contains("雅虎")
				|| info.contains("360") || info.contains("Microsoft")) {
			return "green";
		}
		return "";
	}

}
