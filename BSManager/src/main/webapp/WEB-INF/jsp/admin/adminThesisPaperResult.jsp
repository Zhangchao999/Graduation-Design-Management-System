<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看已上传文档</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h4>查看已上传文档</h4>

				<table class="table table-striped">
					<tr>
						<td>学生姓名</td>
						<td>课题名</td>
						<td>文件名</td>
						<td>操作</td>
					</tr>

					<c:forEach items="${studentList }" var="student">
						<c:url value="/admin/fileDownload" var="downUrl">
							<c:param name="fileName" value="${student.fileName }"></c:param>
							<c:param name="filePath" value="${student.filePath }"></c:param>
						</c:url>
						<tr>
							<td>${student.studentName }</td>
							<td>${student.thesisName }</td>
							<td>${student.fileName }</td>
							<td>
								<a href="${downUrl }">下载</a>
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