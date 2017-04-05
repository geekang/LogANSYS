package me.geekang.var;

import java.util.HashMap;
import java.util.List;

import me.geekang.util.File;
import me.geekang.util.Text;

public final class Var {

	private static String path;
	private static String fileName;
	private static String uploadTime;
	private static String startTime;
	private static String endTime;
	private static String platform;
	private static String fileSize;
	private static String requestNum;
	private static String processingTime;
	private static List<HashMap<String,String>> logList;
	private static List<HashMap<String,String>> blackList;
	private static List<HashMap<String,String>> whiteList;
	private static String lastedTable;
	
	public static String getLastedTable() {
		return lastedTable;
	}

	public static void setLastedTable(String lastedTable) {
		Var.lastedTable = lastedTable;
	}

	public static String getPath() {
		return path;
	}

	public static void setPath(String path) {
		Var.path = path;
		setFileName(path);
	}

	public static String getFileName() {
		return fileName;
	}

	public static void setFileName(String path) {
		Var.fileName = new java.io.File(path).getName();
	}	

	public static String getUploadTime() {
		return uploadTime;
	}

	public static void setUploadTime(String uploadTime) {
		Var.uploadTime = uploadTime;
	}

	public static String getStartTime() {
		return startTime;
	}

	public static void setStartTime(String startTime) {
		Var.startTime = startTime;
	}

	public static String getEndTime() {
		return endTime;
	}

	public static void setEndTime(String endTime) {
		Var.endTime = endTime;
	}

	public static String getPlatform() {
		return platform;
	}

	public static void setPlatform(String str) {
		if (str.startsWith("#Software: Microsoft Internet Information Services")) {
			String[] temp = str.split(": ");
			Var.platform = temp[1];
		} else {
			Var.platform = "UNKNOWN";
		}
	}

	public static String getFileSize() {
		return fileSize;
	}

	public static void setFileSize(String path) {
		Var.fileSize = Text.byteConversion(File.getFileSize(path));
	}

	public static String getRequestNum() {
		return requestNum;
	}

	public static void setRequestNum(int num) {
		Var.requestNum = Integer.toString(num);
	}

	public static String getProcessingTime() {
		return processingTime;
	}

	public static void setProcessingTime(String processingTime) {
		Var.processingTime = processingTime;
	}
	
	public static List<HashMap<String,String>> getLogList() {
		return logList;
	}

	public static void setLogList(List<HashMap<String,String>> logList) {
		Var.logList = logList;
	}
	
	public static List<HashMap<String,String>> getBlackList() {
		return blackList;
	}

	public static void setBlackList(List<HashMap<String,String>> blackList) {
		Var.blackList = blackList;
	}
	
	public static List<HashMap<String,String>> getWhiteList() {
		return whiteList;
	}

	public static void setWhiteList(List<HashMap<String,String>> whiteList) {
		Var.whiteList = whiteList;
	}
}
