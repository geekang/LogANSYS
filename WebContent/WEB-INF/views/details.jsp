<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">全部详情</h1>
					<p class="description">All Details</p>
				</div>
				
					<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="./"><i class="fa-home"></i>Home</a>
						</li>
								<li>
						
										<a href="details">详情</a>
								</li>
							<li class="active">
						
										<strong>全部详情</strong>
								</li>
								</ol>
								
				</div>
					
			</div>

			
			
			<!-- Removing search and results count filter -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">以下是此日志文件所有的请求记录</h3>
					
					<div class="panel-options">
						<a href="#" data-toggle="panel">
							<span class="collapse-icon">&ndash;</span>
							<span class="expand-icon">+</span>
						</a>
						<a href="#" data-toggle="remove">
							&times;
						</a>
					</div>
				</div>
				<div class="panel-body">
					
					<script type="text/javascript">
					jQuery(document).ready(function($)
					{
						$("#example-2").dataTable({
							aoColumns: [
								{bSortable: false,"sWidth": "3%"},
								{bSortable: false,"sWidth": "7%"},
								{bSortable: true,"sWidth": "9%"},
								{bSortable: true,"sWidth": "11%"},
								{bSortable: false,"sWidth": "7%"},
								null,
								{bSortable: false,"sWidth": "5%"},
								{bSortable: true,"sWidth": "10%"},
								{bSortable: true,"sWidth": "8%"},
								{bSortable: false,"sWidth": "12%"},
							],
							iDisplayLength: 30,
							aLengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
							//bAutoWidth: true, //自适应宽度
							//sScrollX: "120%",
							//bScrollCollapse: true
							"bProcessing": false, // 是否显示取数据时的那个等待提示
                "bServerSide": true,//这个用来指明是通过服务端来取数据
                "sAjaxSource": "details/tableajax",//这个是请求的地址
                "fnServerData": retrieveData // 获取数据的处理函数
						});
						
						// Replace checkboxes when they appear
						var $state = $("#example-2 thead input[type='checkbox']");
						
						$("#example-2").on('draw.dt', function()
						{
							cbr_replace();
							
							$state.trigger('change');
						});
						
						// Script to select all checkboxes
						$state.on('change', function(ev)
						{
							var $chcks = $("#example-2 tbody input[type='checkbox']");
							
							if($state.is(':checked'))
							{
								$chcks.prop('checked', true).trigger('change');
							}
							else
							{
								$chcks.prop('checked', false).trigger('change');
							}
						});
					});
					// 3个参数的名字可以随便命名,但必须是3个参数,少一个都不行
			        function retrieveData( sSource111,aoData111, fnCallback111) {
			            $.ajax({
			                url : sSource111,//这个就是请求地址对应sAjaxSource
			                data : {"aoData":JSON.stringify(aoData111)},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
			                type : 'post',
			                dataType : 'json',
			                async : false,
			                success : function(result) {
			                    fnCallback111(result);//把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
			                },
			                error : function(msg) {
			                }
			            });
			        }
					</script>
					
					<table class="table table-bordered table-striped table-hover" id="example-2">
						<thead>
							<tr>
								<th class="no-sorting">
									<input type="checkbox" class="cbr">
								</th>
								<th>No.</th>
								<th>时间</th>
								<th>IP</th>
								<th>方法</th>
								<th>URI</th>
								<th>状态</th>
								<th>UA</th>
								<th>用时</th>
								<th>封禁操作</th>
							</tr>
						</thead>
						
						<tbody class="middle-align">

						<!--  -->
						<c:forEach items="${map}" var="map" varStatus="s">
							<tr>
								<td>
									<input type="checkbox" class="cbr">
								</td>

								<!-- 序号 -->
								<td>${s.count}</td>
								<!-- 时间（日期） -->
								<td><span class='' title='${map.date}'><c:out value="${map.time}" /></span></td>
								<!-- <span class="label label-warning" title="2010-10-29">00:01:36</span> -->
								<!-- IP -->
								<td><span title='${map["ipAddr"]}'>${map["c-ip"]}</span></td>
								<!-- //方法 -->
								<td>${map["cs-method"]}</td>
								<!-- URI（URI查询） -->
								<td><span class='' title='${map["cs-uri-query"]}'>${map["cs-uri-stem"]}</span></td>
								<!-- 状态码（子状态码/Win32状态） -->
								<td><span class='' title='${map["sc-substatus"]}/${map["sc-win32-status"]}'>${map["sc-status"]}</span></td>
								<!-- //UA
								String ua = list.get(i).get("cs(User-Agent)").toString().replaceAll("\\+", " ");UserAgent.parseUserAgentString(ua).getBrowser(); -->
								<td><span class='' title='${map["cs(User-Agent)"]}'>${map["ua"]}</span></td>
								<!-- //用时 -->
								<td>${map["time-taken"]}</td>

								<td>
									<a href="#" class="btn btn-warning btn-xs btn-icon icon-left">IP</a>
									
									<a href="#" class="btn btn-danger btn-xs btn-icon icon-left">URI</a>
									
									<a href="#" class="btn btn-info btn-xs btn-icon icon-left">UA</a>
								</td>
							</tr>
							</c:forEach>
							<!--  -->
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
<jsp:include page="/WEB-INF/include/footer.jsp"/>
<script src="assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="assets/js/datatables/yadcf/jquery.dataTables.yadcf.js"></script>
<script src="assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script>
$("#main-menu li").removeClass("active opened active expanded");
$(".l1").addClass("active opened active expanded");
$(".l1 .m1").addClass("active");
</script>
</body>
</html>