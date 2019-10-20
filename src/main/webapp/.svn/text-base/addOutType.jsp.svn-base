<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	</head>

	<body>
		<blockquote class="layui-elem-quote">添加支出类型信息</blockquote>
		<form class="layui-form" action="${pageContext.request.contextPath}/expeC/insertOutType.do" method="post">
			
			<div class="layui-form-item">
				<label class="layui-form-label">类型名称</label>
				<div class="layui-input-inline">
					<input type="text" name="typeName" required lay-verify="required" placeholder="1998" autocomplete="off" class="layui-input" value="1998">
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="submit" class="layui-btn" lay-filter="formDemo" />
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<script>
			
			layui.use('form',function(){
				  var form = layui.form;
				   
				
				});
		</script>

	</body>

</html>