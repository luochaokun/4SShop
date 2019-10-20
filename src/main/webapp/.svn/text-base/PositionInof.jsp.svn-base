<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>职位管理</title>
		
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
					url: 'Pos/select.do',
					method:'post',
					page: true,
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
				      {field:'pid', width:100, title: 'ID', sort: true}
				       ,{field:'dept.deptName', width:150, title: '部门名称',templet: '<div>{{d.dept.deptName}}</div>'}
				      ,{field:'pname', width:150, title: '职位名称'}
				        ,{field:'remark', title: '备注'}
				         ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
				        
				    ]]
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
				
				//监听删除
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					console.log(data)
					if(obj.event === 'del') { //删除页面
						layer.confirm('真的删除吗！', function(index) {
							$.post("Pos/delete.do",{pid:data.pid},function(res){
								if(res>0){
									layer.msg("删除成功！",function(){
										table.reload('test',{
											page:{curr:1}
					    				});
									});
									
								}else{
									layer.msg("删除失败！");
								}
							});
						});
					} else if(obj.event === 'edit') { //修改页面
						json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['500px', '500px'],
						  content:'PositionInof_update.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("PositionInof_update.jsp").css("display", "none");
							}
						});
					}else if(obj.event === 'info') { //详情页面
						json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['700px', 'auto'],
						  content:'PositionInof_details.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("SelectPositionf.jsp").css("display", "none");
							}
						});
						
					}
				});
				
				//为添加员工绑定单击事件并且弹出添加层
				$("#addbtn").click(function() {
					layer.open({
						type: 2,
						area: ['500px', '500px'],
						content:'PositionInof_add.jsp'
					});
					
					
				})

			});
			
			
			
				
			
		
			
		</script>
	</head>

	<body>
		
			
				<!-- 内容主体区域 -->
				<div class="layui-row">
					<div class="layui-inline" style="margin-left: 10px;">
						<input type="text" name="title" required lay-verify="required" placeholder="请输入相应职位的关键字" autocomplete="off" class="layui-input">
					</div>
					<button id="search" class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
					<button class="layui-btn" id="addbtn">添加职位</button>
				</div>
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="info">详情</a>
					<a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				</script>

			
	

	</body>
</html>
