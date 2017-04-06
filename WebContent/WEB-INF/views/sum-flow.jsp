<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:include page="/WEB-INF/include/left-nav.jsp"/>
<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">流量折线图</h1>
					<p class="description">Flow Chart</p>
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
						
										<strong>流量折线图</strong>
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
$(".l4 .m2").addClass("active");
</script>
<script src="assets/js/echarts.min.js"></script>
<script src="assets/js/china.js"></script>
<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('echarts-china'));

var xData = function() {
    var data = [];
    for (var i = 8 ; i < 24; i++) {
        data.push(i + "时");
    }
    for (var i = 0 ; i < 8; i++) {
        data.push(i + "时");
    }
    return data;
}();

option = {
    backgroundColor: "#344b58",
    "title": {
        "text": "流量折线图",
        "subtext": "包含正常请求和异常请求",
        x: "4%",

        textStyle: {
            color: '#fff',
            fontSize: '22'
        },
        subtextStyle: {
            color: '#90979c',
            fontSize: '16',

        },
    },
    "tooltip": {
        "trigger": "axis",
        "axisPointer": {
            "type": "shadow",
            textStyle: {
                color: "#fff"
            }

        },
    },
    "grid": {
        "borderWidth": 0,
        "top": 110,
        "bottom": 95,
        textStyle: {
            color: "#fff"
        }
    },
    "legend": {
        x: '4%',
        top: '11%',
        textStyle: {
            color: '#90979c',
        },
        "data": ['正常请求', '404请求', '500请求', '总']
    },
     

    "calculable": true,
    "xAxis": [{
        "type": "category",
        "axisLine": {
            lineStyle: {
                color: '#90979c'
            }
        },
        "splitLine": {
            "show": false
        },
        "axisTick": {
            "show": false
        },
        "splitArea": {
            "show": false
        },
        "axisLabel": {
            "interval": 0,

        },
        "data": xData,
    }],
    "yAxis": [{
        "type": "value",
        "splitLine": {
            "show": false
        },
        "axisLine": {
            lineStyle: {
                color: '#90979c'
            }
        },
        "axisTick": {
            "show": false
        },
        "axisLabel": {
            "interval": 0,

        },
        "splitArea": {
            "show": false
        },

    }],
    "dataZoom": [{
        "show": true,
        "height": 30,
        "xAxisIndex": [
            0
        ],
        bottom: 30,
        "start": 0,
        "end": 100,
        handleIcon: 'path://M306.1,413c0,2.2-1.8,4-4,4h-59.8c-2.2,0-4-1.8-4-4V200.8c0-2.2,1.8-4,4-4h59.8c2.2,0,4,1.8,4,4V413z',
        handleSize: '110%',
        handleStyle:{
            color:"#d3dee5",
            
        },
           textStyle:{
            color:"#fff"},
           borderColor:"#90979c"
        
        
    }, {
        "type": "inside",
        "show": true,
        "height": 15,
        "start": 1,
        "end": 35
    }],
    "series": [{
            "name": "正常请求",
            "type": "bar",
            "stack": "总量",
            "barMaxWidth": 35,
            "barGap": "10%",
            "itemStyle": {
                "normal": {
                    "color": "rgba(0,191,183,1)",
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "#fff"
                        },
                        "position": "insideTop",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
            	<c:forEach var="map" items="${map200301304}" varStatus="status">
            	${map.value},
				</c:forEach>
            ],
        },

        {
            "name": "404请求",
            "type": "bar",
            "stack": "总量",
            "itemStyle": {
                "normal": {
                    "color": "rgba(155,191,183,1)",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "position": "top",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
            	<c:forEach var="map" items="${map404}" varStatus="status">
            	${map.value},
				</c:forEach>
            ]
        }, {
            "name": "500请求",
            "type": "bar",
            "stack": "总量",
            "itemStyle": {
                "normal": {
                    "color": "rgba(255,144,128,1)",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "position": "top",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
            	<c:forEach var="map" items="${map500}" varStatus="status">
            	${map.value},
				</c:forEach>
            ]
        },{
            "name": "总",
            "type": "line",
            "stack": "总量",
            symbolSize:20,
            symbol:'circle',
            "itemStyle": {
                "normal": {
                    "color": "rgba(252,230,48,1)",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "position": "top",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
            	<c:forEach var="map" items="${map}" varStatus="status">
            	${map.value},
				</c:forEach>
            ]
        },
    ]
}

// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option);
    </script>
</body>
</html>