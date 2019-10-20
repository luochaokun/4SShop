<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>员工管理</title>
		
		<link rel="stylesheet" href="../layui/css/layui.css" />
		<script type="text/javascript" src="../layui/layui.js"></script>
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
					url: '${pageContext.request.contextPath}/EMPC/select.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
								{type: 'checkbox', fixed: 'left'}
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
						      ,{field:'phone',  title: '电话',hide:true}
						      ,{field:'email', width:200, title: '邮箱'  ,hide:true}
						      ,{field:'address', title: '地址' ,hide:true}
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
							$.post("${pageContext.request.contextPath}/Salary/addC.do",{"empId":data.empId},function(res){
								if(res>0){
									   layer.msg("添加成功！",function(){
							    				parent.layui.table.reload('test');//刷新表格页面
							    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							    				 parent.layer.close(index); //执行关闭当前弹出层
							    			});  
								   }else{
									     layer.msg("添加失败，本月薪资条已存在！");  
								   }
							});
						}
				});
				
				
		});
			
		</script>
	</head>

	<body>
		
			
				<!-- 内容主体区域 -->
				<div class="layui-row">
					<form action="" class="layui-form" method="post">
						<div class="layui-inline" style="margin-left: 10px;">
							<select name="type.typeId" lay-verify="required"  id="grade11">
								<option value="0">请选择部门</option>
							</select>
						</div>
						<div class="layui-inline" style="margin-left: 10px;">
							<select name="type.typeId" lay-verify="required"  id="grade11">
								<option value="0">请选择职位</option>
							</select>
						</div>
						<div class="layui-inline" style="margin-left: 10px;">
							<input type="text" name="title" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
						</div>
						<button id="search" class="layui-btn layui-btn-normal" lay-submit="">搜索</button>
					</form>
				</div>
				
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="del">添加薪资记录</a>
				</script>
	</body>	
</html>