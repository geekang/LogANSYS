package com.geekang.util;

import java.text.SimpleDateFormat;

/**
 * 
 * @description Date related class.
 * @author Geekang
 * @date 2016年1月26日
 * @update 2016年1月26日
 * @version 1.0.1
 */
public class Date {

	/**
	 * 
	 * 
	 * @description Get date or time with given format.
	 * @author Geekang
	 * @date 2016年1月26日
	 * @update 2016年1月26日
	 * @version 1.0.1
	 * @param format
	 * @return String
	 */
	public static String getDate(String format){

		return new SimpleDateFormat(format).format(new java.util.Date());
	}
}
