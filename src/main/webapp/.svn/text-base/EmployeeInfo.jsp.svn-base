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
					url: 'EMPC/select.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
				
					cols: [[
					   {type: 'checkbox', fixed: 'left'}
				      ,{field:'empId', width:50, title: 'ID', sort: true }
				      ,{field:'deptName', title: '部门',templet: '<div>{{d.pos.dept.deptName}}</div>'}
				      ,{field:'pname', title: '职位',templet: '<div>{{d.pos.pname}}</div>'}
				      ,{field:'empName',  title: '姓名'}
				      ,{field:'salary', width:150, title: '底薪', sort: true}
				      ,{field:'sex', width:150, title: '性别',templet:function(d){
				    	  if(d.sex==1){
				    		  return '男';
				    	  }else{
				    		  return '女';
				    	  }
				        } , sort: true}
				      ,{field:'diploma',  title: '学历'  }
				      ,{field:'birthday', title: '年龄',hide:true}
				       ,{field:'cardId', width:120, title: '身份证' ,hide:true}
				      ,{field:'phone',  title: '电话',hide:true}
				       ,{field:'email', width:200, title: '邮箱'  ,hide:true}
				       ,{field:'address', title: '地址' ,hide:true}
				       ,{field:'state', title: '状态' ,templet:function(s){
				    	   if(s.state==1){
				    		   return '在职';
				    	   }else{
				    		   return '离职';
				    	   }
				       }}
				       ,{field:'inTime',width:200, title: '入职时间' ,hide:true,templet : "<div>{{layui.util.toDateString(d.inTime, 'yyyy-MM-dd')}}</div>"}
				       ,{field:'outTime',width:200, title: '离职时间',hide:true,templet : "<div>{{layui.util.toDateString(d.outTime, 'yyyy-MM-dd')}}</div>" }
				       ,{field:'sadmin',width:200, title: '登陆账户',hide:true }
				       ,{field:'sPwd',width:200, title: '登陆密码',hide:true }
				        ,{field:'remark', title: '备注' ,hide:true}
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
				

				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					if(obj.event === 'del') {
						layer.confirm('真的删除么', function(index) {
							$.post("EMPC/delete.do",{empId:data.empId},function(res){
								if(res==0){
									layer.msg("删除失败!");
								}else{
									layer.msg("删除成功",function(){
										table.reload('test',{
											page:{curr:1}
										});
									});
									
								}
							});
							layer.close(index);
						});
					} else if(obj.event === 'edit') {
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
						  content:'EmployeeInfo_details.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("EmployeeInfo_details.jsp").css("display", "none");
							}
						});
					}
				});
				
				//为添加员工绑定单击事件并且弹出添加层
				$("#addbtn").click(function() {
					layer.open({
						type: 2,
						area: ['900px', '450px'],
						content:'EmployeeInfo_add.jsp',
						cancel: function() {
							//右上角关闭回调
							$("EmployeeInfo_add.jsp").css("display", "none");
						}
					});
				});
				
				
				
				var id_str=[];
				//监听表格复选框选择,从layui的table复选框取出所含信息
				table.on('checkbox(test)',function(obj){
					//获取obj的数据
				 	var data=obj.data;
					if(obj.checked){
						id_str.push(data.empId)
					}else{
						var index = id_str.indexOf(data.empId); 
						if (index > -1) { 
							id_str.splice(index, 1); 
						} 
					}
					
				});
				
				//为员工离职绑定点击事件
				$("#addlz").click(function(){
					var ids = id_str.join(',');
					 $.post('EMPC/lz.do',{ids:ids},function(res){
						 alert(res);
						 if(res.length>0){
							 layer.msg("离职成功",function(){
								 table.reload('test',{
										page:{curr:1}
									});
							 });
						 }else{
							 layer.msg("离职员工失败！请检查一次啊你是否选择员工"); 
						 }
					}); 
					
				});
				
				//为员工调岗绑定单击事件
				$("#addtg").click(function(){
					var ids = id_str.join(',');
					
					layer.open({
						type: 2,
						area: ['900px', '450px'],
						content:'EMPC/selectTg.do?ids='+ids,
						cancel: function() {
							//右上角关闭回调
							$("EmployeeInfo_tg.jsp").css("display", "none");
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
					<button class="layui-btn" id="addbtn">添加员工</button>
					<button class="layui-btn" id="addlz">员工离职</button>
					<button class="layui-btn" id="addtg">员工调岗</button>
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