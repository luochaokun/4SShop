<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="../layui/css/layui.css" />
	<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="../layui/layui.js"></script>
	<script type="text/javascript">
			var empId="${emp.empId}";
			layui.use(['form','element', 'table', 'layer', 'laydate'], function() {
				var form = layui.form,
					element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					laydate = layui.laydate,
					form=layui.form;
				
				laydate.render({
					elem: '#date1',
					elem: '#datetime',
				});
				laydate.render({
					elem: '#datetime1'
				});
				
				//监听提交        修改表单
				form.on('submit(add)', function(data){
				  var shuju=$('form').serialize(); //获取表单数据
				  $.post("${pageContext.request.contextPath}/Leave/add.do",shuju,function(res){
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
				    return false;
				  });
			});
		</script>
</head>
<body>
	<br><br>
	<form class="layui-form" action="" method="post">
			<table border="1">
				<tr>
					<th>员工姓名</th>
					<th>请假类型</th>
					<th>开始时间</th>
					<th>结束时间</th>
					<th>请假原因</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>
						<input type="text"  required lay-verify="required"  placeholder="请输入内容" autocomplete="off" class="layui-input" readonly="readonly"  value="${emp.empName }" >
						<input type="hidden" name="emp.empId" value="${emp.empId }">
					</td>
					<td>
						<select name="type.typeId" lay-verify="required"  id="grade11">
							<option value="0">请选择类型</option>
							<c:forEach items="${ltc }" var="l">
								<option value="${l.typeId }">${l.typeName }</option>
							</c:forEach>
						</select>
				    </td>
					<td>
						<input type="text" name="beginTime" class="layui-input" id="datetime" placeholder="yyyy-MM-dd">
					</td>
					<td>
					     <input type="text" name="endTime" class="layui-input" id="datetime1" placeholder="yyyy-MM-dd">
				    </td>
					<td>
						 <input type="text" name="remark" placeholder="请输入内容" class="layui-input" >
					 </td>
					<td>
						<button class="layui-btn" lay-submit lay-filter="add">添加</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</td>
				</tr>
			</table>
		</form>
</body>
</html>