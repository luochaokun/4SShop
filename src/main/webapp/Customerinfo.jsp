<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.direct.entity.CustomerInfo"%> 
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>客户管理</title>
		
		<link rel="stylesheet" href="layui/css/layui.css" />
		<script type="text/javascript" src="layui/layui.js"></script>
		<script type="text/javascript">
			layui.use(['element', 'table', 'layer', 'laydate','form'], function() {
				var element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					laydate = layui.laydate,
					form=layui.form;
				
				laydate.render({
					elem: '#date1'
				});
				
				//加载表格
				table.render({
					elem: '#test',
					url: 'cusC/queryCustomer.do',
					method:'post',
					limit:5,
					limits:[1,2,5,10,15,20],
					cols: [[
				      {field:'cid', title: '编号', sort: true},
				      {field:'name',  title: '姓名'},
				      {field:'phone',  title: '电话'},
				      {field:'address',  title: '地址',hide:true},
				      {field:'idcard',  title: '身份证号',hide:true},
				      {field:'consumption',  title: '消费金额',hide:true},
				      {fixed: 'right', title:'', toolbar: '#barDemo',align:'right'} 
				    ]],
					page: true
				});
				
				//模糊查询
				$("#search").click(function(){
					var keyword=$("input[name=title]").val();
					//重载表格数据
					table.reload('test',{
						page:{curr:1},
						where: {key:keyword}
					});
				});
				
				//监听表格工具栏（修改，删除）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					if(obj.event === 'del') {
						layer.confirm('确定删除吗？', function(index) {
							$.post("cusC/deleteCustomer.do",{cid:data.cid},function(res){
								if(res){
									layer.msg("删除成功",{time:2000},function(){
										//刷新表格
										table.reload('test',{
											page:{curr:1},
											where: {key:''}
										});
									});
								}else{
									layer.msg("删除失败,请稍后再试....",{time:2000});
								}
							});
						});
					} else if(obj.event === 'edit') {
						layer.open({
							  type: 1, 
							  area: ['380px', 'auto'],
							  content:$('#xg1'),  //这里content是一个普通的String
							  success:function(){
								$("#updId").val(data.cid);
								$("#updName").val(data.name);
								$("#updPhone").val(data.phone);
								$("#updAddress").val(data.address);
								$("#updIdcard").val(data.idcard);
								$("#updPwd").val(data.pwd);
							  },
							  cancel: function() {
									//右上角关闭回调
									$("#xg1").css("display", "none");
							  }
						});
					} else if(obj.event === 'info') {
						layer.open({
							  type: 1, 
							  area: ['600px', 'auto'],
							  offset:'100px',
							  content:$('#xg2'),  //这里content是一个普通的String
							  success:function(){
								$("#infoId").text(data.cid);
								$("#infoName").text(data.name);
								$("#infoPhone").text(data.phone);
								$("#infoAddress").text(data.address);
								$("#infoMoney").text(data.consumption);
								$("#infoIdcard").text(data.idcard);
							  },
							  cancel: function() {
									//右上角关闭回调
									$("#xg2").css("display", "none");
							  }
						});
					}
				});
				
				//为添加员工绑定单击事件并且弹出添加层
				$("#addbtn").click(function() {
					layer.open({
						type: 1,
						area: ['380px', 'auto'],
						offset:'60px',
						content: $('#tj1'),
						cancel: function() {
							//右上角关闭回调
							$("#tj1").css("display", "none");
						}
					});
				})
				
				//监听添加表单提交
				form.on('submit(add)',function(){
					var formData=$("#addForm").serialize();
					$.post("cusC/addCustomer.do",formData,function(res){
						if(res=="true"){
							layer.msg("添加成功",{time:1000},function(){
								//重置表单
								$("#addForm")[0].reset();
								//重新加载表格
								table.reload('test',{
									page:{curr:1},
									where: {key:''}
								});
								//关闭弹层
								layer.closeAll();
							});
						}else if(res=='exist'){
							layer.msg("此号码已被注册",{time:1000,icon:2},function(){
								//重置表单
								$("#addForm")[0].reset();
							});
						}else if(res=="false"){
							//弹出失败信息
							layer.msg("添加失败",{time:1000});
						}
					});
					return false;
				});
				
				//监听修改表单提交
				form.on('submit(upd)',function(){
					var formData=$("#updForm").serialize();
					$.post("cusC/updateCustomer.do",formData,function(res){
							if(res){
								layer.msg("修改成功",{time:1000},function(){
									//重置表单
									$("#updForm")[0].reset();
									//重新加载表格
									table.reload('test',{
										page:{curr:1},
										where: {key:''}
									});
									//关闭当前弹层
									layer.closeAll();
								});
							}else{
								//弹出失败信息
								layer.msg("修改失败");
							}
						});
						return false;
				});
				
				//自定义验证规则
				form.verify({
					title: function(value) {
						if(value.length < 2) {
							return '账户名不规范';
						}
					},
					password: [/(.+){6,12}$/, '密码必须6到12位']
					
				});
				
			});
			
		</script>
	</head>
	
	<body>
				<input type="hidden" name="checkLogin" id="checkLogin" value="${sessionScope.admin.accouts}"/>
				<!-- 内容主体区域 -->
				<div class="layui-row">
					<div class="layui-inline" style="margin-left: 10px;">
						<input type="text" name="title" required lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input">
					</div>
				
					<button class="layui-btn layui-btn-normal" lay-submit="search" id="search">搜索</button>
					<button class="layui-btn" id="addbtn">添加客户</button>
					
				</div>
				<div>
					<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					<a class="layui-btn layui-btn-xs" lay-event="info">详情</a>
					<a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				</script>

			
	

	</body>
	
	
	<!--添加页面-->
			<div style="display: none"  id="tj1"> 
				<form name="" method="post" action="" class="layui-form" id="addForm">
					 <div class="layui-form-item">
						<label class="layui-form-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
						<div class="layui-input-block">
						     <input type="text" id="addName" name="name" required  lay-verify="required|title" placeholder="请输入姓名" autocomplete="off" class="layui-input">
						</div>
					 </div>
					  <div class="layui-form-item">
						 <label class="layui-form-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label>
						 <div class="layui-input-block">
						      <input type="text" id="addPhone" name="phone" required  lay-verify="required|title" placeholder="请输入电话" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					   <div class="layui-form-item">
						 <label class="layui-form-label">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
						 <div class="layui-input-block">
						      <input type="text" id="addAddress" name="address" required  lay-verify="required|title" placeholder="请输入地址" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					   <div class="layui-form-item">
						 <label class="layui-form-label">身份证号：</label>
						 <div class="layui-input-block">
						      <input type="text" id="addIdcard" name="idcard" required  lay-verify="required|title" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					    <div class="layui-input-block">
						     <input type="password" id="addPwd" name="pwd" required  lay-verify="required|password" placeholder="请输入密码" autocomplete="off" class="layui-input">
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="add">添加</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>


	<!--修改页面-->
			<div style="display: none"  id="xg1"> 
				<form name="" method="post" action="" class="layui-form" id="updForm">
					 <input type="hidden" name="cid" id="updId">
					 <div class="layui-form-item">
						    <label class="layui-form-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
						    <div class="layui-input-block">
						      <input type="text" name="name" id="updName" required  lay-verify="required" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					   <div class="layui-form-item">
						 <label class="layui-form-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label>
						 <div class="layui-input-block">
						      <input type="text" id="updPhone" name="phone" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					   <div class="layui-form-item">
						 <label class="layui-form-label">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
						 <div class="layui-input-block">
						      <input type="text" id="updAddress" name="address" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					   <div class="layui-form-item">
						 <label class="layui-form-label">身份证号：</label>
						 <div class="layui-input-block">
						      <input type="text" id="updIdcard" name="idcard" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
						 </div>
					  </div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					   	<div class="layui-input-block">
						     <input type="password" id="updPwd" name="pwd" required  lay-verify="required|password" autocomplete="off" class="layui-input">
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="upd">修改</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>


	<!--详情页面-->
			<div style="display: none"  id="xg2"> 
				<table width="80%" style="line-height: 60px;margin-left:10%;">
					<tr>
						<td>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
						<td><span id="infoId"></span></td>
					</tr>
					<tr>
						<td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
						<td><span id="infoName"></span></td>
					</tr>
					<tr>
						<td>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
						<td><span id="infoPhone"></span></td>
					</tr>
					<tr>
						<td>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
						<td><span id="infoAddress"></span></td>
					</tr>
					<tr>
						<td>身份证号：</td>
						<td><span id="infoIdcard"></span></td>
					</tr>
				</table>
			</div>
</html>