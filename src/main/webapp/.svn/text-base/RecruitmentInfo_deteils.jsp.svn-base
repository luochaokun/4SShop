<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'UpdateStaffInfo.jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="layui/css/layui.css" />
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="layui/layui.js"></script>
	
	<script>
		
		layui.use(['layer', 'form','laydate'], function(){
		  var jos;
		  var layer = layui.layer
		  ,form = layui.form
		  ,laydate=layui.laydate;
		  
		  		//接收父级参数	
			  	 jos=eval('('+parent.json+')'); 
		  		
		  		$("#rid").text(jos.rid);//编号
			  	$("#deptName").text(jos.dept.deptName);
		  		$("#pname").text(jos.pos.pname);
			  	$("#requires").text(jos.requires);
				$("#describes").text(jos.describes);
				$("#beginTime").text(jos.beginTime);
				$("#endTime").text(jos.endTime);
				$("#count").text(jos.count);
				$("#diploma").text(jos.diploma);
				$("#remark").text(jos.remark);
			
				
			 
		});
	</script> 
  </head>
  
  <body>
    	<!--详情页面-->
    	
    	
				<table width="80%" style="line-height: 35px;margin-left:10%">
					<tr>
						<td>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						<td><span id="rid"></span></td>
					</tr>
					<tr>
						<td>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</td>
						<td><span id="deptName"></span></td>
					</tr>
					<tr>
						<td>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</td>
						<td><span id="pname"></span></td>
					</tr>
					<tr>
						<td>职位要求：</td>
						<td><span id="requires"></span></td>
					</tr>
					<tr>
						<td>职位描述：</td>
						<td><span id="describes" ></span></td>
					</tr>
					<tr>
						<td>发布时间：</td>
						<td><span id="beginTime"></span></td>
					</tr>
					<tr>
						<td>截止时间：</td>
						<td><span id="endTime"></span></td>
					</tr>
					<tr>
						<td>招聘人数：</td>
						<td><span id="count"></span></td>
					</tr>
					<tr>
						<td>学历要求：</td>
						<td><span id="diploma"></span></td>
					</tr>
					<tr>
						<td>问题描述：</td>
						<td><span id="remark"></span></td>
					</tr>
				</table>
		
			
		
  </body>
</html>
    