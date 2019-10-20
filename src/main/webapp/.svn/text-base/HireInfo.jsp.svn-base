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
					url: '${pageContext.request.contextPath}/hir/select.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
					   {type: 'checkbox', fixed: 'left'}
					  ,{field:'hid',  title: '编号', sort: true }
				      ,{field:'name', title: '姓名', sort: true }
				      ,{field:'deptName', title: '部门',templet: '<div>{{d.rec.dept.deptName}}</div>'}
				      ,{field:'pname', title: '职位',templet: '<div>{{d.rec.pos.pname}}</div>'}
				      ,{field:'beginTime',  title: '发布时间' ,hide:true,templet : "<div>{{layui.util.toDateString(d.beginTime, 'yyyy-MM-dd')}}</div>" }
				      ,{field:'endTime', title: '截止时间',hide:true,templet : "<div>{{layui.util.toDateString(d.endTime, 'yyyy-MM-dd')}}</div>" }
				      ,{field:'phone', width:120, title: '电话' ,hide:true}
				      ,{field:'email', width:120, title: '邮箱' ,hide:true}
				      ,{field:'diploma', width:120, title: '学历' }
				      ,{field:'state', width:120, title: '状态' ,templet:function(d){
				    	  if(d.state==0){
				    		 return '审核中' ;
				    	  }else{
				    		  return '邀请面试';
				    	  }
				      }}
				      ,{field:'remark', width:120, title: '备注' }
				      ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
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
				
				var id_str=[];
				//监听表格复选框选择,从layui的table复选框取出所含信息
				table.on('checkbox(test)',function(obj){
					//获取obj的数据
				 	var data=obj.data;
					if(obj.checked){
						id_str.push(data.hid)
					}else{
						var index = id_str.indexOf(data.hid); 
						if (index > -1) { 
							id_str.splice(index, 1); 
						}
					}
					
				});

				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					if(obj.event === 'edit') {//审核
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['300px', '250px'],
						  content:'HireInfo_edit.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("HireInfo_edit.jsp").css("display", "none");
							}
						});
					}else if(obj.event === 'info'){
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['800px', '500px'],
						  content:'HireInfo_info.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("HireInfo_info.jsp").css("display", "none");
							}
						});
					}
				});
				
				
				
				//为删除信息绑定点击事件
				$("#addlz").click(function(){
					var ids = id_str.join(',');
					console.log(ids);
					 $.post('${pageContext.request.contextPath}/hir/delete.do',{ids:ids},function(res){
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
					<div class="layui-inline" style="margin-left: 10px;">
						<input type="text" name="title" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
					<button id="search" class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
					
					<button class="layui-btn" id="addlz">删除信息</button>
				</div>
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="info">详情</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">审核</a>
				</script>
	</body>	
</html>