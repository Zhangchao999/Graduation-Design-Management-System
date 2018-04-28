<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选题结果</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<% 
	String ss = (String)request.getAttribute("realTimeTopicMessage"); 
	application.setAttribute("realMessage", ss);
%>
<body>
	<div class="container">
		<jsp:include page="_studentHomeHead.jsp" />
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4>选题结果</h4>
				<font></font>
				<table class="table table-bordered" >
					<tr>
						<td width="15%" align="right">学号:</td>
						<td width="85%">${sessionScope.student.studentNo }</td>
					</tr>
					<tr>
						<td align="right">选择课题:</td>
						<td >${topicName }</td>
					</tr>
					<tr>
						<td align="right">操作:</td>
						<td >
							<a href="${pageContext.request.contextPath}/student/deleteChosenTopic?studentId=${sessionScope.student.id }">退选当前课题</a>
						</td>
					</tr>
				</table>
				
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>

</body>
</html>