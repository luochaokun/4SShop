<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>员工管理</title>
		
		<link rel="stylesheet" href="layui/css/layui.css" />
		<script type="text/javascript" src="layui/layui.js"></script>
		<script type="text/javascript">
			layui.use(['element', 'table', 'layer', 'laydate','form'], function() {
				var element = layui.element,
					layer = layui.layer,
					$ = layui.$,
					table = layui.table,
					form=layui.form,
					laydate = layui.laydate;
				laydate.render({
					elem: '#date1'
				});
				table.render({
					elem: '#test',
					url: 'appC/showApp.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
				      {field:'aId', width:50, title: 'ID', sort: true }
				      ,{field:'appName',  title: '申请人'}
				      ,{field:'phone', width:130, title: '电话', sort: true,hide:true}
				      ,{field:'money',  width:100,title: '申请金额'}
				      ,{field:'outmoney', width:100,title: '实际支出'}
				       ,{field:'inmoney', width:100, title: '应还金额'}
				      ,{field:'appTime',width:170,  title: '申请时间', templet : "<div>{{layui.util.toDateString(d.appTime, 'yyyy-MM-dd')}}</div>"}
				       ,{field:'remark', width:150, title: '备注',hide:true}
				       ,{field:'state', title: '状态'}
				       ,{field:'exaName',width:100, title: '审核人',hide:true }
				         ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:250}
				        
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
				

				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					if(obj.event === 'del') {
						layer.confirm('真的删除么', function(index) {
							$.post("appC/delete.do",{aId:data.aId},function(res){
								if(res==0){
									layer.msg("删除失败!");
								}else{
									layer.msg("删除成功",function(){
										table.reload('test',{
											page:{curr:1}
										});
									});
									
								}
							});
							layer.close(index);
						});
					} else if(obj.event === 'edit') {
						layer.open({
							  type: 1, 
							  area: ['400px', 'auto'],
							  offset:'100px',
							  content:$('#upda'),  //这里content是一个普通的String
							  success:function(){
								  
								  $("#upoutmoney").val(data.outmoney);
								  $("#upinmoney").val(data.inmoney);
								  $("#upremark").val(data.remark);
								  $("#upstate").val(data.state);
								  $("#upexaName").val(data.exaName);
								  $("#upaId").val(data.aId);
								  
							  },
							  cancel: function() {
									//右上角关闭回调
									$("#upda").css("display", "none");
							  }
						});
						
					}else if(obj.event === 'tuikuan') {
						layer.open({
							  type: 1, 
							  area: ['400px', 'auto'],
							  offset:'100px',
							  content:$('#gtt'),  //这里content是一个普通的String
							  
							  success:function(){
								  
								  $("#uoutmoney").val(data.outmoney);
								  $("#uinmoney").val(data.money-data.outmoney);
								  $("#uremark").val(data.remark);
								  $("#ustate").val(data.state);
								  $("#uexaName").val(data.exaName);
								  $("#umoney").val(data.money);
								  $("#upId").val(data.aId);
								  
							  },
							  cancel: function() {
									//右上角关闭回调
									$("#gtt").css("display", "none");
							  }
						});
						
					} else if(obj.event === 'xq'){
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['500px', '500px'],
						  content:'ApplyInfo_details.jsp',  //这里content是一个普通的String
						  
						});
					}
				});
				
				
				
				
				//为申请采购表绑定单击事件并且弹出添加层
				$("#addApp").click(function() {
					layer.open({
						type: 1,
						area: ['700px', '450px'],
						content:$('#add'),
						cancel: function() {
							//右上角关闭回调
							$("#add").css("display", "none");
						}
					});
				})
				
				//监听添加表单提交
				form.on('submit(addbtn)',function(){
					var formData=$("#addForm").serialize();
					$.post("appC/add.do",formData,function(res){
						if(res>0){
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
						}else{
							layer.msg("添加失败");
						}
					});
					return false;
				});
				
				
				
				//审核表单提交
				form.on('submit(updatetn)',function(){
					var formData=$("#updateForm").serialize();
					$.post("appC/update.do",formData,function(res){
						
							if(res>0){
								layer.msg("审核成功",{time:1000},function(){
									//重置表单
									$("#updateForm")[0].reset();
									//重新加载表格
									table.reload('test',{
										page:{curr:1},
										where: {key:''}
									});
									//关闭当前弹层
									layer.closeAll();
								});
							}else{
								layer.msg("审核失败");
							}
						});
						return false;
				});
				
				
				
				//监听修改表单提交
				form.on('submit(updatetn1)',function(){
					var formData=$("#updateForm1").serialize();
					$.post("appC/update.do",formData,function(res){
						
							if(res>0){
								layer.msg("申请退款成功",{time:1000},function(){
									//重置表单
									$("#updateForm1")[0].reset();
									//重新加载表格
									table.reload('test',{
										page:{curr:1},
										where: {key:''}
									});
									//关闭当前弹层
									layer.closeAll();
								});
							}else{
								layer.msg("修改失败");
							}
						});
						return false;
				});

			});
			
		</script>
	</head>

	<body>
		
			
		<!-- 内容主体区域 -->
		<div class="layui-row">
			<div class="layui-inline" style="margin-left: 10px;">
				<input type="text" name="title" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
			</div>
			<button id="search" class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
			<button class="layui-btn" id="addApp">采购申请</button>
			
			
			</div>
			
			<div>
				<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					
					<a class="layui-btn layui-btn-xs" lay-event="edit">审核</a>
					<a class="layui-btn layui-btn-xs" lay-event="tuikuan">计算退款金额</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="xq">详情</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
					
				</script>
	</body>	
	
				
	<!--添加页面-->
			<div style="display: none"  id="add"> 
				<form name="" method="post" action="" class="layui-form" id="addForm">
					 <div class="layui-form-item">
						    <label class="layui-form-label">申请人：</label>
						    <div class="layui-input-block">
						      <input type="text" name="appName" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input" value="${sessionScope.emp.empName}" readonly>
						    </div>
						    
					  </div>
					  
					  
					 <input type="hidden" name="phone" required  lay-verify="required" placeholder="请输入部门名称" autocomplete="off" class="layui-input" value="${sessionScope.emp.phone}">
						  
						  
					  <div class="layui-form-item">
						    <label class="layui-form-label">申请金额：</label>
						    <div class="layui-input-block">
						      <input type="text" name="money" required  lay-verify="required" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					 
					  
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">申请原因：</label>
					    <div class="layui-input-block">
					      <textarea name="remark"   lay-verify="" placeholder="请输入申请原因" class="layui-textarea"></textarea>
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="addbtn">添加</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
			
	
		<!--审核页面-->
			<div style="display: none"  id="upda"> 
				<form name="" method="post" action="" class="layui-form" id="updateForm">
	
					  <input type="hidden" id="upoutmoney" name="outmoney" required  lay-verify="required" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
					  
					   <input type="hidden" id="upinmoney" name="inmoney" required  lay-verify="required" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">状态：</label>
							<div class="layui-input-block">
								<select name="state" >
									<option value="未审核"></option>
									<option value="未审核" ${state=='未审核'?'checked':'' }>否</option>
									<option value="已审核"  ${state=='已审核'?'checked':'' }>是</option>
								</select>
								
								<!-- <input type="text" name="state" id="upstate" autocomplete="off" class="layui-input"> -->
							</div>
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">审核人：</label>
							<div class="layui-input-block">
								 <select name="exaName" >
									
									<option value="${sessionScope.emp.empName}">${sessionScope.emp.empName}</option>
								</select> 
								<!--
								<input type="text" name="exaName" id="upexaName" autocomplete="off" class="layui-input"  value="${sessionScope.emp.empName}" readonly>
								-->
							</div>
						</div>
					</div>
					

					<input type="hidden" class="form-control" name="aId" id="upaId" placeholder="请输入联系地址" style="width: 300px;" value="${emp.empId}"/>

					<br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="updatetn">确认</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
			
			
			
			<!--退款页面-->
			<div style="display: none"  id="gtt"> 
				<form name="" method="post" action="" class="layui-form" id="updateForm1">
				
				
					
					 
					 <div class="layui-form-item">
						    <label class="layui-form-label">实际支出：</label>
						    <div class="layui-input-block">
						      <input type="text" id="uoutmoney" name="outmoney"   lay-verify="" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					  
					 	<input type="hidden" id="umoney" name="money"  lay-verify="" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
					  
						<input type="hidden" id="uinmoney" name="inmoney"  lay-verify="" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
						 
					   
					   <input type="hidden" id="ustate" name="state"   lay-verify="" placeholder="请输入申请金额" autocomplete="off" class="layui-input" value="已审核">
					  
					   <input type="hidden" id="uexaName" name="exaName"   lay-verify="" placeholder="请输入申请金额" autocomplete="off" class="layui-input" value="admin">
			

					<input type="hidden" class="form-control" name="aId" id="upId" placeholder="请输入联系地址" style="width: 300px;"/>

					<br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="updatetn1">修改</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
			
			
			
			
			<!--添加页面-->
			<div style="display: none"  id="xq"> 
				<form name="" method="post" action="" class="layui-form" id="addForm">
					 <div class="layui-form-item">
						    <label class="layui-form-label">申请人：</label>
						    <div class="layui-input-block">
						      <input type="text" name="appName" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input" value="${sessionScope.emp.empName}" readonly>
						    </div>
						    
					  </div>
					  
					  
					 <input type="hidden" name="phone" required  lay-verify="required" placeholder="请输入部门名称" autocomplete="off" class="layui-input" value="${sessionScope.emp.phone}">
						  
						  
					  <div class="layui-form-item">
						    <label class="layui-form-label">申请金额：</label>
						    <div class="layui-input-block">
						      <input type="text" name="money" required  lay-verify="required" placeholder="请输入部门名称" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					 
					  
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">申请原因：</label>
					    <div class="layui-input-block">
					      <textarea name="remark"  required lay-verify="required" placeholder="请输入描述" class="layui-textarea"></textarea>
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="addbtn">添加</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
			
			
			
	
</html>