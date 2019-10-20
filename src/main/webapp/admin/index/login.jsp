<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
	<link rel="stylesheet" type="text/css" href="admin/css/login.css" />
  </head>
  
  <body>
  
	<div class="m-login-bg">
			<div class="m-login">
				<h3>后台系统登录</h3>
				<div class="m-login-warp">
					<form class="layui-form">
						<div class="layui-form-item">
							<input type="text" name="sadmin" required lay-verify="required|title" placeholder="用户名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item">
							<input type="password" name="sPwd" required lay-verify="required|password" placeholder="密码" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item m-login-btn">
							<div class="layui-inline">
								<button class="layui-btn layui-btn-normal" lay-submit lay-filter="login">登录</button>
							</div>
							<div class="layui-inline">
								<button type="reset" class="layui-btn layui-btn-primary">取消</button>
							</div>
							
						</div>
					</form>
				</div>
				<p class="copyright">SG汽车服务中心后台管理</p>
			</div>
		</div>
		<script src="js/jquery-1.8.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form,layer = layui.layer,$=layui.$;
				
				//自定义验证规则
				form.verify({
					title: function(value) {
						if(value.length<2) {
							return '账户名不规范';
						}
					},
					password: [/(.+){6,12}$/, '密码必须6到12位']
				});

				
				//监听提交
				form.on('submit(login)', function(data) {
					var formData=$("form").serialize();
					$.post("EMPC/login.do",formData,function(res){
						if(res=='true'){
							layer.msg("登陆成功",{time:1000,icon:6},function(){
								window.location.href="index.jsp";
							});
						}else if(res=='false'){
							layer.msg("账户名或密码错误",{time:2000,icon:5});
							$("input[name=sPwd]").val('');
						}
					});
					return false;
				});

			});
			
		</script>
  </body>
</html>
