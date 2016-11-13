package me.geekang.util;

/**
 * 文件处理工具类
 * @author Geekang
 *
 */
public final class File {
	
	/**
	 * 取得文件大小
	 * @param filePath 文件路径
	 * @return 文件大小
	 */
	public static long getFileSize(String filePath){
		
		//文件大小
		long fileLength = 0;
		
		java.io.File file = new java.io.File(filePath);
		
	    if (file.exists() && file.isFile()){  
	    	fileLength = file.length();  
	    }
	    
	    return fileLength;
	}

}
