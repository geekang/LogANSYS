<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">黑名单详情</h1>
					<p class="description">Blacklist Details</p>
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
						
										<strong>黑名单详情</strong>
								</li>
								</ol>
								
				</div>
					
			</div>

			
			
			<!-- Removing search and results count filter -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">以下是黑名单列表</h3>
					
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
								{bSortable: false,"sWidth": "8%"},
								{bSortable: false,"sWidth": "12%"},
								{bSortable: false,"sWidth": "9%"},
								{bSortable: false,"sWidth": "14%"},
								{bSortable: false,"sWidth": "15%"},
								{bSortable: false,"sWidth": "10%"},
								{bSortable: false,"sWidth": "10%"},
							],
							iDisplayLength: 50,
							aLengthMenu: [[10, 25, 50, 100, -1], [10, 50, 100, 200, "All"]],
							//bAutoWidth: true, //自适应宽度
							//sScrollX: "120%",
							//bScrollCollapse: true
							"bProcessing": false, // 是否显示取数据时的那个等待提示
							"bServerSide": true,//这个用来指明是通过服务端来取数据
							"sAjaxSource": "blacklist/tableajax",//这个是请求的地址
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
			                async : true,
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
								<th>IP</th>
								<th>方法</th>
								<th>UA</th>
								<th>URL</th>
								<th>备注</th>
								<th>操作</th>
							</tr>
						</thead>
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
$(".l2").addClass("active opened active expanded");
$(".l2 .m2").addClass("active");
</script>
		<!-- Modal 1(Long Modal)-->
	<div class="modal fade" id="edit">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">编辑组合黑名单</h4>
				</div>
				
				<div class="modal-body">
				
				<div class="row">
								
								<div class="col-md-12">
									<div class="alert alert-warning">
										<strong>注意</strong> 该操作会更改已保存的黑名单记录。
									</div>
								</div>
								
							</div>
							
					<div class="row">
					
					<div class="col-md-6">
					
							
							<div class="form-group">
								<label for="field-2" class="control-label">IP</label>
								<div class="form-group">
									<label>
										<input type="checkbox" name="ip" class="iswitch iswitch-danger" value="" checked>
										<span id="model-span-id" style="display:none;"></span>
										<span id="model-span-ip"></span>
									</label>
								</div>
								
							</div>	
						
						</div>
						
						<div class="col-md-6">
							
							<div class="form-group">
								<label for="field-2" class="control-label">Method</label>
								<div class="form-group">
									<label>
										<input type="checkbox" name="m" class="iswitch iswitch-danger" value="" checked>
										<span id="model-span-m"></span>
									</label>
								</div>
								
							</div>	
						
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group">
								<label for="field-3" class="control-label">User-Agent</label>
								<pre id="ua-pre" class="alert-danger" style="cursor: pointer;"></pre>
								<input type="hidden" name="ua" value="">
							</div>
							
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group">
								<label for="field-3" class="control-label">URL</label>
								<pre id="url-pre" class="alert-danger" style="cursor: pointer;"></pre>
								<input type="hidden" name="url" value="">
							</div>	
							
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group no-margin">
								<label for="field-7" class="control-label">备注</label>
								<textarea name="remarks" class="form-control autogrow" id="remarks" placeholder="填写封禁原因等" style="resize:none"></textarea>
							</div>	
							
						</div>
</div>
					
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-info" onclick="editBlackList()">编辑组合黑名单</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="del">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">确认</h4>
				</div>
				
				<div class="modal-body">
					确认删除此黑名单记录吗？
				</div>
				<span id="id-del" style="display:none;"></span>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-info" onclick="delBlackList()">确认</button>
				</div>
			</div>
		</div>
	</div>
	
<script>
var i = 0;
$("#url-pre").click(function(){
	if(i % 2 == 1){
		$(this).removeClass("alert-default").addClass("alert-danger");
	} else {
		$(this).removeClass("alert-danger").addClass("alert-default");
	}
	i++;
});
var j = 0;
$("#ua-pre").click(function(){
	if(j % 2 == 1){
		$(this).removeClass("alert-default").addClass("alert-danger");
	} else {
		$(this).removeClass("alert-danger").addClass("alert-default");
	}
	j++;
});
//编辑
function edit(obj) {  
	$("#model-span-id").text($(obj).parent().siblings().find(".id-span").text());
	$("#model-span-ip").text($(obj).parent().siblings().find(".ip-span").text()).siblings("input").val($(obj).parent().siblings().find(".ip-span").text());
	$("#model-span-m").text($(obj).parent().siblings().find(".m-span").text()).siblings("input").val($(obj).parent().siblings().find(".m-span").text());
	$("#ua-pre").html($(obj).parent().siblings().find(".ua-span").html()).siblings().find("input").val($(obj).parent().siblings().find(".ua-span").html());
	$("#url-pre").html($(obj).parent().siblings().find(".url-span").text() + "?" + $(obj).parent().siblings().find(".url-span").attr("title")).siblings().find("input").val($(obj).parent().siblings().find(".url-span").text() + "?" + $(obj).parent().siblings().find(".url-span").attr("title"));
	$("#remarks").val($(obj).parent().siblings().find(".remarks-span").html());
	$("#edit").modal('show', {backdrop: 'static'});
}
//提交更改
function editBlackList() {  
    //获取模态框数据  
    var id = $('#model-span-id').text();  
    var ip = typeof($('input:checkbox[name="ip"]:checked').val())=="undefined"?"":$('input:checkbox[name="ip"]:checked').val();  
    var m = typeof($('input:checkbox[name="m"]:checked').val())=="undefined"?"":$('input:checkbox[name="m"]:checked').val();
    var ua = j % 2 == 1?"":$("#ua-pre").html();
    var url = i % 2 == 1?"":$("#url-pre").html();
    var remarks = $("#remarks").val();
    $.ajax({  
        type: "post",  
        url: "blacklist/edit",  
        data: "id=" + encodeURIComponent(id) + "&ip=" + encodeURIComponent(ip) + "&m=" + encodeURIComponent(m) + "&ua=" + encodeURIComponent(ua) + "&url=" + encodeURIComponent(url) + "&remarks=" + encodeURIComponent(remarks),  
        dataType: 'json',
        contentType: "application/x-www-form-urlencoded; charset=utf-8",  
        success: function(result) {  
        	toastr.success('编辑黑名单成功');
        },
        error: function(result) {  
        	toastr.error('编辑黑名单失败');
        }
        
    });
    $('#edit').modal('toggle');
}
//删除
function del(obj) {  
	$("#id-del").text($(obj).parent().siblings().find(".id-span").text())
	$("#del").modal('show', {backdrop: 'static'});
}
//提交删除
function delBlackList() {  
    //获取模态框数据  
    var id = $("#id-del").text();
    $.ajax({  
        type: "post",  
        url: "blacklist/delete",  
        data: "id=" + encodeURIComponent(id),
        dataType: 'json',
        contentType: "application/x-www-form-urlencoded; charset=utf-8",  
        success: function(result) {  
        	toastr.success('删除黑名单成功');
        },
        error: function(result) {  
        	toastr.error('删除黑名单失败');
        }
        
    });
    $('#del').modal('toggle');
}
</script>
</body>
</html>