<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核开题报告</title>
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
				<h4>审核开题报告</h4>
				<table class="table table-bordered">
					<thead>
						<tr>
							<td>学生学号</td>
							<td>学生姓名</td>
							<td>文件下载</td>
							<td>当前状况</td>
							<td>完成情况</td>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student" varStatus="loop">
							<c:url value="/teacher/fileDownload" var="downUrl">
								<c:param name="fileName" value="${student.studentOpeningName }"></c:param>
								<c:param name="filePath" value="${student.studentOpeningPath }"></c:param>
							</c:url>
							<c:url value="/teacher/openingPass" var="passUrl">
								<c:param name="studentNo" value="${student.studentNo }"></c:param>
								<c:param name="fileName" value="${student.studentOpeningName }"></c:param>
								<c:param name="filePath" value="${student.studentOpeningPath }"></c:param>
							</c:url>
							<c:url value="/teacher/openingFail" var="failUrl">
							<c:param name="studentNo" value="${student.studentNo }"></c:param>
								<c:param name="fileName" value="${student.studentOpeningName }"></c:param>
								<c:param name="filePath" value="${student.studentOpeningPath }"></c:param>
							</c:url>
							<tr>
								<th>${student.studentNo }</th>
								<th>${student.studentName }</th>
								<th><a href="${downUrl }">${student.studentOpeningName }</a></th>
								<th>${student.completionName }</th>
								<th>
									<a href="${passUrl }">完成</a> &nbsp;&nbsp;&nbsp;
									<a href="${failUrl }">未完成</a>
									
								</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>