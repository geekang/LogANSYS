package com.geekang.util;

import java.text.SimpleDateFormat;

/**
 * 
 * @description Date related class.
 * @author Geekang
 * @date 2016年1月26日
 * @update 2016年3月28日
 * @version 1.0.2
 */
public final class Date {

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
	
	
	/**
	 * 
	 * 
	 * @description Transform timestamp to format date.
	 * @author Geekang
	 * @date 2016年3月28日
	 * @update 2016年3月28日
	 * @version 1.0.1
	 * @param Timestamp,format
	 * @return String
	 */
	public static String FormatDate(long Timestamp,String format){

		return new SimpleDateFormat(format).format(new java.util.Date(Timestamp * 1));
	}
}
