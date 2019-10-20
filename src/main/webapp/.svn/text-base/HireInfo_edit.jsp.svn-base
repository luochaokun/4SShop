<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'addStaffInfo.jsp.jsp' starting page</title>
    
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
		layui.use(['form','element','laydate'], function(){
		    var form = layui.form, $=layui.$,element=layui.element,laydate=layui.laydate; 
		    var id_str=[];
		
		    
		//监听提交  表单
			form.on('submit(formDemo)', function(data){
				 var shuju=$('#addform').serialize(); //获取表单数据	
				$.post('hir/update.do',shuju,function(res){
			    		if(res>0){
			    			layer.msg("审核成功！",{time:2000},function(){
			    				parent.layui.table.reload('test');//刷新表格页面
			    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    				 parent.layer.close(index); //执行关闭当前弹出层
			    			});
			    				
			    		}else{
			    			 layer.msg("审核失败");
			    		}
			    	});
			  	
			    return false;
			});
			laydate.render({
			    elem: '#test1'
			  });
			
			//接收父级参数	
		  	 jos=eval('('+parent.json+')'); 
	  		$("#id").val(jos.hid);//编号
		  	
		});
	</script>
  </head>
  
  <body>
   		<!--添加页面-->
		
				<form name="" method="post" action="" class="layui-form" id="addform">
					<table>
					
					<tr>
						<td>
					  		<div class="layui-form-item">
							    <label class="layui-form-label">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label>
							    <div class="layui-input-block">
							      <select name="state" lay-verify="required" lay-search lay-filter="aihao2" id="gr2" >
							        <option value="0">审核中</option>
							        <option value="1">邀请面试</option>
							      </select>
							    </div>
						  </div>
						</td>
						
						
						<tr>
						<tr>
						<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
									    <div class="layui-input-block">
									      <input style="width: 200px;" id="id" readonly="readonly" type="text" name="hid" required  lay-verify="required" placeholder="请输入编号" autocomplete="off" class="layui-input">
									    </div>
								  </div>
						</td>
					</tr>
						<td>
							<div class="layui-form-item">
							    <div class="layui-input-block">
							      <button  class="layui-btn" lay-submit lay-filter="formDemo">切换</button>
							      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
							    </div>
							</div>
						</td>
						
					</tr>
					</table>
				</form>
			
			
  </body>
</html>
    