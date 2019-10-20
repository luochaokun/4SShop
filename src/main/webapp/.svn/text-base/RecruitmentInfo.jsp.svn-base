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
					url: '${pageContext.request.contextPath}/rec/select.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
					   {type: 'checkbox', fixed: 'left'}
				      ,{field:'rid', width:50, title: 'ID', sort: true }
				      ,{field:'deptName', title: '部门',templet: '<div>{{d.dept.deptName}}</div>'}
				      ,{field:'pname', title: '职位',templet: '<div>{{d.pos.pname}}</div>'}
				      ,{field:'requires',  title: '职位要求',hide:true}
				      ,{field:'describes', width:150, title:'职位描述',hide:true,sort: true}
				      ,{field:'beginTime',  title: '发布时间' ,templet : "<div>{{layui.util.toDateString(d.beginTime, 'yyyy-MM-dd')}}</div>" }
				      ,{field:'endTime', title: '截止时间',templet : "<div>{{layui.util.toDateString(d.endTime, 'yyyy-MM-dd')}}</div>" }
				      ,{field:'count', width:120, title: '招聘人数' }
				      ,{field:'diploma', width:120, title: '学历要求' }
				      ,{field:'remark', width:120, title: '描述' ,hide:true}
				      ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:80}
				    ]],
					page: true
				});
				
				
				var id_str=[];
				//监听表格复选框选择,从layui的table复选框取出所含信息
				table.on('checkbox(test)',function(obj){
					//获取obj的数据
				 	var data=obj.data;
					if(obj.checked){
						id_str.push(data.rid)
					}else{
						var index = id_str.indexOf(data.rid); 
						if (index > -1) { 
							id_str.splice(index, 1); 
						}
					}
					
				});

				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					if(obj.event === 'edit') {
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['900px', '450px'],
						  content:'EmployeeInfo_update.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("EmployeeInfo_update.jsp").css("display", "none");
							}
						});
					}else if(obj.event === 'info'){
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['800px', '500px'],
						  content:'RecruitmentInfo_deteils.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("RecruitmentInfo_deteils.jsp").css("display", "none");
							}
						});
					}
				});
				
				//为添加招聘信息绑定单击事件并且弹出添加层
				$("#addbtn").click(function() {
					layer.open({
						type: 2,
						area: ['900px', '450px'],
						content:'RecruitmentInfo_add.jsp',
						cancel: function() {
							//右上角关闭回调
							$("RecruitmentInfo_add.jsp").css("display", "none");
						}
					});
				});
				
				//为删除信息绑定点击事件
				$("#addlz").click(function(){
					var ids = id_str.join(',');
					console.log(ids);
					 $.post('${pageContext.request.contextPath}/rec/delete.do',{ids:ids},function(res){
						 alert(res);
						 if(res.length>0){
							 layer.msg("删除成功",function(){
								 table.reload('test',{
										page:{curr:1}
									});
							 });
						 }else{
							 layer.msg("删除信息失败！请检查一次啊你是否选择信息"); 
						 }
					}); 
					
				});
				
				
			});
			
		</script>
	</head>

	<body>
		
			
				<!-- 内容主体区域 -->
				<div class="layui-row">
					<button class="layui-btn" id="addbtn">添加信息</button>
					<button class="layui-btn" id="addlz">删除信息</button>
				</div>
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="info">详情</a>
				</script>
	</body>	
</html>