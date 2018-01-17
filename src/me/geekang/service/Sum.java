package me.geekang.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import me.geekang.db.Dql;
import me.geekang.util.Ip;
import me.geekang.var.Var;

public class Sum {

	public static HashMap<String, Integer> area() {

		List<HashMap<String, String>> ipList = Dql
				.executeQuery("SELECT c_ip FROM " + Var.getLastedTable());
		HashMap<String, Integer> location = new HashMap<String, Integer>();
		location.put("北京",0);
		location.put("天津",0);
		location.put("上海",0);
		location.put("重庆",0);
		location.put("河北",0);
		location.put("河南",0);
		location.put("云南",0);
		location.put("辽宁",0);
		location.put("黑龙江",0);
		location.put("湖南",0);
		location.put("安徽",0);
		location.put("山东",0);
		location.put("新疆",0);
		location.put("江苏",0);
		location.put("浙江",0);
		location.put("江西",0);
		location.put("湖北",0);
		location.put("广西",0);
		location.put("甘肃",0);
		location.put("山西",0);
		location.put("内蒙古",0);
		location.put("陕西",0);
		location.put("吉林",0);
		location.put("福建",0);
		location.put("贵州",0);
		location.put("广东",0);
		location.put("青海",0);
		location.put("西藏",0);
		location.put("四川",0);
		location.put("宁夏",0);
		location.put("海南",0);
		location.put("台湾",0);
		location.put("香港",0);
		location.put("澳门",0);

		for(int i = 0;i < ipList.size(); i++){
			String ipLocation = Ip.getIpCountry(ipList.get(i).get("c_ip"));
			
			if(ipLocation.contains("北京")){
				location.put("北京",location.get("北京") + 1);
				continue;
			}
			if(ipLocation.contains("天津")){
				location.put("天津",location.get("天津") + 1);
				continue;
			}
			if(ipLocation.contains("上海")){
				location.put("上海",location.get("上海") + 1);
				continue;
			}
			if(ipLocation.contains("重庆")){
				location.put("重庆",location.get("重庆") + 1);
				continue;
			}
			if(ipLocation.contains("河北")){
				location.put("河北",location.get("河北") + 1);
				continue;
			}
			if(ipLocation.contains("河南")){
				location.put("河南",location.get("河南") + 1);
				continue;
			}
			if(ipLocation.contains("云南")){
				location.put("云南",location.get("云南") + 1);
				continue;
			}
			if(ipLocation.contains("辽宁")){
				location.put("辽宁",location.get("辽宁") + 1);
				continue;
			}
			if(ipLocation.contains("黑龙江")){
				location.put("黑龙江",location.get("黑龙江") + 1);
				continue;
			}
			if(ipLocation.contains("湖南")){
				location.put("湖南",location.get("湖南") + 1);
				continue;
			}
			if(ipLocation.contains("安徽")){
				location.put("安徽",location.get("安徽") + 1);
				continue;
			}
			if(ipLocation.contains("山东")){
				location.put("山东",location.get("山东") + 1);
				continue;
			}
			if(ipLocation.contains("新疆")){
				location.put("新疆",location.get("新疆") + 1);
				continue;
			}
			if(ipLocation.contains("江苏")){
				location.put("江苏",location.get("江苏") + 1);
				continue;
			}
			if(ipLocation.contains("浙江")){
				location.put("浙江",location.get("浙江") + 1);
				continue;
			}
			if(ipLocation.contains("江西")){
				location.put("江西",location.get("江西") + 1);
				continue;
			}
			if(ipLocation.contains("湖北")){
				location.put("湖北",location.get("湖北") + 1);
				continue;
			}
			if(ipLocation.contains("广西")){
				location.put("广西",location.get("广西") + 1);
				continue;
			}
			if(ipLocation.contains("甘肃")){
				location.put("甘肃",location.get("甘肃") + 1);
				continue;
			}
			if(ipLocation.contains("山西")){
				location.put("山西",location.get("山西") + 1);
				continue;
			}
			if(ipLocation.contains("内蒙古")){
				location.put("内蒙古",location.get("内蒙古") + 1);
				continue;
			}
			if(ipLocation.contains("陕西")){
				location.put("陕西",location.get("陕西") + 1);
				continue;
			}
			if(ipLocation.contains("吉林")){
				location.put("吉林",location.get("吉林") + 1);
				continue;
			}
			if(ipLocation.contains("福建")){
				location.put("福建",location.get("福建") + 1);
				continue;
			}
			if(ipLocation.contains("贵州")){
				location.put("贵州",location.get("贵州") + 1);
				continue;
			}
			if(ipLocation.contains("广东")){
				location.put("广东",location.get("广东") + 1);
				continue;
			}
			if(ipLocation.contains("青海")){
				location.put("青海",location.get("青海") + 1);
				continue;
			}
			if(ipLocation.contains("西藏")){
				location.put("西藏",location.get("西藏") + 1);
				continue;
			}
			if(ipLocation.contains("四川")){
				location.put("四川",location.get("四川") + 1);
				continue;
			}
			if(ipLocation.contains("宁夏")){
				location.put("宁夏",location.get("宁夏") + 1);
				continue;
			}
			if(ipLocation.contains("海南")){
				location.put("海南",location.get("海南") + 1);
				continue;
			}
			if(ipLocation.contains("台湾")){
				location.put("台湾",location.get("台湾") + 1);
				continue;
			}
			if(ipLocation.contains("香港")){
				location.put("香港",location.get("香港") + 1);
				continue;
			}
			if(ipLocation.contains("澳门")){
				location.put("澳门",location.get("澳门") + 1);
				continue;
			}
		}
		
		return location;
	}
	
