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
						url: '${pageContext.request.contextPath}/KaoQin/KaoQinEmpId.do?id='+empId,
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

					//签到
					$("#qd").click(function(){
						 $.post("${pageContext.request.contextPath}/KaoQin/qd.do?emp.empId="+empId,function(res){
							   if(res>0){
								   layer.msg("添加成功！",function(){
						    				parent.layui.table.reload('test');//刷新表格页面
						    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						    				parent.layer.close(index); //执行关闭当前弹出层
						    			});  
							   }else{
								     layer.msg("添加失败！");  
							   }
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
		
				<br>
				<!-- 内容主体区域 -->
			<form action="" class="layui-form" method="post">
				<div class="layui-row">
					<button id="qd" class="layui-btn layui-btn-normal" lay-submit="search">签到</button>
				</div>
			</form>	
			<div>
				<table class="layui-hide" id="test" lay-filter="test"></table>
			</div>
	</body>	
</html>