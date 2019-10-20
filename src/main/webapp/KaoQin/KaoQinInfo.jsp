<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>考勤管理</title>
		
		<link rel="stylesheet" href="../layui/css/layui.css" />
		<script type="text/javascript" src="../layui/layui.js"></script>
		<script type="text/javascript">
			var empId="${emp.empId}";
			layui.use(['element', 'table', 'layer', 'laydate'], function() {
				var element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					laydate = layui.laydate;
				laydate.render({
					elem: '#date1',
					elem: '#datetime'
				});
				if(empId != null && empId != "")
				{
					table.render({
						elem: '#test',
						url: '${pageContext.request.contextPath}/KaoQin/KaoQinAll.do',
						method:'post',
						limit:5,
						limits:[5,10,15,20],
						even: true,
						cols: [[
								{field:'id',title:'编号',width:70},
								{field:'empName',title:'员工',templet: '<div>{{d.emp.empName}}</div>',align:'center',width:150},
								{field:'time',title:'日期', templet : "<div>{{layui.util.toDateString(d.time, 'yyyy-MM-dd')}}</div>",width:150},
								{field:'startJobTime',title:'上班时间', templet : "<div>{{layui.util.toDateString(d.startJobTime, 'yyyy-MM-dd HH:mm:ss')}}</div>",align:'center',width:150},
								{field:'startCardTime',title:'上班打卡时间', templet : "<div>{{layui.util.toDateString(d.startCardTime, 'yyyy-MM-dd HH:mm:ss')}}</div>",align:'center',width:150},
								{field:'stopJobTime',title:'下班时间', templet : "<div>{{layui.util.toDateString(d.stopJobTime, 'yyyy-MM-dd HH:mm:ss')}}</div>",align:'center',width:150},
								{field:'stopCardTime',title:'下班打卡时间', templet : "<div>{{layui.util.toDateString(d.stopCardTime, 'yyyy-MM-dd HH:mm:ss')}}</div>",align:'center',width:150},
								{field:'jobState',title:'出勤状态',align:'center',width:150}
							]],
						page: true
					});
					
					$("#search").click(function(){
						var keyword=$("input[name=title]").val();
						//重载表格数据
						table.reload('test',
							{
								where:{key:keyword}
							});
						
					});
				}else{
					layer.msg("未登录!！",function(){
						top.location="${pageContext.request.contextPath}/admin/index/login.jsp";
	    			});
				}
				
			});
			
		</script>
	</head>

	<body>
		
				<br><br>
				<!-- 内容主体区域 -->
			<div class="layui-row">
					<div class="layui-inline" style="margin-left: 10px;">
						<input type="text" name="title" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
					<button id="search" class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
				</div>
			<div>
				<table class="layui-hide" id="test" lay-filter="test"></table>
			</div>
	</body>	
</html>