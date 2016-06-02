package com.geekang.util;

import java.io.RandomAccessFile;

import com.glodon.miracle.qqwry.QQWryFile;
import com.glodon.miracle.qqwry.QQWryRecord;

public class IP {
	
	public static String getIPInfo(String ip){

		QQWryFile qqWryFile = QQWryFile.getInstance();
		RandomAccessFile ipFile = qqWryFile.getIpFile();
		QQWryRecord record = qqWryFile.find(ip, ipFile);
//		System.out.println(Utils.ipToStr(record.getBeginIP()));
//		System.out.println(Utils.ipToStr(record.getEndIP()));
//		System.out.println(record.getCountry());
//		System.out.println(record.getArea());
		
		return "<span class='' title='" + record.getCountry() + " " + record.getArea() + "'>" + ip + "</span>";//label label-danger
	}

}
