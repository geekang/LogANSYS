package com.geekang.util;


public class File {
	
	public static String getFileLength(String filePath){
		
		long fileLength = 0;
		
		java.io.File f = new java.io.File(filePath);
		
	    if (f.exists() && f.isFile()){  
	    	fileLength = f.length();  
	    }
	    
	    return Long.toString(fileLength);
	}

}