<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  教师信息主页  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师主页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- <h4>教师信息</h4> -->
				<ul class="list-inline">
					<li>教师信息</li>
				</ul>
				<p><font color="red" size="4px">${deleteMessage }</font> </p>
				<p><font color="red" size="4px">${message }</font> </p>
				<table class="table table-bordered" >
					<tr>
						<td  width="15%" align="right"><strong>教师编号:</strong></td>
						<td width="85%">${sessionScope.teacher.teacherNo }</td>
					</tr>
					<tr>
						<td  align="right"><strong>姓名:</strong></td>
						<td>${sessionScope.teacher.teacherName }</td>
					</tr>
					<tr>
						<td  align="right"><strong>性别:</strong></td>
						<td>${sessionScope.teacher.sex }</td>
					</tr>
					<tr>
						<td  align="right"><strong>院系:</strong></td>
						<td>${sessionScope.teacher.departmentName }</td>
					</tr>
					<tr>
						<td  align="right"><strong>联系方式:</strong></td>
						<td>${sessionScope.teacher.phone }</td>
					</tr>

				</table>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>