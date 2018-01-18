package me.geekang.service;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import eu.bitwalker.useragentutils.UserAgent;
import me.geekang.db.Dql;
import me.geekang.util.Ip;
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

		Var.setLogList(Dql.executeQuery(
				"SELECT date,time,s_ip,cs_method,cs_uri_stem,cs_uri_query,s_port,cs_username,c_ip,cs_ua,sc_status,sc_substatus,sc_win32_status FROM "
						+ Var.getLastedTable() + " LIMIT " + iDisplayStart + "," + iDisplayLength));

		// 生成所有的日志数据
		List<String[]> lst = new ArrayList<String[]>();
		List<HashMap<String, String>> logList = Var.getLogList();

		List<HashMap<String, String>> whiteList = Dql
				.executeQuery("SELECT id,ip,method,ua,url,remarks FROM white_list");
		List<HashMap<String, String>> blackList = Dql
				.executeQuery("SELECT id,ip,method,ua,url,remarks FROM black_list");

		String color;
		String ipColor;
		String methodColor;
		String uaColor;
		String urlColor;

		for (int i = 0; i < logList.size(); i++) {
			color = "";
			ipColor = "";
//			String ipColorT = Ip.getIPInfo(logList.get(i).get("c_ip"));
			methodColor = "";
			uaColor = "";
			urlColor = "";
			
			
			for (int j = 0; j < whiteList.size(); j++) {
				
				//危险标记
				boolean isSafety = false;
				
				//初始化黑名单列表项目名称
				String[] whiteListItems = {"ip","method","ua","url"};
				
				//声明项目颜色
				String[] itemsColor = new String[whiteListItems.length];
				
				/*
				 * 初始化日志列表项目名称、危险项目标记
				 */
				String[] logListItemValues = new String[whiteListItems.length];
				Boolean[] isSafetyItems = new Boolean[whiteListItems.length];
				logListItemValues[0] = logList.get(i).get("c_ip");
				logListItemValues[1] = logList.get(i).get("cs_method");
				logListItemValues[2] = logList.get(i).get("cs_ua");
				if("-".equals(logList.get(i).get("cs_uri_query"))){
					logListItemValues[3] = logList.get(i).get("cs_uri_stem");
				} else {
					logListItemValues[3] = logList.get(i).get("cs_uri_stem") + "?" + logList.get(i).get("cs_uri_query");
				}
				for(int k = 0; k < whiteListItems.length; k++){
					isSafetyItems[k] = false;
				}				
				
				//设置危险项目标记
				for(int k = 0; k < whiteListItems.length; k++){
					
					if(whiteList.get(j).get(whiteListItems[k]).isEmpty()){
						continue;
					}
					if(whiteList.get(j).get(whiteListItems[k]).equals(logListItemValues[k])){
						isSafetyItems[k] = true;
					}
				}
				
				//判定是否为危险请求
				for(int k = 0; k < whiteListItems.length; k++){
					if(!whiteList.get(j).get(whiteListItems[k]).isEmpty()){
						if(isSafetyItems[k]){
							isSafety = true;
						} else {
							isSafety = false;
							break;
						}
					}
				}
				
				//设定颜色
				if(isSafety){
					for(int k = 0; k < whiteListItems.length; k++){
						if(isSafetyItems[k]){
							itemsColor[k] = "success";
						} else {
							itemsColor[k] = "default";
						}
					}
				}
				
				/*
				 * 更改HTML标签class
				 */
				if(isSafety){
					if(isSafetyItems[0]){
						ipColor = "label label-" + itemsColor[0];
					}
					if(isSafetyItems[1]){
						methodColor = "label label-" + itemsColor[1];
					}
					if(isSafetyItems[2]){
						uaColor = "label label-" + itemsColor[2];
					}
					if(isSafetyItems[3]){
						urlColor = "label label-" + itemsColor[3];
					}
					
					if(isSafety){
						break;
					}
				}
				
			}
			
			for (int j = 0; j < blackList.size(); j++) {
				
				//危险标记
				boolean isDangerous = false;
				
				//初始化黑名单列表项目名称
				String[] blackListItems = {"ip","method","ua","url"};
				
				//声明项目颜色
				String[] itemsColor = new String[blackListItems.length];
				
				/*
				 * 初始化日志列表项目名称、危险项目标记
				 */
				String[] logListItemValues = new String[blackListItems.length];
				Boolean[] isDangerousItems = new Boolean[blackListItems.length];
				logListItemValues[0] = logList.get(i).get("c_ip");
				logListItemValues[1] = logList.get(i).get("cs_method");
				logListItemValues[2] = logList.get(i).get("cs_ua");
				if("-".equals(logList.get(i).get("cs_uri_query"))){
					logListItemValues[3] = logList.get(i).get("cs_uri_stem");
				} else {
					logListItemValues[3] = logList.get(i).get("cs_uri_stem") + "?" + logList.get(i).get("cs_uri_query");
				}
				for(int k = 0; k < blackListItems.length; k++){
					isDangerousItems[k] = false;
				}				
				
				//设置危险项目标记
				for(int k = 0; k < blackListItems.length; k++){
					
					if(blackList.get(j).get(blackListItems[k]).isEmpty()){
						continue;
					}
					if(blackList.get(j).get(blackListItems[k]).equals(logListItemValues[k])){
						isDangerousItems[k] = true;
					}
				}
				
				//判定是否为危险请求
				for(int k = 0; k < blackListItems.length; k++){
					if(!blackList.get(j).get(blackListItems[k]).isEmpty()){
						if(isDangerousItems[k]){
							isDangerous = true;
						} else {
							isDangerous = false;
							break;
						}
					}
				}
				
				//设定颜色
				if(isDangerous){
					for(int k = 0; k < blackListItems.length; k++){
						if(isDangerousItems[k]){
							itemsColor[k] = "danger";
						} else {
							itemsColor[k] = "defalut";
						}
					}
				}
				
				/*
				 * 更改HTML标签class
				 */
				if(isDangerous){
					if(isDangerousItems[0]){
						ipColor = "label label-" + itemsColor[0];
					}
					if(isDangerousItems[1]){
						methodColor = "label label-" + itemsColor[1];
					}
					if(isDangerousItems[2]){
						uaColor = "label label-" + itemsColor[2];
					}
					if(isDangerousItems[3]){
						urlColor = "label label-" + itemsColor[3];
					}
					if(isDangerous){
						break;
					}
				}
				
				
				
			}
			
			String col1 = "<input type='checkbox' class='cbr'>";
			String time = "<span class='' title='" + logList.get(i).get("date") + "'>" + logList.get(i).get("time")
					+ "</span>";
			String ip = "<span class='ip-span " + ipColor + "' title='" + Ip.getIpInfo(logList.get(i).get("c_ip"))
					+ "'>" + logList.get(i).get("c_ip") + "</span>";
			String method = "<span class='m-span " + methodColor + "'>" + logList.get(i).get("cs_method") + "</span>";
			
			//URI显示处理
			String uriTitle = null;
			String uriValue = null;
			String uriQuery = null;
			String uriStem = null;
			try {
				uriQuery = URLDecoder.decode(logList.get(i).get("cs_uri_query"),"UTF-8");
				uriStem = URLDecoder.decode(logList.get(i).get("cs_uri_stem"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if("-".equals(uriQuery)){
				uriTitle = "";
				uriValue = uriStem;
			} else {
				uriTitle = "title='" + uriQuery + "'";
				uriValue = "<strong>" + uriStem + "</strong>?" + uriQuery;
			}
			String uri = "<span class='url-span " + urlColor + "'" + uriTitle + "'>"
					+ uriValue + "</span>";
			
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
				Dql.executeQuery("SELECT COUNT(*) AS 'count' FROM " + Var.getLastedTable()).get(0).get("count"));

		JSONObject getObj = new JSONObject();
		getObj.put("sEcho", sEcho);
		//实际的行数
		getObj.put("iTotalRecords", listTotalSize);
		getObj.put("iTotalDisplayRecords", listTotalSize);// 显示的行数,这个要和上面写的一样

		getObj.put("aaData", lst);

		return getObj.toString();
	}
}
