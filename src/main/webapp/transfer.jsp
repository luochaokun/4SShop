<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>员工管理</title>
		
		<link rel="stylesheet" href="layui/css/layui.css" />
		<script type="text/javascript" src="layui/layui.js"></script>
		<script type="text/javascript">
			layui.use(['element', 'table', 'layer', 'laydate'], function() {
				var element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					laydate = layui.laydate;
				laydate.render({
					elem: '#date1'
				});
				table.render({
					elem: '#test',
					url: 'EMPC/selectTgjl.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
					   {field:'id',  title: '编号'}
					  ,{field:'empName',  title: '姓名',templet: '<div>{{d.emp.empName}}</div>'}
				      ,{field:'jdep', title: '原部门'}
				      ,{field:'jformer', title: '原职位'}
				      ,{field:'deptName', title: '新部门',templet: '<div>{{d.former.dept.deptName}}</div>'}
				      ,{field:'pname', title: '新职位',templet: '<div>{{d.former.pname}}</div>'}
				      ,{field:'expendTime',width:200, title: '调岗时间',templet : "<div>{{layui.util.toDateString(d.expendTime, 'yyyy-MM-dd')}}</div>" }
				      ,{field:'remark', title: '备注' }
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
			});
			
		</script>
	</head>

	<body>
		
			
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