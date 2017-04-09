package me.geekang.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

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
	
	/**
	 * 
	 * @param fileName 文件名
	 * @return 字符集
	 */
	public static String getCharset(String fileName){  
        
        BufferedInputStream bin = null;
        int p = 0;
        try {
			bin = new BufferedInputStream(new FileInputStream(fileName));
			p = (bin.read() << 8) + bin.read();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
        
          
        String code = null;    
          
        switch (p) {    
            case 0xefbb:    
                code = "UTF-8";    
                break;    
            case 0xfffe:    
                code = "Unicode";    
                break;    
            case 0xfeff:    
                code = "UTF-16BE";    
                break;    
            default:    
                code = "GBK";    
        }    
        return code;  
}  

}
