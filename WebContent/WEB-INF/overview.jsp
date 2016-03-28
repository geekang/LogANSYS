<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
<title>Overview</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  
<%
List<String[]> list = (List<String[]>)application.getAttribute("logList");
String[] startTime = ((String[])application.getAttribute("startTime"));
String[] logFileInfo;

if(list != null){
%>
<%
logFileInfo = list.get(0);
%>
文件名：<%=logFileInfo[0] %><br />
日志起始时间：<%=logFileInfo[1] %> 至 <%=logFileInfo[2] %><br />
平台：<%=logFileInfo[3] %><br />
文件大小：<%=logFileInfo[4] %><br />
记录数：<%=logFileInfo[5] %><br />
上传时间：<%=startTime[1] %><br />
用时：<%=(System.currentTimeMillis() - Long.parseLong(startTime[0])) %>毫秒<br />
<%}%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>