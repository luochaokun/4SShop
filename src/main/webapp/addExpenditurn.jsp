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
		<blockquote class="layui-elem-quote">添加其它支出记录</blockquote>
		<form class="layui-form" action="${pageContext.request.contextPath}/expeC/insertExpenditure.do" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">支出类型</label>
				<div class="layui-input-block">
					<select name="outType.typeId" lay-verify="required">
						<c:forEach items="${outList }" var="v">
							<option value="${v.typeId} ">${v.typeName} </option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">申请人</label>
				<div class="layui-input-block">
					<select name="staff.empId" lay-verify="required">
						<c:forEach items="${staffList }" var="s">
							<option value="${s.empId} ">${s.empName} </option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			
			<div class="layui-form-item">
				<label class="layui-form-label">支出金额</label>
				<div class="layui-input-block">
					<input type="text" name="money" required lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">转入账号</label>
				<div class="layui-input-inline">
					<input type="text" name="account" required lay-verify="required" placeholder="可选填账号" autocomplete="off" class="layui-input" >
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">备注</label>
				<div class="layui-input-inline">
					<input type="text" name="remark" required lay-verify="required" placeholder="请输入备注" autocomplete="off" class="layui-input" value="办公用品耗材">
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