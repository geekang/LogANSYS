package me.geekang.service;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

import me.geekang.var.Var;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Details {

	public static String tableAjax(String aoData) {

		JSONArray jsonarray = JSONArray.fromObject(aoData);

		String sEcho = null;
		int iDisplayStart = 0; // 起始索引
		int iDisplayLength = 0; // 每页显示的行数

		for (int i = 0; i < jsonarray.size(); i++) {
			JSONObject obj = (JSONObject) jsonarray.get(i);
			if (obj.get("name").equals("sEcho"))
				sEcho = obj.get("value").toString();

			if (obj.get("name").equals("iDisplayStart"))
				iDisplayStart = obj.getInt("value");

			if (obj.get("name").equals("iDisplayLength"))
				iDisplayLength = obj.getInt("value");
		}

		// 生成所有的日志数据
		List<String[]> lst = new ArrayList<String[]>();
		List<TreeMap<String, String>> logList = Var.getLogList();
		for (int i = 0; i < logList.size(); i++) {
			String col1 = "<input type='checkbox' class='cbr'>";
			String time = "<span class='' title='" + logList.get(i).get("date") + "'>" + logList.get(i).get("time")
					+ "</span>";
			String ip = logList.get(i).get("ip");
			String method = logList.get(i).get("cs-method");
			String uri = "<span class='' title='" + logList.get(i).get("cs-uri-query") + "'>"
					+ logList.get(i).get("cs-uri-stem") + "</span>";
			String stat = "<span class='' title='" + logList.get(i).get("sc-substatus") + "/"
					+ logList.get(i).get("sc-win32-status") + "'>" + logList.get(i).get("sc-status") + "</span>";
			String col7 = "<span class='' title='" + logList.get(i).get("cs(User-Agent)") + "'>"
					+ logList.get(i).get("ua") + "</span>";
			String col8 = "123";
			String col9 = "<a href='#' class='btn btn-warning btn-xs btn-icon icon-left'>IP</a><a href='#' class='btn btn-danger btn-xs btn-icon icon-left'>URI</a><a href='#' class='btn btn-info btn-xs btn-icon icon-left'>UA</a>";
			String[] d = { col1, i + 1 + "", time, ip, method, uri, stat, col7, col8, col9 };
			lst.add(d);
		}

		JSONObject getObj = new JSONObject();
		getObj.put("sEcho", sEcho);// 不知道这个值有什么用,有知道的请告知一下
		getObj.put("iTotalRecords", lst.size());// 实际的行数
		getObj.put("iTotalDisplayRecords", lst.size());// 显示的行数,这个要和上面写的一样
		
		if (lst.size() > (iDisplayStart + iDisplayLength)) {
			getObj.put("aaData", lst.subList(iDisplayStart, iDisplayStart + iDisplayLength));
		} else {
			getObj.put("aaData", lst.subList(iDisplayStart, lst.size()));
		}
		return getObj.toString();
	}
}
