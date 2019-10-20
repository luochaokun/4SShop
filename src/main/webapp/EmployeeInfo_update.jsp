<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'UpdateStaffInfo.jsp.jsp' starting page</title>
    
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
	
	<script>
		
		layui.use(['layer', 'form','laydate'], function(){
			var jos;
		  var layer = layui.layer
		  ,form = layui.form
		  ,laydate=layui.laydate;
 
		  		//监听提交        修改表单
			  form.on('submit(formDemo)', function(data){
			   var shuju=$('form').serialize(); //获取表单数据
			   $.post("EMPC/update.do",shuju,function(res){
				  
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
			  	 jos=eval('('+parent.json+')');
		  		$("#id").val(jos.empId);
			  	$("#sname").val(jos.empName);
			  //	$("#salary").val(salary);
			  
			  	$(function(){
			  		if(jos.sex==$("#nan").val()){
    					$("#nan").prop('checked','true');
		  			}
			  	})
			  	$("#phone").val(jos.phone);
			  	$("#email").val(jos.email);
			  	$("#address").val(jos.address);
			  	$("#IDcard").val(jos.cardid);
			  	$("#inTime").val(jos.inTime);
			  	$("#diploma").val(jos.diploma);
			  	$("#test1").val(jos.birthday);
			  	$("#LoginAccount").val(jos.sadmin);
			  	$("#LoginPwd").val(jos.sPwd);
			  	$("#remack").val(jos.remark);
		  		
			  	//查询职位
		  		$.post("Pos/selectPos1.do",function(res){
			  			var dt=eval(res);
			  			$(dt).each(function(i,g){
			  				if(jos.pos.pname==g.pname){
			  					$("<option selected='selected' value='"+g.pid+"'>"+g.pname+"</option>").appendTo($("#gr1"));
			  				}else{
			  					$("<option  value='"+g.pid+"'>"+g.pname+"</option>").appendTo($("#gr1"));
			  				}
			  				
			  			});
			  			form.render();
			  		});
			  //年月选择器
				laydate.render({ 
				  elem: '#test1'
				});
			  laydate.render({ 
				  elem: '#entyTime'
				});
		});
	</script> 
  </head>
  
  <body>
    	<!--修改页面-->
			
				<form name="" method="post" action="" class="layui-form">
					<table>
						<tr>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
									    <div class="layui-input-block">
									      <input style="width: 200px;" id="id" readonly="readonly" type="text" name="empId" required  lay-verify="required" placeholder="请输入编号" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
									    <div class="layui-input-block">
									      <input id="sname" type="text" name="empName" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td>
						</tr>
						<tr>
							<td>
								 <div class="layui-form-item">
									    <label class="layui-form-label">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
									    <div class="layui-input-block">
									      <input id="nan" type="radio" name="sex" value="1" title="男">
									      <input id="nv" type="radio" name="sex" value="0" title="女" checked="checked">
									    </div>
								  </div>
							</td>
							<td>
								 <div class="layui-form-item">
								    <label class="layui-form-label">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</label>
								    <div class="layui-input-block">
								      <select name="pos.pid" lay-filter="aihao" id="gr1">
								        <option id="zhiwei" value="0">==选择职位==</option>
								      
								      </select>
								    </div>
								  </div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="layui-form-item">
								    <label class="layui-form-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label>
								    <div class="layui-input-block">
								      <input lay-verify="phone" id="phone" type="text" name="phone" required  lay-verify="required" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
								    </div> 
							  </div>
							</td>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</label>
									    <div class="layui-input-block">
									      <input lay-verify="email" id="email" type="text" name="email" required  lay-verify="required" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
									    <div class="layui-input-block">
									      <input id="address" type="text" name="address" required  lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td>
							<td>
								<div class="layui-inline">
								      <label class="layui-form-label">出生日期：</label>
								      <div class="layui-input-inline">
								        <input style="width: 235px;" lay-verify="date" name="birthday" type="text" class="layui-input" id="test1" placeholder="请选择你需要修改的日期">
								      </div>
							    </div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="layui-inline">
								      <label class="layui-form-label">入职时间：</label>
								      <div class="layui-input-inline">
								        <input id="inTime" lay-verify="date" name="inTime" type="text" class="layui-input" id="test" placeholder="请选择你需要修改的时间">
								      </div>
							    </div>
							</td>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</label>
									    <div class="layui-input-block">
								      <select name="diploma" lay-filter="aihao" id="diploma">
								        <option id="zhiwei" value="0">==选择学历==</option>
								        <option id="zhiwei" value="小学">小学</option>
								        <option id="zhiwei" value="初中">初中</option>
								        <option id="zhiwei" value="高中/中专">高中/中专</option>
								        <option id="zhiwei" value="大专">大专</option>
								        <option id="zhiwei" value="本科">本科</option>
								        <option id="zhiwei" value="硕士">硕士</option>
								        <option id="zhiwei" value="博士">博士</option>
								        <option id="zhiwei" value="博士后">博士后</option>
								      </select>
								  </div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="layui-form-item">
									    <label class="layui-form-label">登陆账号：</label>
									    <div class="layui-input-block">
									      <input id="LoginAccount" type="text" name="sadmin" required  lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td>
							<td>
								 <div class="layui-form-item">
								    <label class="layui-form-label">登陆密码：</label>
								    <div class="layui-input-inline">
								      <input style="width: 235px;" id="LoginPwd" type="password" name="sPwd" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
								    </div>
								  </div>
							</td>
						</tr>
						<tr>
							<!-- <td>
								<div class="layui-form-item">
									    <label class="layui-form-label">底&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;薪：</label>
									    <div class="layui-input-block">
									      <input style="width: 200px;" id="salary" readonly="readonly" type="text" name="salary" required  lay-verify="required" placeholder="请输入编号" autocomplete="off" class="layui-input">
									    </div>
								  </div>
							</td> -->
							<td colspan="2">
								<div class="layui-form-item layui-form-text">
								    <label class="layui-form-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
								    <div class="layui-input-block">
								      <textarea  id="remack" name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
								    </div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="layui-form-item">
								    <div class="layui-input-block">
								      <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
								      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
								    </div>
								</div>
							</td>
							
						</tr>
					</table>
					<br /><br />
					
				</form>
			
    	
  </body>
</html>
    