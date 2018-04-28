<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看公告</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10" >
				<h4>查看公告</h4>
				<p><font size="4px" color="red">${message }</font></p>
				<table class="table ">
					<thead>
						<tr>
							<div class="row">
							<th>
								<div class="col-md-6"><font color="red">内容</font></div>
							</th>
							<th>
								<div class="col-md-4"><font color="red"></font></div>
							</th>
							<th>
								<div class="col-md-2"><font color="red"></font></div>
							</th>
							</div>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${announcementList }" var="announce">
							<c:url value="/admin/deleteAnnouncement" var="deleteUrl">
								<c:param name="id" value="${announce.id }"></c:param>
							</c:url>

							<tr>
								<div class="row">
									<th class="col-md-9" >${announce.context }</th>
									<th class="col-md-2">${announce.timeFormat }</th>
									<th class="col-md-1">
										<a href="${deleteUrl }">删除</a>
									</th>
								</div>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
			<div class="col-md-1"></div>
		</div>

	</div>
</body>
</html>