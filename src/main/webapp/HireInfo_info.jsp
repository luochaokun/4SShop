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
		  		$("#hid").text(jos.hid);//编号
			  	$("#name").text(jos.name);
		  		$("#phone").text(jos.phone);
			  	$("#email").text(jos.email);
				$("#diploma").text(jos.diploma);
				$("#state").text(jos.state);
				$("#remark").text(jos.remark);
				$("#pname").text(jos.rec.pos.pname);
				$("#deptName").text(jos.rec.dept.deptName);
				$("#inTime").text(jos.rec.beginTime);
				$("#outTime").text(jos.rec.endTime);
				$("#").text(jos.diploma);
				$("#").text(jos.sadmin);
				$("#").text(jos.sPwd);
				$("#remark").text(jos.remark);
				$("#pname").text(jos.pos.pname);
				$("#sex").text(jos.sex);
				
		  	//日期时间选择器
			 
		});
	</script> 
  </head>
  
  <body>
    	<!--详情页面-->
    	
    	
				<table width="80%" style="line-height: 35px;margin-left:10%">
					<tr>
						<td>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						<td><span id="hid"></span></td>
					</tr>
					<tr>
						<td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
						<td><span id="name"></span></td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td><span id="phone"></span></td>
					</tr>
					<tr>
						<td>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
						<td><span id="email"></span></td>
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
						<td>发布时间：</td>
						<td><span id="inTime"></span></td>
					</tr>
					<tr>
						<td>截止时间：</td>
						<td><span id="outTime"></span></td>
					</tr>
					
					
					
					<tr>
						<td>状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</td>
						<td><span id="state"></span></td>
					</tr>
					<tr>
						<td>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
						<td><span id="diploma"></span></td>
					</tr>
					
					<tr>
						<td>问题描述：</td>
						<td><span id="remark"></span></td>
					</tr>
				</table>
		
			
		
  </body>
</html>
    