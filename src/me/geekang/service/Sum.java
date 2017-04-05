package me.geekang.service;

import java.util.HashMap;
import java.util.List;

import me.geekang.db.DQL;
import me.geekang.util.IP;
import me.geekang.var.Var;

public class Sum {

	public static HashMap<String, Integer> area() {

		List<HashMap<String, String>> ipList = DQL
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
			
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("北京")){
				location.put("北京",location.get("北京") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("天津")){
				location.put("天津",location.get("天津") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("上海")){
				location.put("上海",location.get("上海") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("重庆")){
				location.put("重庆",location.get("重庆") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("河北")){
				location.put("河北",location.get("河北") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("河南")){
				location.put("河南",location.get("河南") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("云南")){
				location.put("云南",location.get("云南") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("辽宁")){
				location.put("辽宁",location.get("辽宁") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("黑龙江")){
				location.put("黑龙江",location.get("黑龙江") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("湖南")){
				location.put("湖南",location.get("湖南") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("安徽")){
				location.put("安徽",location.get("安徽") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("山东")){
				location.put("山东",location.get("山东") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("新疆")){
				location.put("新疆",location.get("新疆") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("江苏")){
				location.put("江苏",location.get("江苏") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("浙江")){
				location.put("浙江",location.get("浙江") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("江西")){
				location.put("江西",location.get("江西") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("湖北")){
				location.put("湖北",location.get("湖北") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("广西")){
				location.put("广西",location.get("广西") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("甘肃")){
				location.put("甘肃",location.get("甘肃") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("山西")){
				location.put("山西",location.get("山西") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("内蒙古")){
				location.put("内蒙古",location.get("内蒙古") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("陕西")){
				location.put("陕西",location.get("陕西") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("吉林")){
				location.put("吉林",location.get("吉林") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("福建")){
				location.put("福建",location.get("福建") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("贵州")){
				location.put("贵州",location.get("贵州") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("广东")){
				location.put("广东",location.get("广东") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("青海")){
				location.put("青海",location.get("青海") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("西藏")){
				location.put("西藏",location.get("西藏") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("四川")){
				location.put("四川",location.get("四川") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("宁夏")){
				location.put("宁夏",location.get("宁夏") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("海南")){
				location.put("海南",location.get("海南") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("台湾")){
				location.put("台湾",location.get("台湾") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("香港")){
				location.put("香港",location.get("香港") + 1);
				continue;
			}
			if(IP.getIpAddr(ipList.get(i).get("c_ip")).contains("澳门")){
				location.put("澳门",location.get("澳门") + 1);
				continue;
			}
		}
		
		return location;
	}

}
