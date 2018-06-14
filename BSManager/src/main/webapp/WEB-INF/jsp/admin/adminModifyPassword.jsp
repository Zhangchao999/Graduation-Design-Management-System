<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员修改密码</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/passwordManage.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>
	
	<div class="container">
		
		<div class="col-md-2">
			
		</div>
		<div class="col-md-8">
			<!-- <h4>修改密码</h4> -->
			<ul class="list-inline">
				<li>信息管理</li>
				<li>/</li>
				<li>修改密码</li>
			</ul>
			<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/modifyPassword" method="post">
				<!-- 第一个是用户名  第二个是原始密码-->
				<input type="hidden" class="form-control" name="currentUserNo" id="currentUserNo" value="${sessionScope.currentUser.userNo }">
				<input type="hidden" class="form-control" name="db_password" id="db_password" value="${sessionScope.currentUser.password }">
				<div class="form-group">
					<label class="col-sm-2 control-label">当前密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="oldPassword" id="oldPassword" onblur="getPassword();" required>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">新的密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="newPassword1" id="newPassword1" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">再次输入:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="newPassword2" id="newPassword2" onblur="comparePassword();" required>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="col-sm-3"></div>
						<button type="submit" id="submit" class="btn btn-primary col-sm-2">提交</button>
						<div class="col-sm-2"></div>
						<button type="reset" class="btn btn-danger col-sm-2">重置</button>
						<div class="col-sm-3"></div>
					</div>
				</div>

			</form>

		</div>
		<div class="col-md-2"></div>
	</div>
</body>
</html>