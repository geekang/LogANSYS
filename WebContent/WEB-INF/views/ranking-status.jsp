<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">状态码排行</h1>
					<p class="description">Status code ranking</p>
				</div>				
				<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="./"><i class="fa-home"></i>Home</a>
						</li>
								<li>
						
										<a href="">访问排行</a>
								</li>
							<li class="active">
						
										<strong>状态码排行</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
<div class="row">
				<div class="col-md-12">
					
					<div class="panel panel-default">
						<div class="panel-heading">
							状态码排行
						</div>
						
						<table class="table">
							<thead>
								<tr>
									<th width="10%">序号</th>
									<th width="50%">状态码</th>
									<th>次数</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="map" items="${map}" varStatus="status">
							
								<tr>
									<td class="middle-align">${status.index + 1}</td>
									<td class="middle-align">${map.key}</td>
									<td>
										<a href="javascript:;" class="btn btn-primary btn-single btn-sm">${map.value}</a>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
<script>
$("#main-menu li").removeClass("active opened active expanded");
$(".l3").addClass("active opened active expanded");
$(".l3 .m4").addClass("active");
</script>
</body>
</html>