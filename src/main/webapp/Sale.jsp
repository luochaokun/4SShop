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
					url: 'salC/select.do',
					method:'post',
					limit:5,
					limits:[2,5,10,15,20],
					cols: [[
				      {field:'sid', width:50, title: 'ID', sort: true }
				      ,{field:'empId',  title: '销售员',templet: '<div>{{d.empInfo.empName}}</div>'}
				      ,{field:'userId', width:130, title: '客户', templet: '<div>{{d.cusInfo.name}}</div>'}
				      ,{field:'carId',  width:150,title: '车辆', templet: '<div>{{d.carInfo.cname}}</div>'}
				      ,{field:'saleTime', width:150,title: '销售时间',templet : "<div>{{layui.util.toDateString(d.saleTime, 'yyyy-MM-dd')}}</div>"}
				       ,{field:'advance', width:100, title: '补差金额'}
				      ,{field:'receipts',width:170,  title: '实收金额'}
				       ,{field:'receivable', width:150, title: '应收金额'}
				         ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
				        
				    ]],
					page: true
				});
				
				//模糊查询
				$("#search").click(function(){
					var keyword=$("input[name=title]").val();
					//重载表格数据
					table.reload('test',
						{
							page:{curr:1},
							where:{key:keyword}
						});
					
				});
				
				 //使用post异步请求Controller得到所有的员工
			    $.post("EMPC/selectById.do",function(res){
			    	var dt=eval(res);
			    	$(dt).each(function(i,g){
			    		$("<option value='"+g.empId+"'>"+g.empName+"</option>").appendTo($("#emp"));
			    	});
			    	 form.render(); 
			    });
				 
				 
			    //使用post异步请求Controller得到所有的用户
			    $.post("cusC/selectById.do",function(res){
			    	var dt=eval(res);
			    	$(dt).each(function(i,g){
			    		$("<option value='"+g.cid+"'>"+g.name+"</option>").appendTo($("#cus"));
			    	});
			    	 form.render(); 
			    });
				
			    
			  //使用post异步请求Controller得到所有的车辆
			    $.post("CarCon/selectById.do",function(res){
			    	var dt=eval(res);
			    	$(dt).each(function(i,g){
			    		$("<option value='"+g.cid+"'>"+g.cname+"</option>").appendTo($("#car"));
			    	});
			    	 form.render(); 
			    });

				table.on('tool(test)', function(obj) {
					
					if(obj.event === 'del') {
						layer.confirm('真的删除么', function(index) {
							alert(data.sid)
							$.post("salC/delete.do",{sId:data.sid},function(res){
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
								  $("#upreceipts").val(data.receipts);
								  $("#upreceivable").val(data.receivable);
								  $("#upadvance").val(data.receivable-data.receipts);
								  $("#upsid").val(data.sid);
								  
							  },
							  cancel: function() {
									//右上角关闭回调
									$("#upda").css("display", "none");
							  }
						});
						
					}else if(obj.event === 'info'){
						 json=JSON.stringify(data);
						layer.open({
						  type: 2, 
						  area: ['500px', '500px'],
						  content:'SelectStaffInfo.jsp',  //这里content是一个普通的String
						  cancel: function() {
							//右上角关闭回调
							$("UpdateStaffInfo.jsp.jsp").css("display", "none");
							}
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
					$.post("salC/add.do",formData,function(res){
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
				
				
				
				//监听修改表单提交
				form.on('submit(updatetn)',function(){
					var formData=$("#updateForm").serialize();
					$.post("salC/update.do",formData,function(res){
						
							if(res>0){
								layer.msg("修改成功",{time:1000},function(){
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
			
			<button class="layui-btn" id="addApp">添加销售记录</button>
			</div>
			
			<div>
				<table class="layui-hide" id="test" lay-filter="test"></table>
				</div>
				<script type="text/html" id="barDemo">
					
					<a class="layui-btn layui-btn-xs" lay-event="edit">实收金额</a>
					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				</script>
	</body>	
	
				
	<!--添加页面-->
			<div style="display: none"  id="add"> 
				<form name="" method="post" action="" class="layui-form" id="addForm">
					 <div class="layui-form-item">
						    <label class="layui-form-label">销售员：</label>
						    <div class="layui-input-block">
						    
						      <select name="empInfo.empId" id="emp">
								<option value="">请选择销售人员</option>
							</select>
						    </div>
					  </div>
					  
					  <div class="layui-form-item">
						    <label class="layui-form-label">客户：</label>
						    <div class="layui-input-block">
						      <select name="cusInfo.cid" id="cus">
								<option value="">请选择客户</option>
							</select>
						    </div>
					  </div>
					 
					  <div class="layui-form-item">
						    <label class="layui-form-label">销售车辆：</label>
						    <div class="layui-input-block">

						      <select name="carInfo.cid" id="car">
								<option value="">请选择车辆</option>
							</select>
						    </div>
					  </div>
					  
					 
					  
					  <input type="hidden" name="advance"   lay-verify="" placeholder="请输入预收金额" autocomplete="off" class="layui-input" value="0">
						
					  
					  
					  <div class="layui-form-item">
						    <label class="layui-form-label">实收金额：</label>
						    <div class="layui-input-block">
						      <input type="text" name="receipts" required  lay-verify="required" placeholder="请输入实收金额" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					  <div class="layui-form-item">
						    <label class="layui-form-label">应收金额：</label>
						    <div class="layui-input-block">
						      <input type="text" name="receivable" required  lay-verify="required" placeholder="请输入应收金额" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					<br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="addbtn">添加</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
			
	
		<!--补差页面-->
			<div style="display: none"  id="upda"> 
				<form name="" method="post" action="" class="layui-form" id="updateForm">
					 <div class="layui-form-item">
						    <label class="layui-form-label">实收金额：</label>
						    <div class="layui-input-block">
						      <input type="text" id="upreceipts" name="receipts" required  lay-verify="required" placeholder="请输入申请金额" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  
					  <input type="hidden" class="form-control" name="advance" id="upadvance" placeholder="请输入联系地址" style="width: 300px;" />
					<input type="hidden" class="form-control" name="sid" id="upsid" placeholder="请输入联系地址" style="width: 300px;" />
					<input type="hidden" class="form-control" name="receivable" id="upreceivable" placeholder="请输入联系地址" style="width: 300px;"/>

					<br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="updatetn">确定</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
</html>