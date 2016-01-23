<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
<title>LogANSYS</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<p>Choose the file for uploading:
  <form action="upload" method="post" enctype="multipart/form-data">
    <input type=file name=file size=30 />
    <br>
    <input type=submit value=commit />
  </form>
  
<%
List<String[]> list = (List<String[]>)request.getAttribute("logList");

if(list != null){
%>
<table class="table table-bordered table-condensed table-hover">
<% for(int i=0;i<list.size();i++){
String[] record = (String[])list.get(i);
%>
<tr>
<%
if(i == 0){
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