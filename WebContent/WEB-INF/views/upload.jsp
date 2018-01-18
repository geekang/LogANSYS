<%@ page import="me.geekang.util.Ip"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.TreeMap" %>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>

			<div class="page-title">

				<div class="title-env">
					<h1 class="title">日志上传</h1>
					<p class="description">上传日志文件</p>
				</div>
				
					<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="dashboard-1.html"><i class="fa-home"></i>Home</a>
						</li>
							<li class="active">
						
										<strong>日志上传</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
			
			<br />
			
			
			<div class="panel panel-default">
			
				<div class="panel-heading">
					<h3 class="panel-title">
						上传区域 <small>选择文件或将文件拖拽到圆形区域即可进行上传操作。</small>
					</h3>
				</div>
				
				<div class="panel-body">
					
					<script type="text/javascript">
						jQuery(document).ready(function($)
						{
							var i = 1,
								$example_dropzone_filetable = $("#example-dropzone-filetable"),
								example_dropzone = $("#advancedDropzone").dropzone({
								url: 'upload',
								
								// Events
								addedfile: function(file)
								{
									if(i == 1)
									{
										$example_dropzone_filetable.find('tbody').html('');
									}
									
									var size = parseInt(file.size/1024, 10);
									size = size < 1024 ? (size + " KB") : (parseInt(size/1024, 10) + " MB");
									
									var	$el = $('<tr>\
													<td class="text-center">'+(i++)+'</td>\
													<td>'+file.name+'</td>\
													<td><div class="progress progress-striped"><div class="progress-bar progress-bar-warning"></div></div></td>\
													<td>'+size+'</td>\
													<td>Uploading...</td>\
												</tr>');
									
									$example_dropzone_filetable.find('tbody').append($el);
									file.fileEntryTd = $el;
									file.progressBar = $el.find('.progress-bar');
								},
								
								uploadprogress: function(file, progress, bytesSent)
								{
									file.progressBar.width(progress + '%');
								},
								
								success: function(file)
								{
									file.fileEntryTd.find('td:last').html('<span class="text-success">成功</span>');
									file.progressBar.removeClass('progress-bar-warning').addClass('progress-bar-success');
								},
								
								error: function(file)
								{
									file.fileEntryTd.find('td:last').html('<span class="text-danger">失败</span>');
									file.progressBar.removeClass('progress-bar-warning').addClass('progress-bar-red');
								}
							});
							
							$("#advancedDropzone").css({
								minHeight: 200
							});
			
						});
					</script>
					
					<br />
					<div class="row">
						<div class="col-sm-3 text-center">
						
							<div id="advancedDropzone" class="droppable-area">
								拖拽文件到此处
							</div>
							
						</div>
						<div class="col-sm-9">
							
							<table class="table table-bordered table-striped" id="example-dropzone-filetable">
								<thead>
									<tr>
										<th width="1%" class="text-center">#</th>
										<th width="50%">文件名</th>
										<th width="20%">上传进度</th>
										<th>大小</th>
										<th>状态</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="5">此处将显示文件列表</td>
									</tr>
								</tbody>
							</table>
							
						</div>
					</div>
					
				</div>
			
			</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
<script>
$("#main-menu li").removeClass("active opened active expanded");
$(".l1").addClass("active opened active expanded");
$(".l1 .m1").addClass("active");
</script>
</body>
</html>