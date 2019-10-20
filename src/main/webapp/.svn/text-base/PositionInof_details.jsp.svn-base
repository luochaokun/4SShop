<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>详情页面</title>
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
	<script type="text/javascript">
	
		layui.use('form', function(){ 
		    var form = layui.form;

			 //接收父级参数
		    var jos=eval('('+parent.json+')');
		   $("#bumen").text(jos.dept.deptName);
		    $("#id").text(jos.pid);
		    $("#zhiwei").text(jos.pname);
		    $("#beuzhu").text(jos.remark);
			$.post("servlet/PositionInofServlet?op=updatesel",function(res){
			  			var dt=eval(res);
			  			$(dt).each(function(i,g){
			  				//alert(g.name)
			  				// $("#bumen").text(g.name);
			  				/*if(jos.de.name==g.name){
			  					$("<option selected='selected' value='"+g.id+"'>"+g.name+"</option>").appendTo($("#gr"));
			  				}else{
			  					$("<option  value='"+g.id+"'>"+g.name+"</option>").appendTo($("#gr"));
			  				}*/
			  				
			  			});
			  			form.render();
			  		});
		   
		    
		   
		});
	</script>
  </head>
  
  <body>
   
				<table width="80%" style="line-height: 35px;margin-left:10%">
					<tr>
						<td>编号：</td>
						<td><span id="id"></span></td>
					</tr>
					<tr>
						<td>职位：</td>
						<td><span id="zhiwei"></span></td>
					</tr>
					<tr>
						<td>部门：</td>
						<td><span id="bumen"></span></td>
					</tr>
					<tr>
						<td>备注：</td>
						<td><span id="beuzhu" style="width:50px; height: 500px "></span></td>
					</tr>
				</table>
  </body>
</html>
    