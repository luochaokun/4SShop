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
			var empName="${emp.empName}";
			layui.use(['element', 'table', 'layer', 'laydate'], function() {
				var element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					laydate = layui.laydate;
				laydate.render({
					elem: '#date1'
				});
				if(empName != null && empName != "")
				{
					table.render({
						elem: '#test',
						url: '${pageContext.request.contextPath}/Leave/selectAll.do',
						toolbar: 'default',
						method:'post',
						limit:5,
						limits:[5,10,15,20],
						even: true,
						cols: [[
								{field:'id',title:'编号',checkbox:true},
								{field:'empName',title:'申请人',templet: '<div>{{d.emp.empName}}</div>',align:'center',width:100},
								{field:'submitTime',title:'申请时间',templet : "<div>{{layui.util.toDateString(d.submitTime, 'yyyy-MM-dd')}}</div>",align:'center',width:150},
								{field:'typeName',title:'请假类型',templet: '<div>{{d.type.typeName}}</div>',align:'center',width:100},
								{field:'beginTime',title:'开始时间',templet : "<div>{{layui.util.toDateString(d.beginTime, 'yyyy-MM-dd')}}</div>",align:'center',width:150},
								{field:'endTime',title:'结束时间',templet : "<div>{{layui.util.toDateString(d.endTime, 'yyyy-MM-dd')}}</div>",align:'center',width:150},
								{field:'state',title:'状态',templet:'#titleTpl',width:100},
								{field:'checkName',title:'审核人',align:'center',width:100},
								{field:'remark',title:'请假原因',align:'center',width:100},
								{fixed: 'right',title: '操作',toolbar: '#barDemo',align:'center',width:130}
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
					
					table.on('tool(test)', function(obj) {
						var data = obj.data;
						if(obj.event === 'del') {
							$.post("${pageContext.request.contextPath}/Leave/upLeave.do",{"id":data.Id,"state":2,"checkName":empName},function(res){
									if(res>0){
										layer.msg("不批准!");
										//重载表格数据
										table.reload('test',
										{
											page:{curr:1},
											where:{key:""}
										});
									}
							});
						}
						else if(obj.event === 'edit') {
							$.post("${pageContext.request.contextPath}/Leave/upLeave.do",{"id":data.Id,"state":1,"checkName":empName},function(res){
									if(res>0){
										layer.msg("已批准!");
										table.reload('test',
										{
											page:{curr:1},
											where:{key:""}
										});
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
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="edit">批准</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">不批准</a>
				</script>
				<script type="text/html" id="titleTpl">
  					<h5>{{d.state==1?'批准':d.state==2?'不批准':'未审核'}}</h5>
				</script>
				
	</body>	
</html>