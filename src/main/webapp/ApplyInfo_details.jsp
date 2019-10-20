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
		  		$("#aId").text(jos.aId);//编号
			  	$("#appName").text(jos.appName);
		  		$("#phone").text(jos.phone);
			  	$("#money").text(jos.money);
				$("#outmoney").text(jos.outmoney);
				$("#inmoney").text(jos.inmoney);
				$("#remark").text(jos.remark);
				$("#state").text(jos.state);
				$("#exaName").text(jos.exaName);
				/* if(function(){
					if(jos.sex==1){
						$("#sex").text('男');
					}else{
						$("#sex").text('女');
					}
				}) */
				
				if(jos.sex==1){
    				$("#sex").attr('男');
		  		}else{
		  			$("#sex").attr('女');
		  		}
		  	//日期时间选择器
			  laydate.render({
			    elem: '#test1'
			    ,type: 'datetime'
			  });
		});
	</script> 
  </head>
  
  <body>
    	<!--详情页面-->
    	
    	
				<table  width="80%" style="line-height: 45px;margin-left:10%;">
					<tr>
						<td>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						<td><span id="aId"></span></td>
					</tr>
					<tr>
						<td>申&nbsp;请&nbsp;&nbsp;人：</td>
						<td><span id="appName"></span></td>
					</tr>
					<tr>
						<td>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
						<td><span id="phone"></span></td>
					</tr>
					<tr>
						<td>申请金额：</td>
						<td><span id="money"></span></td>
					</tr>
					<tr>
						<td>实际支出：</td>
						<td><span id="outmoney" ></span></td>
					</tr>
					<tr>
						<td>还款金额：</td>
						<td><span id="inmoney"></span></td>
					</tr>
				
					<tr>
						<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
						<td><span id="remark"></span></td>
					</tr>
					<tr>
						<td>状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</td>
						<td><span id="state"></span></td>
					</tr>
					<tr>
						<td>审&nbsp;&nbsp;&nbsp;核&nbsp;&nbsp;人：</td>
						<td><span id="exaName"></span></td>
					</tr>
					
				</table>
		
			
		
  </body>
</html>
    