	public static HashMap<String, Integer> flow() {

		List<HashMap<String, String>> timeList = Dql
				.executeQuery("SELECT time FROM " + Var.getLastedTable());
		LinkedHashMap<String, Integer> time = new LinkedHashMap<String, Integer>();
		
		time.put("00",0);
		time.put("01",0);
		time.put("02",0);
		time.put("03",0);
		time.put("04",0);
		time.put("05",0);
		time.put("06",0);
		time.put("07",0);
		time.put("08",0);
		time.put("09",0);
		time.put("10",0);
		time.put("11",0);
		time.put("12",0);
		time.put("13",0);
		time.put("14",0);
		time.put("15",0);
		time.put("16",0);
		time.put("17",0);
		time.put("18",0);
		time.put("19",0);
		time.put("20",0);
		time.put("21",0);
		time.put("22",0);
		time.put("23",0);

		for(int i = 0;i < timeList.size(); i++){
			String[] hours = timeList.get(i).get("time").split(":");
			
			if("00".equals(hours[0])){
				time.put("00",time.get("00") + 1);
				continue;
			}
			if("01".equals(hours[0])){
				time.put("01",time.get("01") + 1);
				continue;
			}
			if("02".equals(hours[0])){
				time.put("02",time.get("02") + 1);
				continue;
			}
			if("03".equals(hours[0])){
				time.put("03",time.get("03") + 1);
				continue;
			}
			if("04".equals(hours[0])){
				time.put("04",time.get("04") + 1);
				continue;
			}
			if("05".equals(hours[0])){
				time.put("05",time.get("05") + 1);
				continue;
			}
			if("06".equals(hours[0])){
				time.put("06",time.get("06") + 1);
				continue;
			}
			if("07".equals(hours[0])){
				time.put("07",time.get("07") + 1);
				continue;
			}
			if("08".equals(hours[0])){
				time.put("08",time.get("08") + 1);
				continue;
			}
			if("09".equals(hours[0])){
				time.put("09",time.get("09") + 1);
				continue;
			}
			if("10".equals(hours[0])){
				time.put("10",time.get("10") + 1);
				continue;
			}
			if("11".equals(hours[0])){
				time.put("11",time.get("11") + 1);
				continue;
			}
			if("12".equals(hours[0])){
				time.put("12",time.get("12") + 1);
				continue;
			}
			if("13".equals(hours[0])){
				time.put("13",time.get("13") + 1);
				continue;
			}
			if("14".equals(hours[0])){
				time.put("14",time.get("14") + 1);
				continue;
			}
			if("15".equals(hours[0])){
				time.put("15",time.get("15") + 1);
				continue;
			}
			if("16".equals(hours[0])){
				time.put("16",time.get("16") + 1);
				continue;
			}
			if("17".equals(hours[0])){
				time.put("17",time.get("17") + 1);
				continue;
			}
			if("18".equals(hours[0])){
				time.put("18",time.get("18") + 1);
				continue;
			}
			if("19".equals(hours[0])){
				time.put("19",time.get("19") + 1);
				continue;
			}
			if("20".equals(hours[0])){
				time.put("20",time.get("20") + 1);
				continue;
			}
			if("21".equals(hours[0])){
				time.put("21",time.get("21") + 1);
				continue;
			}
			if("22".equals(hours[0])){
				time.put("22",time.get("22") + 1);
				continue;
			}
			if("23".equals(hours[0])){
				time.put("23",time.get("23") + 1);
				continue;
			}
		}
		
		return time;
	}
	
