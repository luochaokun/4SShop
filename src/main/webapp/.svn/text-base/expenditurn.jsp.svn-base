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
	
		<div style="margin: 20px">
			<a href="../addOutType.jsp" target="iframe" class="layui-btn">添加一个类型</a>
		</div>
		<table class="layui-table" lay-size="lg">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>类型名称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${outList }" var="o">
					<tr>
						<th>${o.typeId  }</th>
						<th>${o.typeName  }</th>
						<th><a href="${pageContext.request.contextPath}/expeC/toupdateOutType.do?id=${o.typeId }" 	class="layui-btn layui-btn-primary">修改</a>
						<a href="${pageContext.request.contextPath}/expeC/deleteOutType.do?id=${o.typeId }" 	class="layui-btn layui-btn-primary">删除</a></th>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</body>

</html>