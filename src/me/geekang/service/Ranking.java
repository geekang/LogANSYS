package me.geekang.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import me.geekang.db.DQL;
import me.geekang.var.Var;

public class Ranking {

	public static LinkedHashMap<String, String> page() {

		List<HashMap<String, String>> pageList = DQL
				.executeQuery("SELECT count(c_ip) AS c,cs_uri_stem,cs_uri_query FROM " + Var.getLastedTable() + " GROUP BY cs_uri_stem,cs_uri_query ORDER BY count(c_ip) DESC LIMIT 100");
		LinkedHashMap<String, String> pageMap = new LinkedHashMap<String, String>();

//		for (int i = 0; i < pageList.size(); i++) {
//			String url = pageList.get(i).get("cs_uri_stem") + "?" + pageList.get(i).get("cs_uri_query");
//			if (pageMap.containsKey(url)) {
//				pageMap.put(url, pageMap.get(url) + 1);
//			} else {
//				pageMap.put(url, 1);
//			}
//		}
		
		for (int i = 0; i < pageList.size(); i++) {
			String url = pageList.get(i).get("cs_uri_stem");
			if(!"-".equals(pageList.get(i).get("cs_uri_query"))){
				url = pageList.get(i).get("cs_uri_stem") + "?" + pageList.get(i).get("cs_uri_query");
			}
			
			pageMap.put(url, pageList.get(i).get("c"));
	}
		return pageMap;
	}

//	public Map<String, Integer> sortMapByValue(Map<String, Integer> oriMap) {
//		Map<String, Integer> sortedMap = new HashMap<String, Integer>();
//		if (oriMap != null && !oriMap.isEmpty()) {
//			List<Map.Entry<String, String>> entryList = new ArrayList<Map.Entry<String, Integer>>(oriMap.entrySet());
//			Collections.sort(entryList, new Comparator<Map.Entry<String, String>>() {
//				public int compare(Entry<String, String> entry1, Entry<String, String> entry2) {
//					int value1 = 0, value2 = 0;
//					try {
//						value1 = getInt(entry1.getValue());
//						value2 = getInt(entry2.getValue());
//					} catch (NumberFormatException e) {
//						value1 = 0;
//						value2 = 0;
//					}
//					return value2 - value1;
//				}
//			});
//			Iterator<Map.Entry<String, String>> iter = entryList.iterator();
//			Map.Entry<String, String> tmpEntry = null;
//			while (iter.hasNext()) {
//				tmpEntry = iter.next();
//				sortedMap.put(tmpEntry.getKey(), tmpEntry.getValue());
//			}
//		}
//		return sortedMap;
//	}

}
