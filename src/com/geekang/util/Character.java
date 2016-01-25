package com.geekang.util;

public class Character {

	public static String logFileField2DB(String fileHead){

		return fileHead.replaceAll("[(]","").replaceAll("[)]","").replaceAll("-","_");
	}
}
