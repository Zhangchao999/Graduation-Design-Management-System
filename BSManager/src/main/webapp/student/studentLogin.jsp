<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>学生登陆</title>
	<!-- CSS -->
	   <!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"> -->
	   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	   <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	   <link rel="stylesheet" href="assets/css/form-elements.css">
	   <link rel="stylesheet" href="assets/css/style.css">
	
	   <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- Favicon and touch icons -->
	<link rel="shortcut icon" href="assets/ico/favicon.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>
<body>
<%-- <!-- 学生的登陆界面 -->
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<form class="form-signin" action="${pageContext.request.contextPath}/student/login" method="post">
					<h2 class="form-signin-heading">学生登陆</h2>
					<label class="sr-only">用户名</label>
					<input  id="userNo" name="userNo" class="form-control" placeholder="学号" required autofocus><br>
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
    </div> <!-- /container --> --%>
    
     <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>学生登陆</strong> </h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>登陆到系统</h3>
                            		<p>在下面输入学号和密码</p>
                        		</div>
                        		
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="${pageContext.request.contextPath}/student/login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username"></label>
			                        	<input type="text" placeholder="学号：" class="form-username form-control" id="userNo" name="userNo" required>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password"></label>
			                        	<input type="password" placeholder="密码：" class="form-password form-control" id="password" name="password" required>
			                        </div>
			                        <button type="submit" class="btn">登陆</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
</body>
</html>