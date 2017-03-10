<%@ page import="me.geekang.util.IP"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.TreeMap" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">日志文件概略</h1>
					<p class="description">Log File Overview</p>
				</div>				
				<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="./"><i class="fa-home"></i>Home</a>
						</li>
								<li>
						
										<a href="overview">仪表盘</a>
								</li>
							<li class="active">
						
										<strong>日志文件概略</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
			<div class="list-group">
						<a href="#" class="list-group-item active">
							<h4 class="list-group-item-heading">上传文件名</h4>
							<p class="list-group-item-text">${map.fileName}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">上传时间</h4>
							<p class="list-group-item-text">${map.uploadTime}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">日志起始时间</h4>
							<p class="list-group-item-text">${map.startTime} 至 ${map.endTime}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">Web平台</h4>
							<p class="list-group-item-text">${map.platform}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">文件大小</h4>
							<p class="list-group-item-text">${map.fileSize}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">请求数量</h4>
							<p class="list-group-item-text">${map.requestNum}</p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">处理用时</h4>
							<p class="list-group-item-text">${map.processingTime}毫秒</p>
						</a>
					</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
<script>
$("#main-menu li").removeClass("active opened active expanded");
$(".l1").addClass("active opened active expanded");
$(".l1 .m2").addClass("active");
</script>
</body>
</html>