<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>员工管理</title>
		
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
					elem: '#date1'
				});
				
				if(empId != null && empId != "")
				{
					table.render({
						elem: '#test',
						url: '${pageContext.request.contextPath}/Salary/SAId.do?id='+empId,
						even: true,
						cols: [[
								{field:'sid',title:'编号',align:'center',width:80},
								{field:'smonth',title:'月份',align:'center',width:80},
								{field:'empName',title:'姓名',templet: '<div>{{d.emp.empName}}</div>',align:'center',width:80},
								{field:'salary',title:'底薪',templet: '<div>{{d.emp.salary}}</div>',align:'center',width:80},
								{field:'answer',title:'应发工资',align:'center',width:100},
								{field:'reals',title:'实发',templet:'#sf',align:'center',width:80},
								{field:'modes',title:'发放方式',align:'center',width:100},
								{field:'outTime',title:'发放时间',templet : "<div>{{layui.util.toDateString(d.outTime, 'yyyy-MM-dd HH:mm:ss')}}</div>",align:'center',width:150},
								{field:'state',title:'是否发放',templet:'#titleTpl',align:'center',width:100},
								{field:'namea',title:'出纳人',align:'center',width:100},
								{fixed: 'right',title: '操作',toolbar: '#barDemo',width:200}
							]],
						page: true
					});
					
					//模糊查询
					$("#search").click(function(){
						var keyword=$("input[name=title]").val();
						//重载表格数据
						table.reload('test',
							{
								where:{key:keyword}
							});
						
					});
					
					table.on('tool(test)', function(obj) {
						var data = obj.data;
						if(obj.event === 'del') {
								layer.open({
									type: 2,
									area: ['500px', '400px'],
									content:'${pageContext.request.contextPath}/Salary/sel.do?id='+data.sid,
									cancel: function() {
										//右上角关闭回调
										$("addStaffInfo.jsp.jsp").css("display", "none");
									}
								});
							}
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
				
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">实发详情</a>
				</script>
				<script type="text/html" id="titleTpl">
  					<h5>{{d.state==1?'已发放':'未发放'}}</h5>
				</script>
				<script type="text/html" id="sf">
  					<h5>
						{{d.reals<=0?0:d.reals}}
					</h5>
				</script>
	</body>	
</html>