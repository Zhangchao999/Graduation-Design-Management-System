<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看成绩</title>
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
				<h4>查看成绩</h4>
				<table class="table table-striped">
					<tr>
						<td>学生姓名</td>
						<td>课题名</td>
						<td>成绩</td>
					</tr>
					<tr>
						<td>${studentList.studentName }</td>
						<td>${studentList.thesisName }</td>
						<td>${studentList.thesisScore }</td>
					</tr>
					
				</table>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
