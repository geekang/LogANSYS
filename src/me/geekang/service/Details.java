package me.geekang.service;

import java.util.ArrayList;
import java.util.List;

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

		// 生成20条测试数据
		List<String[]> lst = new ArrayList<String[]>();
		for (int i = 0; i < 10000; i++) {
			String[] d = { "co1_data" + i, "col2_data" + i };
			lst.add(d);
		}

		JSONObject getObj = new JSONObject();
		getObj.put("sEcho", sEcho);// 不知道这个值有什么用,有知道的请告知一下
		getObj.put("iTotalRecords", lst.size());// 实际的行数
		getObj.put("iTotalDisplayRecords", lst.size());// 显示的行数,这个要和上面写的一样

		getObj.put("aaData", lst.subList(iDisplayStart, iDisplayStart + iDisplayLength));// 要以JSON格式返回
		return getObj.toString();
	}
}
