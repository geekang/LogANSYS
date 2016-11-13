<%@page import="com.geekang.util.IP"%>
<%@ page language="java" contentType="text/javascript;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="eu.bitwalker.useragentutils.UserAgent" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<body class="page-body">

	
	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
			
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->

		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->


			
			
			<!-- Removing search and results count filter 
			
			{bSortable: false,"sWidth": "3%"},
								{"mDataProp" : "No",bSortable: false,"sWidth": "5%"},
								{"mDataProp" : "时间",bSortable: true,"sWidth": "8%"},
								{"mDataProp" : "IP",bSortable: true,"sWidth": "12%"},
								{"mDataProp" : "方法 ",bSortable: false,"sWidth": "5%"},
								{"mDataProp" : "URI "},
								{"mDataProp" : "状态",bSortable: false,"sWidth": "5%"},
								{"mDataProp" : "UA",bSortable: true,"sWidth": "9%"},
								{"mDataProp" : "用时",bSortable: true,"sWidth": "7%"},
								{"mDataProp" : "封禁操作",bSortable: false,"sWidth": "12%"},
			
			
			-->
			<div class="panel panel-default">
				<div class="panel-body">

					
					<table class="table table-bordered table-striped table-hover" id="example-2">

						
						<tbody class="middle-align">
						<%
List<String[]> list = (List<String[]>)application.getAttribute("logList");

if(list != null){
%>
						<% for(int i=2;i < list.size();i++){//list.size()
String[] record = (String[])list.get(i);
%>
							<tr>
								<td>
									<input type="checkbox" class="cbr">
								</td>
								<%
								//序号
								out.println("<td>" + (i - 1) + "</td>");
								//时间（日期）
								out.println("<td><span class='' title='" + record[0] + "'>" + record[1] + "</span></td>");//<span class="label label-warning" title="2010-10-29">00:01:36</span>
								//IP
								out.println("<td>" + IP.getIPInfo(record[8]) + "</td>");//<span class="label label-warning" title="2010-10-29">00:01:36</span>
								//方法
								out.println("<td>" + record[3] + "</td>");
								//URI（URI查询）
								out.println("<td><span class='' title='" + record[5] + "'>" + record[4] + "</span></td>");//4
								//状态码（子状态码/Win32状态）
								out.println("<td><span class='' title='" + record[11] + "/" + record[12] + "'>" + record[10] + "</span></td>");
								//UA
								String ua = record[9].replaceAll("\\+", " ");
								out.println("<td><span class='' title='" + ua + "'>" + UserAgent.parseUserAgentString(ua).getBrowser() + "</span></td>");
								//Win32状态
								//out.println("<td>" + record[12] + "</td>");
								//用时
								out.println("<td>" + record[13] + "</td>");

								%>
								<td>
									<a href="#" class="btn btn-warning btn-xs btn-icon icon-left">IP</a>
									
									<a href="#" class="btn btn-danger btn-xs btn-icon icon-left">URI</a>
									
									<a href="#" class="btn btn-info btn-xs btn-icon icon-left">UA</a>
								</td>
							</tr>
							<%
}
%><%}%>
							<!--
							
							<tr>
								<td>
									<input type="checkbox" class="cbr">
								</td>
								<td><span class="label label-warning" title="2010-10-29">00:01:36</span></td>
								<td><span class="label label-danger" title="山东济南联通">123.232.100.100</span></td>
								<td>GET</td>
								<td>
									<a href="#" class="btn btn-warning btn-xs btn-icon icon-left">IP</a>
									
									<a href="#" class="btn btn-danger btn-xs btn-icon icon-left">URI</a>
									
									<a href="#" class="btn btn-info btn-xs btn-icon icon-left">UA</a>
								</td>
							</tr>
							  -->
						</tbody>
					</table>
					
				</div>
			</div>

			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<footer class="main-footer sticky footer-type-1">
				
				<div class="footer-inner">
				
					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; 2014 
						<strong>Xenon</strong> 
						More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
					</div>
					
					
					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">
					
						<a href="#" rel="go-top">
							<i class="fa-angle-up"></i>
						</a>
						
					</div>
					
				</div>
				
			</footer>
		</div>
		
			
		<!-- start: Chat Section -->
		<div id="chat" class="fixed">
			
			<div class="chat-inner">
			
				
				<h2 class="chat-header">
					<a href="#" class="chat-close" data-toggle="chat">
						<i class="fa-plus-circle rotate-45deg"></i>
					</a>
					
					Chat
					<span class="badge badge-success is-hidden">0</span>
				</h2>
				
				<script type="text/javascript">
				// Here is just a sample how to open chat conversation box
				jQuery(document).ready(function($)
				{
					var $chat_conversation = $(".chat-conversation");
					
					$(".chat-group a").on('click', function(ev)
					{
						ev.preventDefault();
						
						$chat_conversation.toggleClass('is-open');
						
						$(".chat-conversation textarea").trigger('autosize.resize').focus();
					});
					
					$(".conversation-close").on('click', function(ev)
					{
						ev.preventDefault();
						$chat_conversation.removeClass('is-open');
					});
				});
				</script>
				
				
				<div class="chat-group">
					<strong>Favorites</strong>
					
					<a href="#"><span class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
				</div>
				
				
				<div class="chat-group">
					<strong>Work</strong>
					
					<a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Daniel A. Pena</em></a>
				</div>
				
				
				<div class="chat-group">
					<strong>Other</strong>
					
					<a href="#"><span class="user-status is-online"></span> <em>Dennis E. Johnson</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Stuart A. Shire</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Janet I. Matas</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Mindy A. Smith</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Herman S. Foltz</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Gregory E. Robie</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Nellie T. Foreman</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>William R. Miller</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Vivian J. Hall</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Melinda A. Anderson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Gary M. Mooneyham</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert C. Medina</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Dylan C. Bernal</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Marc P. Sanborn</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Kenneth M. Rochester</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Rachael D. Carpenter</em></a>
				</div>
			
			</div>
			
			<!-- conversation template -->
			<div class="chat-conversation">
				
				<div class="conversation-header">
					<a href="#" class="conversation-close">
						&times;
					</a>
					
					<span class="user-status is-online"></span>
					<span class="display-name">Arlind Nushi</span> 
					<small>Online</small>
				</div>
				
				<ul class="conversation-body">	
					<li>
						<span class="user">Arlind Nushi</span>
						<span class="time">09:00</span>
						<p>Are you here?</p>
					</li>
					<li class="odd">
						<span class="user">Brandon S. Young</span>
						<span class="time">09:25</span>
						<p>This message is pre-queued.</p>
					</li>
					<li>
						<span class="user">Brandon S. Young</span>
						<span class="time">09:26</span>
						<p>Whohoo!</p>
					</li>
					<li class="odd">
						<span class="user">Arlind Nushi</span>
						<span class="time">09:27</span>
						<p>Do you like it?</p>
					</li>
				</ul>
				
				<div class="chat-textarea">
					<textarea class="form-control autogrow" placeholder="Type your message"></textarea>
				</div>
				
			</div>
			
		</div>
		<!-- end: Chat Section -->
		
		
	</div>
	<!--
	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>
	-->




	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="assets/js/datatables/dataTables.bootstrap.css">

	<!-- Bottom Scripts -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>
	<script src="assets/js/datatables/js/jquery.dataTables.min.js"></script>


	<!-- Imported scripts on this page -->
	<script src="assets/js/datatables/dataTables.bootstrap.js"></script>
	<script src="assets/js/datatables/yadcf/jquery.dataTables.yadcf.js"></script>
	<script src="assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>

</body>
</html>