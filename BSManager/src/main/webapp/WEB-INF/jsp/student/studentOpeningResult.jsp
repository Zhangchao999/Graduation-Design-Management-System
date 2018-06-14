<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完成情况</title>
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
				<!-- <h4>完成情况</h4> -->
				<ul class="list-inline">
					<li>进度管理</li>
					<li>/</li>
					<li>开题报告完成情况</li>
				</ul>
				<div align="center">
					<p><font color="red" size="5px">${message }</font></p>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
