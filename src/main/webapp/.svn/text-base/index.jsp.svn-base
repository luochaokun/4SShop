<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>遵义大众4S店管理系统</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
		<script type="text/javascript">
			//JavaScript代码区域
			layui.use(['element','layer','form'], function() {
				var element = layui.element,$=layui.$,layer = layui.layer,form=layui.form;;
				$("#intoAppointment").click(function(){
					//点击预约管理后的运行js代码
				})
				
				//点击修改密码后的运行js代码
				$("a[name=resetPwd]").click(function(){
					layer.open({
						type: 1,
						area: ['400px', 'auto'],
						content: $('#tj1'),
						cancel: function() {
							//右上角关闭回调
							$("#tj1").css("display", "none");
						}
					});
				})
				
				//自定义验证规则
				form.verify({
					password: [/(.+){6,12}$/, '密码必须6到12位'],
					enterPwd: function(value) {
						if(value != $("input[name=newPwd]").val()) {
							return '两次输入的密码不一致';
						}
						
					}
				});
				
				//监听修改密码的表单提交
				form.on('submit(upd)',function(){
					var formData=$("#updForm").serialize();
					$.post("AdminServlet?op=resetPwd",formData,function(res){
							if(res=="true"){
								layer.msg("修改成功",{time:1000},function(){
									//重置表单
									$("#updForm")[0].reset();
									//关闭当前弹层
									layer.closeAll();
								});
							}else if(res=='0'){
								layer.msg("密码错误！",{time:1000},function(){
									$("#updForm")[0].reset();
								});
							}else if(res=='1'){
								layer.msg("新密码不能与当前密码相同！",{time:1000},function(){
									$("#updForm")[0].reset();
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

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			
			<div class="layui-header">
				<div class="layui-logo">遵义大众4S店管理系统</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->
				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item">
						<a href="Welcome.jsp" target="iframe">控制台主页</a>
					</li>
				</ul>
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<li class="layui-nav-item">
						    <a href="personal.jsp"  target="iframe">个人中心</span></a>
							<dl class="layui-nav-child" >
								<dd>
									<a href="Leave/personalLeave.jsp"  target="iframe">个人请假记录</a>
								</dd>
								<dd>
									<a href="KaoQin/personalKaoQin.jsp"  target="iframe">个人考勤记录</a>
								</dd>
								<dd>
									<a href="Salary/GRfinancial.jsp"  target="iframe">个人薪资记录</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item" lay-unselect="">
							<a href="javascript:;">
								<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> ${sessionScope.admin.accouts} ${emp.empName }
							</a>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath}/EMPC/exit.do">退出</a>
					</li>
				</ul>
			</div>

			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						<li class="layui-nav-item">
							<a class="" href="javascript:;">客户管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="Customerinfo.jsp" target="iframe">客户管理</a>
								</dd>
								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a class="" href="javascript:;">人力资源管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="departmentInfo.jsp" target="iframe">部门管理</a>
								</dd>
								<dd>
									<a href="PositionInof.jsp" target="iframe">职位管理</a>
								</dd>
								<dd>
									<a href="EmployeeInfo.jsp" target="iframe">员工管理</a>
								</dd>
								<dd>
									<a href="transfer.jsp" target="iframe">调岗记录表</a>
								</dd>
								<dd>
									<a href="Leave/LeaveInfo.jsp" target="iframe">请假申请</a>
								</dd>
								<dd>
									<a href="KaoQin/KaoQinInfo.jsp" target="iframe">考勤管理</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">招聘管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="RecruitmentInfo.jsp"  target="iframe" id="Recruitment">招聘信息</a>
								</dd>
								<dd>
									<a href="HireInfo.jsp" target="iframe" id="Recruitment">应聘面试</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">订单管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="appointmentInfo.jsp"  target="iframe" id="intoAppointment">预约管理</a>
								</dd>
								<dd>
									<a href="workOrder.jsp" target="iframe">维修记录</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">财务管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="Salary/financial.jsp"  target="iframe">薪资发放</a>
								</dd>
								<dd>
									<a href="ApplyInfo.jsp"  target="iframe">采购申请</a>
								</dd>
								<dd>
									<a href="CarBuying.jsp"  target="iframe">采购记录</a>
								</dd>
								<dd>
									<a href="Sale.jsp"  target="iframe">销售记录</a>
								</dd>
								<dd>
									<a href="expeC/queryOutType.do"  target="iframe">支出类型</a>
								</dd>
								<dd>
									<a href="${pageContext.request.contextPath}/expeC/queryExpenditure.do"  target="iframe">其他支出记录</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">仓库管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="PartInfo.jsp"  target="iframe" id="PartInfo">库存</a>
								</dd>
								
								<dd>
									<a href="StockRemoval.jsp"  target="iframe" id="StockRemoval">出库记录</a>
								</dd>
								
								<dd>
									<a href="Warehousing .jsp"  target="iframe" id="StockRemoval">入库记录</a>
								</dd>
								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a class="" href="javascript:;">门店信息</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="stores/stores.jsp" target="iframe">门店信息</a>
								</dd>
								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a class="" href="javascript:;">预约信息</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="stores/makeAnAppointment.jsp" target="iframe">预约信息</a>
								</dd>
								
							</dl>
						</li>
						
						<li class="layui-nav-item">
							<a class="" href="javascript:;">车辆管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="CarCon/selectCarInfo.do" target="iframe">车辆信息</a>
								</dd>
								<dd>
									<a href="CarCon/toinsertCarInfo.do" target="iframe">车辆添加</a>
								</dd>
								
							</dl>
						</li>
					</ul>
				</div>
			</div>

			<div class="layui-body">
				<!-- 内容主体区域 -->
				<iframe src="Welcome.jsp" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				后台管理系统
			</div>
		</div>
		
		
	</body>


	<!--修改密码页面-->
			<div style="display: none"  id="tj1"> 
				<form name="" method="post" action="" class="layui-form" id="updForm">
					 <input type="hidden" name="id" value="${sessionScope.admin.id}" >
					 <div class="layui-form-item">
						    <label class="layui-form-label">旧&nbsp;&nbsp;密&nbsp;&nbsp;码：</label>
						    <div class="layui-input-block">
						      <input type="password" name="oldPwd" required  lay-verify="required|password" placeholder="请输入原来的密码" autocomplete="off" class="layui-input">
						    </div>
					 </div>
					 <div class="layui-form-item">
						    <label class="layui-form-label">新&nbsp;&nbsp;密&nbsp;&nbsp;码：</label>
						    <div class="layui-input-block">
						      <input type="password" name="newPwd" required  lay-verify="required|password" placeholder="请输入新密码" autocomplete="off" class="layui-input">
						    </div>
					</div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">确认密码：</label>
					    <div class="layui-input-block">
					     <input type="password" name="enterPwd" required  lay-verify="required|password|enterPwd" placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
					    </div>
					</div><br /><br />
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="upd">确认</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
	
	
</html>