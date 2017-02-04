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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>