<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提出疑惑</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_studentHomeHead.jsp" />
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- <h4>提出疑惑</h4> -->
				<ul class="list-inline">
					<li>提问管理</li>
					<li>/</li>
					<li>提出疑惑</li>
				</ul>
				<br>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/studentDoubtToDb" method="post">
					<div class="form-group">
						<textarea class="form-control" id="doubt" name="doubt" placeholder="目前遇到的问题"></textarea>
					</div>
					
					<div class="form-group">
						<div class="row">

							<div class="col-sm-3"></div>
							<button type="submit" class="btn btn-primary col-sm-2">提出</button>
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