	public static HashMap<String, Integer> flow200301304() {

		List<HashMap<String, String>> timeList = Dql
				.executeQuery("SELECT time FROM " + Var.getLastedTable() + " WHERE sc_status='200' or sc_status='301' or sc_status='304'");
		LinkedHashMap<String, Integer> time = new LinkedHashMap<String, Integer>();
		
		time.put("00",0);
		time.put("01",0);
		time.put("02",0);
		time.put("03",0);
		time.put("04",0);
		time.put("05",0);
		time.put("06",0);
		time.put("07",0);
		time.put("08",0);
		time.put("09",0);
		time.put("10",0);
		time.put("11",0);
		time.put("12",0);
		time.put("13",0);
		time.put("14",0);
		time.put("15",0);
		time.put("16",0);
		time.put("17",0);
		time.put("18",0);
		time.put("19",0);
		time.put("20",0);
		time.put("21",0);
		time.put("22",0);
		time.put("23",0);

		for(int i = 0;i < timeList.size(); i++){
			String[] hours = timeList.get(i).get("time").split(":");
			
			if("00".equals(hours[0])){
				time.put("00",time.get("00") + 1);
				continue;
			}
			if("01".equals(hours[0])){
				time.put("01",time.get("01") + 1);
				continue;
			}
			if("02".equals(hours[0])){
				time.put("02",time.get("02") + 1);
				continue;
			}
			if("03".equals(hours[0])){
				time.put("03",time.get("03") + 1);
				continue;
			}
			if("04".equals(hours[0])){
				time.put("04",time.get("04") + 1);
				continue;
			}
			if("05".equals(hours[0])){
				time.put("05",time.get("05") + 1);
				continue;
			}
			if("06".equals(hours[0])){
				time.put("06",time.get("06") + 1);
				continue;
			}
			if("07".equals(hours[0])){
				time.put("07",time.get("07") + 1);
				continue;
			}
			if("08".equals(hours[0])){
				time.put("08",time.get("08") + 1);
				continue;
			}
			if("09".equals(hours[0])){
				time.put("09",time.get("09") + 1);
				continue;
			}
			if("10".equals(hours[0])){
				time.put("10",time.get("10") + 1);
				continue;
			}
			if("11".equals(hours[0])){
				time.put("11",time.get("11") + 1);
				continue;
			}
			if("12".equals(hours[0])){
				time.put("12",time.get("12") + 1);
				continue;
			}
			if("13".equals(hours[0])){
				time.put("13",time.get("13") + 1);
				continue;
			}
			if("14".equals(hours[0])){
				time.put("14",time.get("14") + 1);
				continue;
			}
			if("15".equals(hours[0])){
				time.put("15",time.get("15") + 1);
				continue;
			}
			if("16".equals(hours[0])){
				time.put("16",time.get("16") + 1);
				continue;
			}
			if("17".equals(hours[0])){
				time.put("17",time.get("17") + 1);
				continue;
			}
			if("18".equals(hours[0])){
				time.put("18",time.get("18") + 1);
				continue;
			}
			if("19".equals(hours[0])){
				time.put("19",time.get("19") + 1);
				continue;
			}
			if("20".equals(hours[0])){
				time.put("20",time.get("20") + 1);
				continue;
			}
			if("21".equals(hours[0])){
				time.put("21",time.get("21") + 1);
				continue;
			}
			if("22".equals(hours[0])){
				time.put("22",time.get("22") + 1);
				continue;
			}
			if("23".equals(hours[0])){
				time.put("23",time.get("23") + 1);
				continue;
			}
		}
		
		return time;
	}
	
