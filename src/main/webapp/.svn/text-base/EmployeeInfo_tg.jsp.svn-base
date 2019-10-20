<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>调岗</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
	
	<script type="text/javascript">
		layui.use(['form','element','laydate'], function(){
			 var jos;
		    var form = layui.form, $=layui.$,element=layui.element,laydate=layui.laydate; 
		   	
		    //使用post异步请求Controller得到所有的部门
		    $.post("${pageContext.request.contextPath}/Dep/selectById.do",function(res){
		    	
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
				  $.post("${pageContext.request.contextPath}/Pos/selectPos.do",{id:id},function(res){
			    	var dt=eval(res);
			    	$(dt).each(function(i,g){
			    		$("<option value='"+g.pid+"'>"+g.pname+"</option>").appendTo($("#gr1"));
			    	});
			    	 form.render(); 
			    });   
			  });
		  
		    
		  
		    
		//监听提交  表单
			form.on('submit(formDemo)', function(data){
				 var shuju=$('#addform').serialize(); //获取表单数据	
				$.post('${pageContext.request.contextPath}/EMPC/tg.do',shuju,function(res){
						alert(res);
			    		if(res>0){
			    			layer.msg("调岗成功！",{time:2000},function(){
			    				parent.layui.table.reload('test');//刷新表格页面
			    				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    				 parent.layer.close(index); //执行关闭当前弹出层
			    			});
			    				
			    		}else{
			    			 layer.msg("调岗失败");
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
   		<!--调岗页面-->
		
				<form name="" method="post" action="" class="layui-form" id="addform">
					<table>
					<tr>
						
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
							    <div class="layui-input-block">
							      <input readonly="readonly" style="width: 260px" value="${em.empId }" type="text" name="emp.empId" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
							    </div>
					 	    </div>
						</td>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
							    <div class="layui-input-block">
							      <input readonly="readonly"  style="width: 260px" value="${em.empName}" type="text" name="emp.empName" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
							    </div>
					 	    </div>
						</td>
					   
					</tr>
					<tr>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">旧&nbsp;&nbsp;&nbsp;&nbsp;部&nbsp;&nbsp;&nbsp;&nbsp;门：</label>
							    <div class="layui-input-block">
							      <input readonly="readonly" style="width: 260px" value="${em.pos.dept.deptName }"  type="text" name="jdep" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
							    </div>
					 	    </div>
						</td>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">旧&nbsp;&nbsp;&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;位：</label>
							    <div class="layui-input-block">
							      <input readonly="readonly" style="width: 260px" value="${em.pos.pname }" type="text" name="jformer" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
							    </div>
					 	    </div>
						</td>
						
					</tr>
					<tr>
						<td>
							 <div class="layui-form-item">
							    <label class="layui-form-label">新&nbsp;&nbsp;&nbsp;&nbsp;部&nbsp;&nbsp;&nbsp;&nbsp;门：</label>
							    <div class="layui-input-block">
								      <select name="" lay-verify="required" lay-search lay-filter="aihao1" id="gr" >
								        <option value="">==请选择部门==</option>
								      </select>
						    	</div>
						  </div>
						</td>
						<td>
							<div class="layui-form-item">
							    <label class="layui-form-label">新&nbsp;&nbsp;&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;位：</label>
							    <div class="layui-input-block">
							      <select name="former.pid" lay-verify="required" lay-search lay-filter="aihao" id="gr1" >
							        <option value="">==请选择职位==</option>
							      </select>
							    </div>
						  </div>
						</td>
						
					</tr>
					
					<tr>
						<td>
							<div class="layui-inline">
							      <label class="layui-form-label">调岗时间：</label>
							      <div class="layui-input-inline">
							        <input style="width: 260px" lay-verify="date" name="expendTime" type="text" class="layui-input" id="test1" placeholder="请选择你出生日期">
							      </div>
				   			 </div>
						</td>
						<td>
							<div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
							    <div class="layui-input-block">
							      <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
							    </div>
							</div>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td>
							<div class="layui-form-item">
							    <div class="layui-input-block">
							      <button  class="layui-btn" lay-submit lay-filter="formDemo">调岗</button>
							      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
							    </div>
							</div>
						</td>
						
					</tr>
					</table>
				</form>
			
			
  </body>
</html>
    