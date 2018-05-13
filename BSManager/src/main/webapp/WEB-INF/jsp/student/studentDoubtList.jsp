<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看疑惑</title>
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
				<h4>查看疑惑</h4>
				<table class="table ">
					<thead>
						<tr>
							<th>
								<div class="col-md-7">
									<font color="red">提出的问题</font>
								</div>
							</th>
							<th>
								<div class="col-md-5">
									<font color="red">解答</font>
								</div>
							</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${doubtList }" var="doubt">
							<tr>
								<th class="col-md-9">${doubt.studentDoubt }</th>
								<th class="col-md-3">${doubt.answer }</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>