	public static HashMap<String, Integer> flow404() {

		List<HashMap<String, String>> timeList = Dql
				.executeQuery("SELECT time FROM " + Var.getLastedTable() + " WHERE sc_status='404'");
		LinkedHashMap<String, Integer> time = new LinkedHashMap<String, Integer>();
		
		time.put("00",0);
		time.put("01",0);
		time.put("02",0);
		time.put("03",0);
		time.put("04",0);
		time.put("05",0);
		time.put("06",0);
		time.put("07",0);
		time.put("08",0);
		time.put("09",0);
		time.put("10",0);
		time.put("11",0);
		time.put("12",0);
		time.put("13",0);
		time.put("14",0);
		time.put("15",0);
		time.put("16",0);
		time.put("17",0);
		time.put("18",0);
		time.put("19",0);
		time.put("20",0);
		time.put("21",0);
		time.put("22",0);
		time.put("23",0);

		for(int i = 0;i < timeList.size(); i++){
			String[] hours = timeList.get(i).get("time").split(":");
			
			if("00".equals(hours[0])){
				time.put("00",time.get("00") + 1);
				continue;
			}
			if("01".equals(hours[0])){
				time.put("01",time.get("01") + 1);
				continue;
			}
			if("02".equals(hours[0])){
				time.put("02",time.get("02") + 1);
				continue;
			}
			if("03".equals(hours[0])){
				time.put("03",time.get("03") + 1);
				continue;
			}
			if("04".equals(hours[0])){
				time.put("04",time.get("04") + 1);
				continue;
			}
			if("05".equals(hours[0])){
				time.put("05",time.get("05") + 1);
				continue;
			}
			if("06".equals(hours[0])){
				time.put("06",time.get("06") + 1);
				continue;
			}
			if("07".equals(hours[0])){
				time.put("07",time.get("07") + 1);
				continue;
			}
			if("08".equals(hours[0])){
				time.put("08",time.get("08") + 1);
				continue;
			}
			if("09".equals(hours[0])){
				time.put("09",time.get("09") + 1);
				continue;
			}
			if("10".equals(hours[0])){
				time.put("10",time.get("10") + 1);
				continue;
			}
			if("11".equals(hours[0])){
				time.put("11",time.get("11") + 1);
				continue;
			}
			if("12".equals(hours[0])){
				time.put("12",time.get("12") + 1);
				continue;
			}
			if("13".equals(hours[0])){
				time.put("13",time.get("13") + 1);
				continue;
			}
			if("14".equals(hours[0])){
				time.put("14",time.get("14") + 1);
				continue;
			}
			if("15".equals(hours[0])){
				time.put("15",time.get("15") + 1);
				continue;
			}
			if("16".equals(hours[0])){
				time.put("16",time.get("16") + 1);
				continue;
			}
			if("17".equals(hours[0])){
				time.put("17",time.get("17") + 1);
				continue;
			}
			if("18".equals(hours[0])){
				time.put("18",time.get("18") + 1);
				continue;
			}
			if("19".equals(hours[0])){
				time.put("19",time.get("19") + 1);
				continue;
			}
			if("20".equals(hours[0])){
				time.put("20",time.get("20") + 1);
				continue;
			}
			if("21".equals(hours[0])){
				time.put("21",time.get("21") + 1);
				continue;
			}
			if("22".equals(hours[0])){
				time.put("22",time.get("22") + 1);
				continue;
			}
			if("23".equals(hours[0])){
				time.put("23",time.get("23") + 1);
				continue;
			}
		}
		
		return time;
	}
	
