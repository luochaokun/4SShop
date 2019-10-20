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
						url: '${pageContext.request.contextPath}/Leave/select.do?id='+empId,
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
				
					table.on('tool(test)', function(obj) {
						var data = obj.data;
						if(obj.event === 'del') {
							$.post("${pageContext.request.contextPath}/Leave/delLeave.do",{"id":data.Id},function(res){
									if(res>0){
										layer.msg("删除成功!");
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
							
							layer.open({
								type: 2,
								area: ['990px', '450px'],
								content:'${pageContext.request.contextPath}/Leave/upsel.do?id='+data.Id,
								cancel: function() {
									//右上角关闭回调
									$("addStaffInfo.jsp.jsp").css("display", "none");
								}
							});
						}
					});
					
					//为添加员工绑定单击事件并且弹出添加层
					$("#addbtn").click(function() {
						layer.open({
							type: 2,
							area: ['990px', '450px'],
							content:'${pageContext.request.contextPath}/Leave/addSel.do',
							cancel: function() {
								//右上角关闭回调
								$("addStaffInfo.jsp.jsp").css("display", "none");
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
		
			<br><br>
				<!-- 内容主体区域 -->
				<div class="layui-row">
					<button id="addbtn" class="layui-btn layui-btn-normal" lay-submit="search">添加</button>
				</div>
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				</script>
				<script type="text/html" id="titleTpl">
  					<h5>{{d.state==1?'批准':d.state==2?'不批准':'未审核'}}</h5>
				</script>
				<script type="text/html" id="date1">
  					<h5>
						<fmt:formatDate value="${d.submitTime}" pattern="yyyy-MM-dd HH:mm" />
						{{d.submitTime}}
					</h5>
				</script>
				<script type="text/html" id="date2">
  					<h5>
						<fmt:formatDate value="${d.beginTime}" pattern="yyyy-MM-dd HH:mm" />
						{{d.beginTime}}
					</h5>
				</script>
				<script type="text/html" id="date3">
  					<h5>
						<fmt:formatDate value="${d.endTime}" pattern="yyyy-MM-dd HH:mm" />
						{{d.endTime}}
					</h5>
				</script>
	</body>	
</html>