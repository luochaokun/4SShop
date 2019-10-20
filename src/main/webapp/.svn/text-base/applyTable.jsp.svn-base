<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'Welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="admin/css/admin.css"/>
  </head>
  		
  <body>
		<div class="wrap-container welcome-container">
			<div class="row">
				<div class="welcome-left-container col-lg-9">
					
					<!--图表-->
					<div class="chart-panel panel panel-default">
						<div class="panel-body" id="chart" style="height: 376px;">
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/echarts.js"></script>
		<script type="text/javascript">
			layui.use(['layer','jquery'], function(){
				var layer 	= layui.layer;
				var $=layui.jquery;
				
				var myChart;
				require.config({
				    paths: {
				        echarts: 'admin/lib/echarts'
				    }
				});
				require(
				    [
				        'echarts',
				        'echarts/chart/bar',
				        'echarts/chart/pie',
				        'echarts/chart/line',
				        'echarts/chart/map'
				    ],
				    function(ec){
						myChart = ec.init(document.getElementById('chart'));
						
						$.post('stCon/showZhiChu.do',function(res){

							var data = res.data;
							var option =
									{
								     title: {
								        text: "数据统计",
								        textStyle: {
								            color: "rgb(85, 85, 85)",
								            fontSize: 18,
								            fontStyle: "normal",
								            fontWeight: "normal"
								        }
								    },
								    tooltip: {
								        trigger: "axis"
								    },
								    legend: {
								        data: ["采购支出", "销售收入", "薪资支出"],
								        selectedMode: false,
								    },
								    toolbox: {
								        show: true,
								        feature: {
								            dataView: {
								                show: false,
								                readOnly: true
								            },
								            magicType: {
								                show: true,
								                type: ["line", "bar", "stack", "tiled"]
								            },
								            restore: {
								                show: true
								            },
								            saveAsImage: {
								                show: true
								            },
								            mark: {
								                show: false
								            }
								        }
								    },
								    calculable: false,
								    xAxis: [
								        {
								            type: "category",
								            boundaryGap: false,
								            data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
								        }
								    ],
								    yAxis: [
								        {
								            type: "value"
								        }
								    ],
								     grid: {
								        x2: 30,
								        x: 50
								    },
								    series: [
								        {
								            name: "采购支出",
								            type: "line",
								            smooth: true,
								            itemStyle: {
								                normal: {
								                    areaStyle: {
								                        type: "default"
								                    }
								                }
								            },
								            data: data.applyTable
								        },
								        {
								            name: "销售收入",
								            type: "line",
								            smooth: true,
								            itemStyle: {
								                normal: {
								                    areaStyle: {
								                        type: "default"
								                    }
								                }
								            },
								            data: [30, 182, 434, 791, 390, 30, 10]
								        },
								        {
								            name: "薪资支出",
								            type: "line",
								            smooth: true,
								            itemStyle: {
								                normal: {
								                    areaStyle: {
								                        type: "default"
								                    },
								                    color: "rgb(110, 211, 199)"
								                }
								            },
								            data: [1320, 1132, 601, 234, 120, 90, 20]
								        }
								    ]
								};
							myChart.setOption(option);
						},"json");
					}
				);
				$(window).resize(function(){
					myChart.resize();
				});
			});
		</script>
	</body>
</html>