	public static HashMap<String, Integer> flow500() {

		List<HashMap<String, String>> timeList = Dql
				.executeQuery("SELECT time FROM " + Var.getLastedTable() + " WHERE sc_status='500'");
		LinkedHashMap<String, Integer> time = new LinkedHashMap<String, Integer>();
		
		time.put("00",0);
		time.put("01",0);
		time.put("02",0);
		time.put("03",0);
		time.put("04",0);
		time.put("05",0);
		time.put("06",0);
		time.put("07",0);
		time.put("08",0);
		time.put("09",0);
		time.put("10",0);
		time.put("11",0);
		time.put("12",0);
		time.put("13",0);
		time.put("14",0);
		time.put("15",0);
		time.put("16",0);
		time.put("17",0);
		time.put("18",0);
		time.put("19",0);
		time.put("20",0);
		time.put("21",0);
		time.put("22",0);
		time.put("23",0);

		for(int i = 0;i < timeList.size(); i++){
			String[] hours = timeList.get(i).get("time").split(":");
			
			if("00".equals(hours[0])){
				time.put("00",time.get("00") + 1);
				continue;
			}
			if("01".equals(hours[0])){
				time.put("01",time.get("01") + 1);
				continue;
			}
			if("02".equals(hours[0])){
				time.put("02",time.get("02") + 1);
				continue;
			}
			if("03".equals(hours[0])){
				time.put("03",time.get("03") + 1);
				continue;
			}
			if("04".equals(hours[0])){
				time.put("04",time.get("04") + 1);
				continue;
			}
			if("05".equals(hours[0])){
				time.put("05",time.get("05") + 1);
				continue;
			}
			if("06".equals(hours[0])){
				time.put("06",time.get("06") + 1);
				continue;
			}
			if("07".equals(hours[0])){
				time.put("07",time.get("07") + 1);
				continue;
			}
			if("08".equals(hours[0])){
				time.put("08",time.get("08") + 1);
				continue;
			}
			if("09".equals(hours[0])){
				time.put("09",time.get("09") + 1);
				continue;
			}
			if("10".equals(hours[0])){
				time.put("10",time.get("10") + 1);
				continue;
			}
			if("11".equals(hours[0])){
				time.put("11",time.get("11") + 1);
				continue;
			}
			if("12".equals(hours[0])){
				time.put("12",time.get("12") + 1);
				continue;
			}
			if("13".equals(hours[0])){
				time.put("13",time.get("13") + 1);
				continue;
			}
			if("14".equals(hours[0])){
				time.put("14",time.get("14") + 1);
				continue;
			}
			if("15".equals(hours[0])){
				time.put("15",time.get("15") + 1);
				continue;
			}
			if("16".equals(hours[0])){
				time.put("16",time.get("16") + 1);
				continue;
			}
			if("17".equals(hours[0])){
				time.put("17",time.get("17") + 1);
				continue;
			}
			if("18".equals(hours[0])){
				time.put("18",time.get("18") + 1);
				continue;
			}
			if("19".equals(hours[0])){
				time.put("19",time.get("19") + 1);
				continue;
			}
			if("20".equals(hours[0])){
				time.put("20",time.get("20") + 1);
				continue;
			}
			if("21".equals(hours[0])){
				time.put("21",time.get("21") + 1);
				continue;
			}
			if("22".equals(hours[0])){
				time.put("22",time.get("22") + 1);
				continue;
			}
			if("23".equals(hours[0])){
				time.put("23",time.get("23") + 1);
				continue;
			}
		}
		
		return time;
	}

}
