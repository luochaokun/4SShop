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
				        'echarts/chart/line',
				        'echarts/chart/map'
				    ],
				    function(ec){
						myChart = ec.init(document.getElementById('chart'));
						
						$.post('stCon/showApp.do',function(res){
							var result = res.data;

							var option = {
							    tooltip: {
							        trigger: 'axis',
							        axisPointer: {
							            type: 'cross',
							            crossStyle: {
							                color: '#999'
							            }
							        }
							    },
							    toolbox: {
							    	show: true,
							        feature: {
							            dataView: {show: false, readOnly: true},
							            magicType: {show: true, type: ['line', 'bar']},
							            restore: {show: true},
							            saveAsImage: {show: true}
							        }
							    },
							    legend: {
							        data:['采购车辆数','采购申请支出','采购实际支出']
							    },
							    xAxis: [
							        {
							            type: 'category',
							            data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
							            axisPointer: {
							                type: 'shadow'
							            }
							        }
							    ],
							    yAxis: [
							        {
							            type: 'value',
							            name: '采购车辆数',
							            min: 0,
							            max: 100,
							            interval: 20,
							            axisLabel: {
							                formatter: '{value} '
							            }
							        },
							        {
							            type: 'value',
							            name: '金额',
							            min: 0,
							            max: 5000000,
							            interval: 400000,
							            axisLabel: {
							                formatter: '{value} '
							            }
							        }
							    ],
							    series: [
							        {
							            name:'采购车辆数',
							            type:'bar',
							            data:result.carBuyingCountTable.split(",")
							        },
							        {
							            name:'采购申请支出',
							            type:'bar',
							            yAxisIndex: 1,
							            data:result.applyTable.split(",")
							        },
							        {
							            name:'采购实际支出',
							            type:'line',
							            yAxisIndex: 1,
							            data:result.carBuyingTable.split(",")
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
