package me.geekang.util;

import java.text.DecimalFormat;

/**
 * 文本处理类
 * 
 * @author Geekang
 *
 */
public final class Text {

	static final double KB = 1024;
	static final double MB = 1024 * 1024;
	static final double GB = 1024 * 1024 * 1024;

	/**
	 * 将字节转换成其他单位
	 * 
	 * @param byteSize 字节大小
	 * @return 换算结果
	 */
	public static String byteConversion(long byteSize) {

		if (byteSize > GB) {
			return byteConversion(byteSize, "G");
		} else if (byteSize > MB) {
			return byteConversion(byteSize, "M");
		} else if (byteSize > KB) {
			return byteConversion(byteSize, "K");
		} else {
			return byteConversion(byteSize, "B");
		}
	}

	/**
	 * 将字节转换成其他单位
	 * 
	 * @param byteSize
	 *            字节大小
	 * @param targetUnit
	 *            目标单位
	 * @return 换算结果
	 */
	public static String byteConversion(long byteSize, String targetUnit) {

		// 需要返回的结果
		String result = "";

		// 将输入的目标单位统一转换为大写
		targetUnit = targetUnit.toUpperCase();
		// 结果保留三位小数
		DecimalFormat df = new DecimalFormat("#.###");

		if ("K".equals(targetUnit)) {
			result = df.format(byteSize / KB) + "K";
		} else if ("M".equals(targetUnit)) {
			result = df.format(byteSize / MB) + "M";
		} else if ("G".equals(targetUnit)) {
			result = df.format(byteSize / GB) + "G";
		} else {
			result = byteSize + "B";
		}

		return result;
	}
}
