<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
	</head>

	<body>
		<blockquote class="layui-elem-quote">车辆基本信息</blockquote>
		<form class="layui-form" action="${pageContext.request.contextPath}/CarCon/UpdateCarInfo.do" method="post">
			<input type="hidden" name="cid" value="${carinfo.cid }"/>
			<div class="layui-form-item">
				<label class="layui-form-label">车系</label>
				<div class="layui-input-block">
					<select name="sid" lay-verify="required">
						<c:forEach items="${veList }" var="v">
							<option value="${v.sid} ">${v.sname} </option>
						</c:forEach>
					</select>
					</select>
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">存放仓库</label>
				<div class="layui-input-block">
					<select name="wid" lay-verify="required">
						<option value=""></option>
						<option value="1">1号仓</option>
						<option value="2">2号仓</option>
						<option value="3">3号仓</option>
					</select>
				</div>
			</div>
			
			
			<div class="layui-form-item">
				<label class="layui-form-label">名称</label>
				<div class="layui-input-block">
					<input type="text" name="cname" required lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input" value="${carinfo.cname }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">价格</label>
				<div class="layui-input-inline">
					<input type="text" name="price" required lay-verify="required" placeholder="请输入价格" autocomplete="off" class="layui-input" value="${carinfo.price }">
				</div>
				<div class="layui-form-mid layui-word-aux">￥</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">数量</label>
				<div class="layui-input-inline">
					<input type="text" name="number" required lay-verify="required" placeholder="请输入数量" autocomplete="off" class="layui-input" value="${carinfo.number }">
				</div>
				<div class="layui-form-mid layui-word-aux">辆</div>
			</div>
			
			<blockquote class="layui-elem-quote">车辆基本参数</blockquote>
			<div class="layui-form-item">
				<label class="layui-form-label">长度(mm)</label>
				<div class="layui-input-inline">
					<input type="text" name="length" required lay-verify="required" placeholder="请输入长度(mm)" autocomplete="off" class="layui-input" value="${carinfo.length }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">宽度(mm)</label>
				<div class="layui-input-inline">
					<input type="text" name="width" required lay-verify="required" placeholder="请输入宽度(mm)" autocomplete="off" class="layui-input" value="${carinfo.width }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">高度(mm)</label>
				<div class="layui-input-inline">
					<input type="text" name="height" required lay-verify="required" placeholder="请输入高度(mm)" autocomplete="off" class="layui-input" value="${carinfo.height }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">轴距(mm)</label>
				<div class="layui-input-inline">
					<input type="text" name="wheelbase" required lay-verify="required" placeholder="请输入轴距(mm)" autocomplete="off" class="layui-input" value="${carinfo.wheelbase }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">轮距(前/后)(mm)</label>
				<div class="layui-input-inline">
					<input type="text" name="Tread" required lay-verify="required" placeholder="请输入轮距(前/后)(mm)" autocomplete="off" class="layui-input" value="${carinfo.wheelbase }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">整备质量(kg)</label>
				<div class="layui-input-inline">
					<input type="text" name="curbWeight" required lay-verify="required" placeholder="请输入整备质量(kg)" autocomplete="off" class="layui-input" value="${carinfo.curbWeight }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">轮胎</label>
				<div class="layui-input-inline">
					<input type="text" name="tyre" required lay-verify="required" placeholder="245/45R19" autocomplete="off" class="layui-input" value="${carinfo.tyre }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">后备箱容积(L)</label>
				<div class="layui-input-inline">
					<input type="text" name="tankVolume" required lay-verify="required" placeholder="后备箱容积(L)" autocomplete="off" class="layui-input" value="${carinfo.tankVolume }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">发动机</label>
				<div class="layui-input-inline">
					<input type="text" name="enginea" required lay-verify="required" placeholder="2.0T可变缸涡轮增压发动机" autocomplete="off" class="layui-input" value="${carinfo.enginea }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">排量(ml)</label>
				<div class="layui-input-inline">
					<input type="text" name="displacement" required lay-verify="required" placeholder="1998" autocomplete="off" class="layui-input" value="${carinfo.displacement }">
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="submit" class="layui-btn" lay-filter="formDemo" />
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>

		<script>
			layui.use('form', function(){
			  var form = layui.form;
			  
			 
			});
		</script>

	</body>

</html>