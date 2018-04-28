<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审核课题</title>
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
				<h4>审核课题</h4>
				<table class="table">
					<thead>
						<tr>
							<td>课题名</td>
							<td>课题描述</td>
							<td>目前状态</td>
							<td>操作</td>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${thesisTitleList }" var="thesis" varStatus="loop">
							<tr>
								<th>${thesis.thesisName }</th>
								<th>${thesis.description }</th>
								<th>${thesis.statusName }</th>
								<th>
									<a href="<c:url value="/admin/agreeThesis?id=${thesis.id }"/>">通过</a>
									&nbsp;
									<a href="<c:url value="/admin/disagreeThesis?id=${thesis.id }"/>">未通过</a>
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