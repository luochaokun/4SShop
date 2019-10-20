<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>职位添加</title>
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
	        var form = layui.form,
	        $=layui.$;
	        
			//监听提交  表单
			form.on('submit(formDemo)', function(data){
				 var shuju=$('form').serialize(); //获取表单数据
				 var id=$("#grade option:selected").val();
					if(id==0){
						layer.msg("部门不能为空",{icon:2});
						return false;
					}
					$.post('Pos/add.do',shuju,function(res){
			    		if(res>0){
			    			layer.msg("添加成功！",{time:2000},function(){
			    				parent.layui.table.reload('test');//刷新表格页面
			    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    				 parent.layer.close(index); //执行关闭当前弹出层
			    			});
			    				
			    		}else if(res=='de'){
			    			layer.msg("该职位已存在！",{time:1000,icon:2},function(){
									//重置表单
									$("#zhiwei").val('');
								});
			    		}else{
			    			 layer.msg("添加失败");
			    		}
			    	});
			  	
			    return false;
			});
			
			
			$.post("Dep/selectById.do",function(res){
				var dt=eval(res);
				$(dt).each(function(i,g){
					$("<option value='"+g.deptId+"'>"+g.deptName+"</option>").appendTo($("#grade"));
				});
				form.render();
			});
	 	}); 
	
	</script>
  </head>
  
  <body>
    <!--添加页面-->
				<form class="layui-form"  method="post" action=""  >
					 <div class="layui-form-item">
						    <label class="layui-form-label">职位名称：</label>
						    <div class="layui-input-block">
						      <input id="zhiwei" style="width: 300px" type="text" name="pname" required  lay-verify="required" placeholder="请输入职位名称" autocomplete="off" class="layui-input">
						    </div>
					  </div>
					  <div class="layui-form-item">
						    <label class="layui-form-label">部门名称：</label>
						    
						    <div style="width: 300px" class="layui-input-block">
									<select  name="dept.deptId" lay-verify="required" id="grade" >
										<option  value="0">==请选择部门==</option>
										
									</select>	
							</div>
					  </div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
					    <div class="layui-input-block">
					      <textarea style="width: 300px" name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="formDemo">添加</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
		
			
			
  </body>
</html>
    