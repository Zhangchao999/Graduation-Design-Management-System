<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>解答学生的问题</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<% 
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
	String id = request.getParameter("id");
%> 
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h4>解答学生的问题</h4>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/answerDoubt"
					method="post">
					<input type="hidden" id="id" name="id" value="${param.id}"/>
					<div class="form-group">
						<label>解决方案：</label>
						<textarea class="form-control" id="answer" name="answer"></textarea>
					</div>
					<div class="form-group">
						<div class="row">

							<div class="col-sm-3"></div>
							<button type="submit" class="btn btn-primary col-sm-2">提交</button>
							<div class="col-sm-2"></div>
							<button type="reset" class="btn btn-danger col-sm-2">重置</button>
							<div class="col-sm-3"></div>
						</div>
					</div>
				</form>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>