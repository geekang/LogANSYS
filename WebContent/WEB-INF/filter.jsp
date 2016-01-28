<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
<title>filter</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  
<%
List<String[]> list = (List<String[]>)application.getAttribute("logList");

if(list != null){
%>
<table class="table table-bordered table-condensed table-hover">
<% for(int i=1;i<list.size();i++){
String[] record = (String[])list.get(i);
%>
<tr>
<%
if(i == 1){
	for(int j = 0; j < record.length; j ++){
		out.println("<th>" + record[j] + "</th>");
	}
	continue;
}
for(int j = 0; j < record.length; j ++){
	out.println("<td>" + record[j] + "</td>");
}

%>
</tr>
<%
}
%>
</table>
<%}%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>