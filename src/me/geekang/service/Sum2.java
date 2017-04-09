package me.geekang.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import me.geekang.db.DQL;
import me.geekang.util.IP;
import me.geekang.var.Var;

public class Sum2 {

	public static HashMap<String, Integer> area() {

		List<HashMap<String, String>> ipList = DQL
				.executeQuery("SELECT c_ip FROM " + Var.getLastedTable());
		HashMap<String, Integer> location = new HashMap<String, Integer>();
		location.put("北京",0);
		//...
		location.put("澳门",0);

		for(int i = 0;i < ipList.size(); i++){
			String ipLocation = IP.getIpAddr(ipList.get(i).get("c_ip"));
			
			if(ipLocation.contains("北京")){
				location.put("北京",location.get("北京") + 1);
				continue;
			}
			//...
			if(ipLocation.contains("澳门")){
				location.put("澳门",location.get("澳门") + 1);
				continue;
			}
		}
		
		return location;
	}
	
	public static HashMap<String, Integer> flow() {

		List<HashMap<String, String>> timeList = DQL
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

		List<HashMap<String, String>> timeList = DQL
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

		List<HashMap<String, String>> timeList = DQL
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

		List<HashMap<String, String>> timeList = DQL
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
