package me.geekang.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import me.geekang.db.DQL;
import me.geekang.util.IP;
import me.geekang.var.Var;

public class Ranking {

	public static LinkedHashMap<String, String> page() {

		List<HashMap<String, String>> pageList = DQL
				.executeQuery("SELECT count(c_ip) AS c,cs_uri_stem,cs_uri_query FROM " + Var.getLastedTable()
						+ " GROUP BY cs_uri_stem,cs_uri_query ORDER BY count(c_ip) DESC LIMIT 100");
		LinkedHashMap<String, String> pageMap = new LinkedHashMap<String, String>();

		for (int i = 0; i < pageList.size(); i++) {
			String url = pageList.get(i).get("cs_uri_stem");
			if (!"-".equals(pageList.get(i).get("cs_uri_query"))) {
				url = pageList.get(i).get("cs_uri_stem") + "?" + pageList.get(i).get("cs_uri_query");
			}

			pageMap.put(url, pageList.get(i).get("c"));
		}
		return pageMap;
	}
	
	public static LinkedHashMap<String, String> ip() {

		List<HashMap<String, String>> pageList = DQL
				.executeQuery("SELECT count(cs_uri_stem) AS c,c_ip FROM " + Var.getLastedTable()
						+ " GROUP BY c_ip ORDER BY count(cs_uri_stem) DESC LIMIT 100");
		LinkedHashMap<String, String> pageMap = new LinkedHashMap<String, String>();

		for (int i = 0; i < pageList.size(); i++) {
			String ipColor =  IP.getIPInfo(pageList.get(i).get("c_ip"));
			if(!"".equals(ipColor)){
				ipColor = "label label-" + ipColor;
			}
			String ip = "<span class='ip-span " + ipColor + "' title='"
					+ IP.getIpAddr(pageList.get(i).get("c_ip")) + "'>" + pageList.get(i).get("c_ip") + "</span>";;

			pageMap.put(ip, pageList.get(i).get("c"));
		}
		return pageMap;
	}

}
