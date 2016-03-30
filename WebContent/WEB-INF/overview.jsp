<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="zh-CN" class="bootstrap-layout" >
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LogAnsys</title>
    <link rel="stylesheet" href="css/bootstra1p.min.css">
    <link href="./Demo _ AdminPlus Lite_files/icon.css" rel="stylesheet">
    <link href="./Demo _ AdminPlus Lite_files/css.css" rel="stylesheet">
    <link href="./Demo _ AdminPlus Lite_files/demo.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8" async="" src="./Demo _ AdminPlus Lite_files/3.3.js"></script>
    <script type="text/javascript" charset="utf-8" async="" src="./Demo _ AdminPlus Lite_files/0.0.js"></script>
    <script type="text/javascript" charset="utf-8" async="" src="./Demo _ AdminPlus Lite_files/2.2.js"></script>
  </head>
  
  <body class="layout-container ls-top-navbar si-l3-md-up breakpoint-1200">
    <nav class="navbar navbar-light bg-white navbar-full navbar-fixed-top ls-left-sidebar">
      <button class="navbar-toggler pull-xs-left active" type="button" data-toggle="sidebar" data-target="#sidebar">
        <span class="material-icons">menu</span>
      </button>
      <span class="navbar-brand">Demo</span>
      <ul class="nav navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="http://adminplus.themekit.io/">Docs</a>
        </li>
      </ul>
      <iframe class="btn-github" src="./Demo _ AdminPlus Lite_files/github-btn.html" frameborder="0" scrolling="0" width="100px" height="30px"></iframe>
    </nav>
    <div class="sidebar sidebar-dark bg-primary sidebar-left si-si-3 sidebar-visible" id="sidebar">
      <a class="sidebar-brand active" href="http://adminplus.themekit.io/">AdminPlus Lite</a>
      <div class="sidebar-heading">Components</div>
      <ul class="nav components-nav sidebar-menu">
        <li class="nav-item sidebar-menu-item open">
          <a href="http://adminplus.themekit.io/demo#button" class="nav-link sidebar-menu-button">Button</a>
          <ul class="sidebar-submenu">
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#button">Button style</a>
            </li>
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#button-group">Button group</a>
            </li>
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#button-dropdown">Button dropdown</a>
            </li>
          </ul>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#forms" class="nav-link sidebar-menu-button">Forms</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#input-group" class="nav-link sidebar-menu-button">Input group</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#dropdown" class="nav-link sidebar-menu-button">Dropdown</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#jumbotron" class="nav-link sidebar-menu-button">Jumbotron</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#label" class="nav-link sidebar-menu-button">Label</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#alert" class="nav-link sidebar-menu-button">Alert</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#card" class="nav-link sidebar-menu-button">Card</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#navs" class="nav-link sidebar-menu-button">Navs</a>
          <ul class="sidebar-submenu">
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#navs">Base</a>
            </li>
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#tabs">Tabs</a>
            </li>
            <li class="sidebar-menu-item">
              <a class="sidebar-menu-button" href="http://adminplus.themekit.io/demo#pills">Pills</a>
            </li>
          </ul>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#navbar" class="nav-link sidebar-menu-button">Navbar</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#sidebar-example" class="nav-link sidebar-menu-button">Sidebar</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#breadcrumb" class="nav-link sidebar-menu-button">Breadcrumb</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#pagination" class="nav-link sidebar-menu-button">Pagination</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#progress" class="nav-link sidebar-menu-button">Progress</a>
        </li>
        <li class="nav-item sidebar-menu-item">
          <a href="http://adminplus.themekit.io/demo#list-group" class="nav-link sidebar-menu-button">List Group</a>
        </li>
      </ul>
    </div>
    
    <div class="layout-content" data-scrollable="">
      <div class="container-fluid">
        <div class="page-heading center" id="button">
          <h2>概况</h2>
          <!--<p class="lead">Use Bootstrap’s custom button styles for actions in forms, dialogs, and more. Includes support for a handful of contextual variations, sizes, states, and more.</p>
          -->
        </div>
        <div class="card" id="button-style">
          <div class="card-header">
            <h4 class="card-title">Button style</h4>
          </div>
        <div class="card-block">
          <button type="button" class="btn btn-white">White</button>
          <button type="button" class="btn btn-primary">Primary</button>
          <button type="button" class="btn btn-secondary">Secondary</button>
          <button type="button" class="btn btn-success">Success</button>
          <button type="button" class="btn btn-info">Info</button>
          <button type="button" class="btn btn-warning">Warning</button>
          <button type="button" class="btn btn-danger">Danger</button>
          <button type="button" class="btn btn-link">Link</button>
          <hr>
          <button type="button" class="btn btn-white btn-rounded">White</button>
          <button type="button" class="btn btn-primary btn-rounded">Primary</button>
          <button type="button" class="btn btn-secondary btn-rounded">Secondary</button>
          <button type="button" class="btn btn-success btn-rounded">Success</button>
          <button type="button" class="btn btn-info btn-rounded">Info</button>
          <button type="button" class="btn btn-warning btn-rounded">Warning</button>
          <button type="button" class="btn btn-danger btn-rounded">Danger</button>
          <hr>
          <button type="button" class="btn btn-primary-outline">Primary</button>
          <button type="button" class="btn btn-secondary-outline">Secondary</button>
          <button type="button" class="btn btn-success-outline">Success</button>
          <button type="button" class="btn btn-info-outline">Info</button>
          <button type="button" class="btn btn-warning-outline">Warning</button>
          <button type="button" class="btn btn-danger-outline">Danger</button>
        </div>
      </div>
      <div class="card" id="button-group">
        <div class="card-header">
          <h4 class="card-title">Button group</h4>
        </div>
        <div class="card-block">
          <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-default">Left</button>
            <button type="button" class="btn btn-default">Middle</button>
            <button type="button" class="btn btn-default">Right</button>
          </div>
          <hr>
          <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
            <button type="button" class="btn btn-white">Button</button>
            <button type="button" class="btn btn-white">Button</button>
            <button type="button" class="btn btn-white">Button</button>
            <button type="button" class="btn btn-white">Button</button>
          </div>
        </div>
      </div>
      <div class="card" id="button-dropdown">
        <div class="card-header">
          <h4 class="card-title">Button dropdown</h4>
        </div>
        <div class="card-block">
          <div class="btn-group">
            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Default</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Primary</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Success</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Info</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Warning</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
             <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danger</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Another action</a>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="http://adminplus.themekit.io/demo#">Separated link</a>
            </div>
          </div>
        </div>
      </div>
              
<%
List<String[]> list = (List<String[]>)application.getAttribute("logList");
String[] time = ((String[])application.getAttribute("time"));
String[] logFileInfo;
if(time[2] == null){
	time[2] = Long.toString(System.currentTimeMillis() - Long.parseLong(time[0]));
}


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
上传时间：<%=time[1] %><br />
用时：<%=time[2] %>毫秒<br />
<%}%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

	
	<!-- App JS -->
	<script src="./Demo _ AdminPlus Lite_files/demo1.js"></script>
</body>
</html>