package me.geekang.util;

public class Text {

	public static String logFileField2DB(String fileHead){

		return fileHead.replaceAll("[(]","").replaceAll("[)]","").replaceAll("-","_");
	}
}
