<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩管理</title>
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
				<!-- <h4>成绩管理</h4> -->
				<ul class="list-inline">
					<li>成绩管理</li>
					<li>/</li>
					<li>查看成绩</li>
				</ul>
				<table class="table">
					<tr>
						<th>学生姓名</th>
						<th>当前成绩</th>
						<th>操作</th>
					</tr>
					
					<c:forEach items="${studentList }" var="student">
						<tr>
							<td>${student.studentName }</td>
							<td>${student.thesisScore }</td>
							<td>
								<a href="<c:url value="/teacher/modifyStudentScore?id=${student.id }"/>">修改</a>
							</td>
						</tr>
					</c:forEach>
				</table>
				
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>