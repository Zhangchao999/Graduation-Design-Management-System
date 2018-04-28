<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核论文</title>
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
				<h4>审核论文</h4>
				<table class="table table-hover ">
					<thead>
						<tr>
							<th>学生姓名</th>
							<th>课题名</th>
							<th>论文</th>
							<th>当前状态</th>
							<th>状态(是否审核通过)</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${fileList }" var="file">
							<c:url value="/teacher/passThesisInfo" var="passUrl">
								<c:param name="studentId" value="${file.id }"></c:param>
							</c:url>
							
							<c:url value="/teacher/failThesisInfo" var="failUrl">
								<c:param name="studentId" value="${file.id }"></c:param>
							</c:url>
							
							<c:url value="/teacher/fileDownload" var="downUrl">
							<c:param name="fileName" value="${file.fileName }"></c:param>
							<c:param name="filePath" value="${file.filePath }"></c:param>
						</c:url>

							<tr>
								<th>${file.studentName }</th>
								<th>${file.thesisName }</th>
								<th>
									<a href="${downUrl }">${file.fileName }</a>
								</th>
								<th>${file.completionName }</th>
								<th>
									<a href="${passUrl }">通过</a>
									&nbsp;&nbsp;&nbsp;
									<a href="${failUrl }">未通过</a>
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