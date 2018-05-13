<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生主页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/student/main">学生信息管理</a>
			</div>
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							信息管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/modifyInfo">修改个人信息</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/modifyPassword">修改密码</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							课题管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/thesis">选择课题</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/thesisResult">查看结果</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							进度管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/openingResult">开题报告完成情况</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/viewTaskOpening">查看任务书及开题报告</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/sectionTask">查看阶段任务</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							文档管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/uploadFile">上传文档</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/resourcesDownload">查看已上传的文档</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							提问管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/studentDoubt">提出疑惑</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/student/studentDoubtList">查看解答</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							公告管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/announcement">查看公告</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/student/qualification">查看答辩资格</a></li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">
							成绩管理
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/student/score">查看成绩</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/quit">退出系统</a></li>
				</ul>
				
				<!-- 显示当前用户 -->
				<ul class="nav navbar-nav navbar-right">
					<p class="navbar-text" style="color: red">当前用户 &nbsp;${sessionScope.currentUser.userNo }</p>
				</ul>

				
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>

	<div class="container" align="right">
		
		<font size="4px">实时选课信息</font><br>
		<p><font color="blue" size="3px">${realMessage }</font></p>
		
	</div>

	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>