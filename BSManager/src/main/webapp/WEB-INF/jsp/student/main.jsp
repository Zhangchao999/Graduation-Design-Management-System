<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  学生信息主页  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生主页</title>
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
				<h4>学生信息</h4>
				<p><font color="red" size="4px">${message }</font></p>
				<p><font color="red" size="4px">${topicMessage }</font></p>
				<table class="table table-bordered" >
					<tr>
						<td class="success" width="15%" align="right">学号:</td>
						<td width="85%">${sessionScope.student.studentNo }</td>
					</tr>
					<tr>
						<td class="success" align="right">姓名:</td>
						<td>${sessionScope.student.studentName }</td>
					</tr>
					<tr>
						<td class="success" align="right">性别:</td>
						<td>${sessionScope.student.sex }</td>
					</tr>
					<tr>
						<td class="success" align="right">专业:</td>
						<td>${sessionScope.student.majorName }</td>
					</tr>
					<tr>
						<td class="success" align="right">年级:</td>
						<td>${sessionScope.student.grade }</td>
					</tr>
					<tr>
						<td class="success" align="right">联系方式:</td>
						<td>${sessionScope.student.phone }</td>
					</tr>

				</table>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>