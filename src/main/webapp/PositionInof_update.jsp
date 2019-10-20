<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改页面</title>
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
			
			 form.on('submit(formDemo)', function(data){
				   var shuju=$('form').serialize(); //获取表单数据
			   	$.post("Pos/update.do",shuju,function(res){
			   		if(res>0){
			   			layer.msg("修改成功！",function(){
			   				parent.layui.table.reload('test');//刷新表格页面
			    			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    			parent.layer.close(index); //执行关闭当前弹出层
			   			});
			   		}else{
			   			layer.msg("修改失败！");
			   		}
			   	});
			    return false;
			  });
			
			 //接收父级参数
		    var jos=eval('('+parent.json+')');
		    $("#id").val(jos.pid);
		    $("#pname").val(jos.pname);
		    $("#premack").val(jos.remark);
		    
			$.post("Dep/selectById.do",function(res){
			  			var dt=eval(res);
			  			 $(dt).each(function(i,g){
			  				if(jos.dept.deptId==g.deptId){
			  					$("<option selected='selected' value='"+g.deptId+"'>"+g.deptName+"</option>").appendTo($("#gr"));
			  				}else{
			  					$("<option  value='"+g.deptId+"'>"+g.deptName+"</option>").appendTo($("#gr"));
			  				}
			  				
			  				
			  			}); 
			  			form.render();
			  		});
		   
		    
		   
		});
	</script>
  </head>
  
  <body>
   
				<form name="" method="post" action="" class="layui-form">
						<div class="layui-form-item">
						    <label class="layui-form-label" >编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
						    <div style="width: 260px" class="layui-input-block">
						      <input readonly="readonly" id="id" type="text" name="pid" required  lay-verify="required" placeholder="请输入编号" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					 <div class="layui-form-item">
						    <label class="layui-form-label">职位名称：</label>
						    <div style="width: 260px" class="layui-input-block">
						      <input id="pname" type="text" name="pname" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  <div class="layui-form-item">
						    <label class="layui-form-label">部门名称：</label>
						    <div style="width: 260px" class="layui-input-block">
								<select name="dept.deptId" lay-verify="required" id="gr">
									<option value="jos.dept.deptId">==请选择部门==</option>
								</select>
							</div>
					  </div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
					    <div style="width: 260px" class="layui-input-block">
					      <textarea id="premack" name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
		

  </body>
</html>
    