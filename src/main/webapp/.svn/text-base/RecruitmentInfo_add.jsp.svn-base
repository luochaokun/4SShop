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
		   	
		    //使用post异步请求Controller得到所有的部门
		    $.post("Dep/selectById.do",function(res){
		    	var dt=eval(res);
		    	$(dt).each(function(i,g){
		    		$("<option value='"+g.deptId+"'>"+g.deptName+"</option>").appendTo($("#gr"));
		    	});
		    	 form.render(); 
		    });
		    
		    //部门下拉框的改变事件——选择了部门后根据编号查询对应的职位
		   form.on("select(aihao1)",function(dt){
			   var id=dt.value;
			   $("#gr1 option:gt(0)").remove();  //清空职位
			  $.post("Pos/selectPos.do",{id:id},function(res){
		    	var dt=eval(res);
		    	$(dt).each(function(i,g){
		    		$("<option value='"+g.pid+"'>"+g.pname+"</option>").appendTo($("#gr1"));
		    	});
		    	 form.render(); 
		    });   
		  });
		    
		   //使用post异步请求Controller得到所有的职位
		    $.post("Dep/selectPos.do",function(res){
		    	var dt=eval(res);
		    	$(dt).each(function(i,g){
		    		$("<option value='"+g.deptId+"'>"+g.deptName+"</option>").appendTo($("#gr"));
		    	});
		    	 form.render(); 
		    });
		    
		//监听提交  表单
			form.on('submit(formDemo)', function(data){
				 var shuju=$('#addform').serialize(); //获取表单数据	
				$.post('rec/add.do',shuju,function(res){
				
			    		if(res>0){
			    			layer.msg("添加成功！",{time:2000},function(){
			    				parent.layui.table.reload('test');//刷新表格页面
			    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    				 parent.layer.close(index); //执行关闭当前弹出层
			    			});
			    				
			    		}else{
			    			 layer.msg("添加失败");
			    		}
			    	});
			  	
			    return false;
			});
			laydate.render({
			    elem: '#test1'
			  });
			
			
		   
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
							    <label class="layui-form-label">部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</label>
							    <div class="layui-input-block">
								      <select name="dept.deptId" lay-verify="required" lay-search lay-filter="aihao1" id="gr" >
								        <option value="">==请选择部门==</option>
								      </select>
						    	</div>
						  </div>
						</td>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</label>
							    <div class="layui-input-block">
							      <select name="Pos.pid" lay-verify="required" lay-search lay-filter="aihao" id="gr1" >
							        <option value="">==请选择职位==</option>
							      </select>
							    </div>
						  </div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="layui-inline">
							      <label class="layui-form-label">发布时间：</label>
							      <div class="layui-input-inline">
							        <input style="width: 260px" lay-verify="date" name="beginTime" type="text" class="layui-input" id="test1" placeholder="请选择你出生日期">
							      </div>
				   			 </div>
						</td>
						<td>
							<div class="layui-inline">
							      <label class="layui-form-label">截止时间：</label>
							      <div class="layui-input-inline">
							        <input style="width: 260px" lay-verify="date" name="endTime" type="text" class="layui-input" id="test1" placeholder="请选择你出生日期">
							      </div>
				   			 </div>
						</td>
						
					</tr>
					<tr>
						<td>
							<div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">职位要求：</label>
							    <div class="layui-input-block">
							      <textarea name="requires" placeholder="请输入内容" class="layui-textarea"></textarea>
							    </div>
							</div>
						</td>
						<td>
							<div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">职位秒速：</label>
							    <div class="layui-input-block">
							      <textarea name="describes" placeholder="请输入内容" class="layui-textarea"></textarea>
							    </div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
					  		<div class="layui-form-item">
							    <label class="layui-form-label">学历要求：</label>
							    <div class="layui-input-block">
							      <select name="diploma" lay-verify="required" lay-search lay-filter="aihao2" id="gr2" >
							        <option value="">==请选择学历==</option>
							        <option value="小学">小学</option>
							        <option value="初中">初中</option>
							        <option value="高中/中专">高中/中专</option>
							        <option value="大专">大专</option>
							        <option value="本科">本科</option>
							        <option value="硕士">硕士</option>
							        <option value="博士">博士</option>
							        <option value="博士后">博士后</option>
							      </select>
							    </div>
						  </div>
						</td>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">招聘人数：</label>
							    <div class="layui-input-block">
							      <input style="width: 260px"  type="text" name="count" required  lay-verify="required" placeholder="请输入人数" autocomplete="off" class="layui-input">
							    </div>
					 	    </div>
						</td>
						
					</tr>
					<tr>
						<td>
							<div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
							    <div class="layui-input-block">
							      <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
							    </div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="layui-form-item">
							    <div class="layui-input-block">
							      <button  class="layui-btn" lay-submit lay-filter="formDemo">添加</button>
							      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
							    </div>
							</div>
						</td>
						
					</tr>
					</table>
				</form>
			
			
  </body>
</html>
    