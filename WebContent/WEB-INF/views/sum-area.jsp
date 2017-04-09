<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">请求来源</h1>
					<p class="description">Request Location</p>
				</div>				
				<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="./"><i class="fa-home"></i>Home</a>
						</li>
								<li>
						
										<a href="">概略</a>
								</li>
							<li class="active">
						
										<strong>请求来源</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
<div class="row">
				<div class="col-md-12" id="echarts-china" style="height:620px;margin:auto"></div>
			</div>
<jsp:include page="/WEB-INF/include/footer.jsp"/>
<script>
$("#main-menu li").removeClass("active opened active expanded");
$(".l4").addClass("active opened active expanded");
$(".l4 .m1").addClass("active");
</script>
<script src="assets/js/echarts.min.js"></script>
<script src="assets/js/china.js"></script>
<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('echarts-china'));

var chinaContourUrl = "assets/json/data-china.json";

$.getJSON(chinaContourUrl, function (json) {
    echarts.registerMap('china-contour', json);
    
    myChart.setOption({
        geo: [{
            map: 'china',
            itemStyle: {
                normal: {
                    borderWidth: 2,
                    shadowBlur: 50,
                    shadowColor: 'rgba(0, 0, 0, 0.2)'
                }
            }
        }, {
            map: 'china',
            itemStyle: {
                normal: {
                    borderColor: '#aaa'
                }
            }
        }]
    });
});
var uploadedDataURL = "/asset/get/s/data-1487164546975-SyiFER-Yg.txt";


function randomData() {
    return Math.round(Math.random()*1000);
}

option = {
    title: {
        text: '请求来源',
        subtext: '空间分布图',
        left: 'center'
    },
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data:['2017年']
    },
    visualMap: {
        min: 0,
        max: ${max},
        left: 'left',
        top: 'bottom',
        text: ['高','低'],           // 文本，默认为数值文本
        calculable: true,
        inRange: {
                color: [ '#e0f3f8', '#ffffbf', '#fee090', '#fdae61', '#f46d43', '#d73027', '#a50026']
            }
    },
    toolbox: {
        show: true,
        orient: 'vertical',
        left: 'right',
        top: 'center',
        feature: {
            dataView: {readOnly: false},
            restore: {},
            saveAsImage: {}
        }
    },
    series: [
        {
            name: '请求数',
            type: 'map',
            mapType: 'china',
            roam: false,
            label: {
                normal: {
                    show: true
                },
                emphasis: {
                    show: true
                }
            },
            data:[
            	<c:forEach var="map" items="${map}" varStatus="status">
            	{name: '${map.key}',value: ${map.value} },
				</c:forEach>
            ]
        },
        
        
    ]
};


        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>