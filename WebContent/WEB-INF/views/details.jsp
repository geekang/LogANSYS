<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">日志详情</h1>
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
						
										<strong>日志详情</strong>
								</li>
								</ol>
								
				</div>
					
			</div>

			
			
			<!-- Removing search and results count filter -->
			<div class="panel panel-default" id="main-table">
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
							iDisplayLength: 50,
							aLengthMenu: [[10, 25, 50, 100, -1], [10, 50, 100, 200, "All"]],
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
			        	$("html,body").animate({scrollTop:170}, 0);
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
								<th>时间</th>
								<th>IP</th>
								<th>方法</th>
								<th>URI</th>
								<th>状态</th>
								<th>UA</th>
								<th>用时</th>
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
$(".l2 .m1").addClass("active");
</script>
		<!-- Modal 1(Long Modal)-->
	<div class="modal fade" id="modal-1">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加组合黑名单</h4>
				</div>
				
				<div class="modal-body">
				
				<div class="row">
								
								<div class="col-md-12">
									<div class="alert alert-warning">
										<strong>注意</strong> 该操作会封禁被选中的项目。
									</div>
								</div>
								
							</div>
							
					<div class="row">
					
					<div class="col-md-6">
					
							
							<div class="form-group">
								<label for="field-2" class="control-label">IP</label>
								<div class="form-group">
									<label>
										<input type="checkbox" name="ip" class="iswitch iswitch-danger" value="">
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
										<input type="checkbox" name="m" class="iswitch iswitch-danger" value="">
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
								<pre id="ua-pre" class="alert-default" style="cursor: pointer;"></pre>
								<input type="hidden" name="ua" value="">
							</div>
							
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group">
								<label for="field-3" class="control-label">URL</label>
								<pre id="url-pre" class="alert-default" style="cursor: pointer;"></pre>
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
					<button type="button" class="btn btn-info" onclick="addBlackList()">添加组合黑名单</button>
				</div>
			</div>
		</div>
	</div>
			<!-- Modal 2(Long Modal)-->
	<div class="modal fade" id="modal-2">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加组合白名单</h4>
				</div>
				
				<div class="modal-body">
				
				<div class="row">
								
								<div class="col-md-12">
									<div class="alert alert-success">
										<strong>注意</strong> 该操作会信任被选中的项目。
									</div>
								</div>
								
							</div>
							
					<div class="row">
					
					<div class="col-md-6">
					
							
							<div class="form-group">
								<label for="field-2" class="control-label">IP</label>
								<div class="form-group">
									<label>
										<input type="checkbox" name="ip" class="iswitch iswitch-success" value="">
										<span id="model2-span-ip"></span>
									</label>
								</div>
								
							</div>	
						
						</div>
						
						<div class="col-md-6">
							
							<div class="form-group">
								<label for="field-2" class="control-label">Method</label>
								<div class="form-group">
									<label>
										<input type="checkbox" name="m" class="iswitch iswitch-success" value="">
										<span id="model2-span-m"></span>
									</label>
								</div>
								
							</div>	
						
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group">
								<label for="field-3" class="control-label">User-Agent</label>
								<pre id="ua-pre2" class="alert-default" style="cursor: pointer;"></pre>
								<input type="hidden" name="ua" value="">
							</div>
							
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group">
								<label for="field-3" class="control-label">URL</label>
								<pre id="url-pre2" class="alert-default" style="cursor: pointer;"></pre>
								<input type="hidden" name="url" value="">
							</div>	
							
						</div>
					</div>
				
					<div class="row">
						<div class="col-md-12">
							
							<div class="form-group no-margin">
								<label for="field-7" class="control-label">备注</label>
								<textarea name="remarks" class="form-control autogrow" id="remarks2" placeholder="填写封禁原因等" style="resize:none"></textarea>
							</div>	
							
						</div>
</div>
					
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-info" onclick="addWhiteList()">添加组合白名单</button>
				</div>
			</div>
		</div>
	</div>
<script>
var i = 0;
$("#url-pre").click(function(){
	if(i % 2 == 0){
		$(this).removeClass("alert-default").addClass("alert-danger");
	} else {
		$(this).removeClass("alert-danger").addClass("alert-default");
	}
	i++;
});
var j = 0;
$("#ua-pre").click(function(){
	if(j % 2 == 0){
		$(this).removeClass("alert-default").addClass("alert-danger");
	} else {
		$(this).removeClass("alert-danger").addClass("alert-default");
	}
	j++;
});

