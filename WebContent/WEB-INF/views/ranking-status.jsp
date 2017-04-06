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
				<div id="echarts-status" style="height:500px;"></div>
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
									<th width="30%">状态码</th>
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
			
			<div class="row">
				<div class="col-md-12">
					
					<div class="panel panel-default">
						<div class="panel-heading">
							500 ( Internal Server Error ) 状态码页面 Top 5
						</div>
						
						<table class="table">
							<thead>
								<tr>
									<th width="10%">序号</th>
									<th width="50%">地址</th>
									<th>次数</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="map" items="${map500}" varStatus="status">
							
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
			
						<div class="row">
				<div class="col-md-12">
					
					<div class="panel panel-default">
						<div class="panel-heading">
							404 ( Not Found ) 状态码页面 Top 5
						</div>
						
						<table class="table">
							<thead>
								<tr>
									<th width="10%">序号</th>
									<th width="50%">地址</th>
									<th>次数</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="map" items="${map404}" varStatus="status">
							
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
									<div class="row">
				<div class="col-md-12">
					
					<div class="panel panel-default">
						<div class="panel-heading">
							403 ( Forbidden ) 状态码页面 Top 5
						</div>
						
						<table class="table">
							<thead>
								<tr>
									<th width="10%">序号</th>
									<th width="50%">地址</th>
									<th>次数</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="map" items="${map403}" varStatus="status">
							
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
<script src="assets/js/echarts.min.js"></script>
<script src="assets/js/china.js"></script>
<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('echarts-status'));
option = {
	    title : {
	        text: '页面各状态码',
	        subtext: '南丁格尔玫瑰图',
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        x : 'center',
	        y : 'bottom',
	        data:[<c:forEach var="map" items="${map}" varStatus="status">'${map.key}-${map.value}',</c:forEach>]
	    },
	    toolbox: {
	        show : true,
	        feature : {
	            mark : {show: true},
	            dataView : {show: true, readOnly: false},
	            magicType : {
	                show: true,
	                type: ['pie', 'funnel']
	            },
	            restore : {show: true},
	            saveAsImage : {show: true}
	        }
	    },
	    calculable : true,
	    series : [
	        {
	            name:'半径模式',
	            type:'pie',
	            radius : [30, 110],
	            center : ['25%', '50%'],
	            roseType : 'radius',
	            data:[
	            	<c:forEach var="map" items="${map}" varStatus="status">
	            	{value:${map.value}, name:'${map.key}'},
					</c:forEach>
	            ]
	        },
	        {
	            name:'面积模式',
	            type:'pie',
	            radius : [30, 110],
	            center : ['75%', '50%'],
	            roseType : 'area',
	            data:[
	            	<c:forEach var="map" items="${map}" varStatus="status">
	            	{value:${map.value}, name:'${map.key}'},
					</c:forEach>
	            ]
	        }
	    ]
	};
// 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>