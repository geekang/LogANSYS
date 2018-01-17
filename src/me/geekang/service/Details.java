package me.geekang.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import eu.bitwalker.useragentutils.UserAgent;
import me.geekang.db.DQL;
import me.geekang.util.IP;
import me.geekang.var.Var;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 
 * @author Geekang
 *
 */
public class Details {

	public static String tableAjax(String aoData) {

		JSONArray jsonarray = JSONArray.fromObject(aoData);

		String sEcho = null;
		// 起始索引
		int iDisplayStart = 0;
		// 每页显示的行数
		int iDisplayLength = 0;

		for (int i = 0; i < jsonarray.size(); i++) {
			JSONObject obj = (JSONObject) jsonarray.get(i);
			if (obj.get("name").equals("sEcho")) {
				sEcho = obj.get("value").toString();
			}

			if (obj.get("name").equals("iDisplayStart")) {
				iDisplayStart = obj.getInt("value");
			}

			if (obj.get("name").equals("iDisplayLength")) {
				iDisplayLength = obj.getInt("value");
			}
		}

		Var.setLogList(DQL.executeQuery(
				"SELECT date,time,s_ip,cs_method,cs_uri_stem,cs_uri_query,s_port,cs_username,c_ip,cs_ua,sc_status,sc_substatus,sc_win32_status FROM "
						+ Var.getLastedTable() + " LIMIT " + iDisplayStart + "," + iDisplayLength));

		// 生成所有的日志数据
		List<String[]> lst = new ArrayList<String[]>();
		List<HashMap<String, String>> logList = Var.getLogList();

		List<HashMap<String, String>> whiteList = DQL
				.executeQuery("SELECT id,ip,method,ua,url,remarks FROM white_list");
		List<HashMap<String, String>> blackList = DQL
				.executeQuery("SELECT id,ip,method,ua,url,remarks FROM black_list");

		String ipColor = "";
		String methodColor = "";
		String uaColor = "";
		String urlColor = "";

		for (int i = 0; i < logList.size(); i++) {
			String color = "";
			String ipColorT = IP.getIPInfo(logList.get(i).get("c_ip"));
			String methodColorT = "";
			String uaColorT = "";
			String urlColorT = "";
			ipColor = ipColorT;
			for (int j = 0; j < whiteList.size(); j++) {
				color = "";
				methodColorT = "";
				uaColorT = "";
				urlColorT = "";
				
				if ((!"".equals(whiteList.get(j).get("ip")))
						&& whiteList.get(j).get("ip").equals(logList.get(i).get("c_ip"))) {
					color = "success";
					ipColorT = "success";
				} else {
					color = "default";
				}
				if ((!"".equals(whiteList.get(j).get("method")))
						&& whiteList.get(j).get("method").equals(logList.get(i).get("cs_method"))) {
					color = "success";
					methodColorT = "success";
				} else {
					color = "default";
				}
				if ((!"".equals(whiteList.get(j).get("ua")))
						&& whiteList.get(j).get("ua").equals(logList.get(i).get("cs_ua"))) {
					color = "success";
					uaColorT = "success";
				} else {
					color = "default";
				}
				String url = logList.get(i).get("cs_uri_stem") + "?" + logList.get(i).get("cs_uri_query");
				if ((!"".equals(whiteList.get(j).get("url"))) && whiteList.get(j).get("url").equals(url)) {
					color = "success";
					urlColorT = "success";
				} else {
					color = "default";
				}

				if ("success".equals(color)) {
					if ("success".equals(ipColorT)) {
						ipColor = "success";
					}
					if ("success".equals(methodColorT)) {
						methodColor = "success";
					}
					if ("success".equals(uaColorT)) {
						uaColor = "success";
					}
					if ("success".equals(urlColorT)) {
						urlColor = "success";
					}
					break;
				}
			}
			for (int j = 0; j < blackList.size(); j++) {
				color = "";
				methodColorT = "";
				uaColorT = "";
				urlColorT = "";

				if ((!"".equals(blackList.get(j).get("ip")))
						&& blackList.get(j).get("ip").equals(logList.get(i).get("c_ip"))) {
					color = "danger";
					ipColorT = "danger";
				} else {
					color = "default";
				}
				if ((!"".equals(blackList.get(j).get("method")))
						&& blackList.get(j).get("method").equals(logList.get(i).get("cs_method"))) {
					color = "danger";
					methodColorT = "danger";
				} else {
					color = "default";
				}
				if ((!"".equals(blackList.get(j).get("ua")))
						&& blackList.get(j).get("ua").equals(logList.get(i).get("cs_ua"))) {
					color = "danger";
					uaColorT = "danger";
				} else {
					color = "default";
				}
				String url = logList.get(i).get("cs_uri_stem") + "?" + logList.get(i).get("cs_uri_query");
				if ((!"".equals(blackList.get(j).get("url"))) && blackList.get(j).get("url").equals(url)) {
					color = "danger";
					urlColorT = "danger";
				} else {
					color = "default";
				}

				if ("danger".equals(color)) {
					if ("danger".equals(ipColorT)) {
						ipColor = "danger";
					}
					if ("danger".equals(methodColorT)) {
						methodColor = "danger";
					}
					if ("danger".equals(uaColorT)) {
						uaColor = "danger";
					}
					if ("danger".equals(urlColorT)) {
						urlColor = "danger";
					}
					break;
				}

			}

			if (!"".equals(ipColor)) {
				ipColor = "label label-" + ipColor;
			}
			if (!"".equals(methodColor)) {
				methodColor = "label label-" + methodColor;
			}
			if (!"".equals(uaColor)) {
				uaColor = "label label-" + uaColor;
			}
			if (!"".equals(urlColor)) {
				urlColor = "label label-" + urlColor;
			}

			String col1 = "<input type='checkbox' class='cbr'>";
			String time = "<span class='' title='" + logList.get(i).get("date") + "'>" + logList.get(i).get("time")
					+ "</span>";
			String ip = "<span class='ip-span " + ipColor + "' title='" + IP.getIpInfo(logList.get(i).get("c_ip"))
					+ "'>" + logList.get(i).get("c_ip") + "</span>";
			String method = "<span class='m-span " + methodColor + "'>" + logList.get(i).get("cs_method") + "</span>";
			
			String uriTitle = null;
			if("-".equals(logList.get(i).get("cs_uri_query"))){
				uriTitle = "";
			} else {
				uriTitle = "title='" + logList.get(i).get("cs_uri_query") + "'";
			}
			String uri = "<span class='url-span " + urlColor + "'" + uriTitle + "'>"
					+ logList.get(i).get("cs_uri_stem") + "</span>";
			
			String stat = "<span class='' title='" + logList.get(i).get("sc_substatus") + "/"
					+ logList.get(i).get("sc_win32_status") + "'>" + logList.get(i).get("sc_status") + "</span>";
			String ua = "<span class='ua-span " + uaColor + "' title='" + logList.get(i).get("cs_ua") + "'>"
					+ UserAgent.parseUserAgentString(logList.get(i).get("cs_ua")).getBrowser().toString() + "</span>";
			String col8 = "-1";
			String col9 = "<button class='btn btn-red btn-xs' onclick=\"showModel1(this)\">黑名单</button><button class='btn btn-info btn-xs' onclick=\"showModel2(this)\">白名单</button>";
			String[] d = { col1, i + 1 + "", time, ip, method, uri, stat, ua, col8, col9 };
			lst.add(d);

			methodColor = "";
			uaColor = "";
			urlColor = "";
		}

		int listTotalSize = Integer.parseInt(
				DQL.executeQuery("SELECT COUNT(*) AS 'count' FROM " + Var.getLastedTable()).get(0).get("count"));

		JSONObject getObj = new JSONObject();
		getObj.put("sEcho", sEcho);
		getObj.put("iTotalRecords", listTotalSize);// 实际的行数
		getObj.put("iTotalDisplayRecords", listTotalSize);// 显示的行数,这个要和上面写的一样

		// if (listTotalSize > (iDisplayStart + iDisplayLength)) {
		// getObj.put("aaData", lst.subList(iDisplayStart, iDisplayStart +
		// iDisplayLength));
		// } else {
		// getObj.put("aaData", lst.subList(iDisplayStart, listTotalSize));
		// }

		getObj.put("aaData", lst);

		return getObj.toString();
	}
}
