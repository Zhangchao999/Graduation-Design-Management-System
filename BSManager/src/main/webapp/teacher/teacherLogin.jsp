<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师登陆</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- 教师的登陆界面 -->
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<form class="form-signin" action="${pageContext.request.contextPath}/teacher/login" method="post">
					<h2 class="form-signin-heading">教师登陆</h2>
					<label class="sr-only">用户名</label>
					<input  id="userNo" name="userNo" class="form-control" placeholder="教师编号" required autofocus><br>
					<label for="inputPassword" class="sr-only">密码</label>
					<input type="password" id="password" name="password" class="form-control" placeholder="密码" required><br>
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<button class="btn  btn-primary btn-block" type="submit">登陆</button>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-4">
							<button class="btn  btn-danger btn-block" type="reset">重置</button>
						</div>
						<div class="col-md-1"></div>
					</div>
					
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>

		

    </div> <!-- /container -->
</body>
</html>