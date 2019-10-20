<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<table class="layui-table" lay-size="lg">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>车辆</th>
					<th>名称</th>
					<th>价格(单位：万元)</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="car">
					<tr>
						<th>${car.cid }</th>
						<th>${car.imga }</th>
						<th>${car.cname}</th>
						<th>${car.price }</th>
						<th><a href="${pageContext.request.contextPath}/CarCon/toUpdateCarInfo.do?id=${car.cid }" 	class="layui-btn layui-btn-primary">详情</a>
						<a href="${pageContext.request.contextPath}/CarCon/deleteCarInfo.do?id=${car.cid }" 	class="layui-btn layui-btn-primary">删除</a></th>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</body>

</html>