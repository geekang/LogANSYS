package me.geekang.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import me.geekang.db.DQL;
import me.geekang.var.Var;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Blacklist {

	public static String tableAjax(String aoData) {

		JSONArray jsonarray = JSONArray.fromObject(aoData);

		Var.setBlackList(DQL.executeQuery("SELECT ip,method,ua,url,remarks FROM black_list"));

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
		List<HashMap<String, String>> blackList = Var.getBlackList();
		for (int i = 0; i < blackList.size(); i++) {
			String col1 = "<input type='checkbox' class='cbr'>";
			String ip = blackList.get(i).get("ip");
			String method = blackList.get(i).get("method");
			String ua = blackList.get(i).get("ua");
			String url = blackList.get(i).get("url");
			String remark = blackList.get(i).get("remarks");
			String col7 = "<button class='btn btn-red btn-xs' onclick=\"showModel1(this)\">黑名单</button><button class='btn btn-info btn-xs' onclick=\"showModel2(this)\">白名单</button>";
			String[] d = { col1, i + 1 + "", ip, method, ua, url, remark, col7 };
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
