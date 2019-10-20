<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<a href="${pageContext.request.contextPath}/expeC/toinsertExpenditure.do" target="iframe" class="layui-btn">添加一条支出记录</a>
		</div>
		<table class="layui-table" lay-size="lg" id="tab">
			<colgroup>
				<col width="150">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>支出类型</th>
					<th>支出金额</th>
					<th>提交时间</th>
					<th>转入账号</th>
					<th>备注</th>
					<th>申请人</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${exlist.list }" var="e">
					<tr>
						<th>${e.eid  }</th>
						<th>${e.outType.typeName  }</th>
						<th>${e.money  }</th>
						<th>
						<fmt:formatDate value="${e.expTime  }" pattern="yyyy-MM-dd HH:mm:ss" var="time"/>
						${time }</th>
						<th>${e.account  }</th>
						<th>${e.remark  }</th>
						<th style="color: #2F4056">${e.staff.empName  }</th>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
		
		<div class="layui-btn-group" style="position: fixed;left: 40%;bottom: 5%">
		  <a href="${pageContext.request.contextPath}/expeC/queryExpenditure.do?pageNo=${exlist.firstPage}" class="layui-btn">
		    <i class="layui-icon layui-icon-prev"></i>
		  </a>
		  <a href="${pageContext.request.contextPath}/expeC/queryExpenditure.do?pageNo=${exlist.upPage}"  class="layui-btn">
		    <i class="layui-icon layui-icon-left"></i>
		  </a>
		  <a href="${pageContext.request.contextPath}/expeC/queryExpenditure.do?pageNo=${exlist.nextPage}"  class="layui-btn">
		    <i class="layui-icon layui-icon-right"></i>
		  </a>
		  <a href="${pageContext.request.contextPath}/expeC/queryExpenditure.do?pageNo=${exlist.lastPage}" class="layui-btn">
		    <i class="layui-icon layui-icon-next"></i>
		  </a>
		</div>
	</body>

</html>