<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看学生的问题</title>
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
			<h4>查看学生的问题</h4>

				<table class="table table-striped">
					<tr>
						<td>问题</td>
						<td>操作</td>
					</tr>

					<c:forEach items="${doubtList }" var="doubt">
						<c:url value="/teacher/answerDoubtForm" var="jumpUrl">
							<c:param name="id" value="${doubt.id }"></c:param>
						</c:url>
						<tr>
							<td>${doubt.studentDoubt }</td>
							<td>
								<a href="${jumpUrl }">解答</a>
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