var i2 = 0;
$("#url-pre2").click(function(){
	if(i2 % 2 == 0){
		$(this).removeClass("alert-default").addClass("alert-success");
	} else {
		$(this).removeClass("alert-success").addClass("alert-default");
	}
	i2++;
});
var j2 = 0;
$("#ua-pre2").click(function(){
	if(j2 % 2 == 0){
		$(this).removeClass("alert-default").addClass("alert-success");
	} else {
		$(this).removeClass("alert-success").addClass("alert-default");
	}
	j2++;
});
//触发模态框的同时调用此方法  
function showModel1(obj) {  
	$("#model-span-ip").text($(obj).parent().siblings().find(".ip-span").text()).siblings("input").val($(obj).parent().siblings().find(".ip-span").text());
	$("#model-span-m").text($(obj).parent().siblings().find(".m-span").text()).siblings("input").val($(obj).parent().siblings().find(".m-span").text());
	$("#ua-pre").text($(obj).parent().siblings().find(".ua-span").attr("title")).siblings().find("input").val($(obj).parent().siblings().find(".ua-span").attr("title"));
	$("#url-pre").text($(obj).parent().siblings().find(".url-span").text()).siblings().find("input").val($(obj).parent().siblings().find(".url-span").text());
	//$("#url-pre").html($(obj).parent().siblings().find(".url-span").text()/ + "?" + $(obj).parent().siblings().find(".url-span").attr("title")).siblings().find("input").val($(obj).parent().siblings().find(".url-span").text() + "?" + $(obj).parent().siblings().find(".url-span").attr("title"));
    //获取表格中的一行数据  
    //var stuno = document.getElementById("table").rows[id].cells[0].innerText;  
    //var pass = document.getElementById("table").rows[id].cells[1].innerText;  
    //var name = document.getElementById("table").rows[id].cells[2].innerText;  
    //var sex = document.getElementById("table").rows[id].cells[3].innerText;  
    //向模态框中传值  
    //$('#stuno').val(stuno);  
    //$('#pass').val(pass);  
    //$('#stuname').val(name);  
    //if (sex == '女') {  
    //    document.getElementById('women').checked = true;  
    //} else {  
    //    document.getElementById('man').checked = true;  
    //}  
    $("#modal-1").modal('show', {backdrop: 'static'});
} 
//触发模态框的同时调用此方法  
function showModel2(obj) {  
	$("#model2-span-ip").text($(obj).parent().siblings().find(".ip-span").text()).siblings("input").val($(obj).parent().siblings().find(".ip-span").text());
	$("#model2-span-m").text($(obj).parent().siblings().find(".m-span").text()).siblings("input").val($(obj).parent().siblings().find(".m-span").text());
	$("#ua-pre2").text($(obj).parent().siblings().find(".ua-span").attr("title")).siblings().find("input").val($(obj).parent().siblings().find(".ua-span").attr("title"));
	$("#url-pre2").text($(obj).parent().siblings().find(".url-span").text()).siblings().find("input").val($(obj).parent().siblings().find(".url-span").text());
    //获取表格中的一行数据  
    //var stuno = document.getElementById("table").rows[id].cells[0].innerText;  
    //var pass = document.getElementById("table").rows[id].cells[1].innerText;  
    //var name = document.getElementById("table").rows[id].cells[2].innerText;  
    //var sex = document.getElementById("table").rows[id].cells[3].innerText;  
    //向模态框中传值  
    //$('#stuno').val(stuno);  
    //$('#pass').val(pass);  
    //$('#stuname').val(name);  
    //if (sex == '女') {  
    //    document.getElementById('women').checked = true;  
    //} else {  
    //    document.getElementById('man').checked = true;  
    //}  
    $("#modal-2").modal('show', {backdrop: 'static'});
}
//提交更改  
function addBlackList() {  
    //获取模态框数据  
    var ip = typeof($('input:checkbox[name="ip"]:checked').val())=="undefined"?"":$('input:checkbox[name="ip"]:checked').val();  
    var m = typeof($('input:checkbox[name="m"]:checked').val())=="undefined"?"":$('input:checkbox[name="m"]:checked').val();
    var ua = j % 2 == 0?"":$("#ua-pre").text();
    var url = i % 2 == 0?"":$("#url-pre").text();
    var remarks = $("#remarks").val();
    $.ajax({  
        type: "post",  
        url: "details/blacklist",  
        data: "ip=" + encodeURIComponent(ip) + "&m=" + encodeURIComponent(m) + "&ua=" + encodeURIComponent(ua) + "&url=" + encodeURIComponent(url) + "&remarks=" + encodeURIComponent(remarks),  
        dataType: 'json',
        contentType: "application/x-www-form-urlencoded; charset=utf-8",  
        success: function(result) {  
        	toastr.success('添加黑名单成功');
        },
        error: function(result) {  
        	toastr.error('添加黑名单失败');
        }
        
    });
    $('#modal-1').modal('toggle');
}
//提交更改  
function addWhiteList() {  
    //获取模态框数据  
    var ip = typeof($('#modal-2 input:checkbox[name="ip"]:checked').val())=="undefined"?"":$('#modal-2 input:checkbox[name="ip"]:checked').val();  
    var m = typeof($('#modal-2 input:checkbox[name="m"]:checked').val())=="undefined"?"":$('#modal-2 input:checkbox[name="m"]:checked').val();
    var ua = j2 % 2 == 0?"":$("#ua-pre2").text();
    var url = i2 % 2 == 0?"":$("#url-pre2").text();
    var remarks = $("#remarks2").val();
    $.ajax({  
        type: "post",  
        url: "details/whitelist",  
        data: "ip=" + encodeURIComponent(ip) + "&m=" + encodeURIComponent(m) + "&ua=" + encodeURIComponent(ua) + "&url=" + encodeURIComponent(url) + "&remarks=" + encodeURIComponent(remarks),  
        dataType: 'json',
        contentType: "application/x-www-form-urlencoded; charset=utf-8",  
        success: function(result) {  
        	toastr.success('添加白名单成功');
        },
        error: function(result) {  
        	toastr.error('添加白名单失败');
        }
        
    });
    $('#modal-2').modal('toggle');
}
</script>
</body>
</html>