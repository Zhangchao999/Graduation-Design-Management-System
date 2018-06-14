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
			<div class="col-md-2"></div>
			<div class="col-md-8" >
				<!-- <h4>查看公告</h4> -->
				<ul class="list-inline">
					<li>公告管理</li>
					<li>/</li>
					<li>查看公告</li>
				</ul>
				<p><font size="4px" color="red">${message }</font></p>
				<table class="table ">
					<thead>
						<tr>
							<th class="col-md-8">
								<font size="4px">内容</font>
							</th>
							<th class="col-md-3">
								<font size="4px">时间</font>
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
								<td class="col-md-8" >${announce.context }</td>
								<td class="col-md-3">${announce.timeFormat }</td>
								<td class="col-md-1">
									<a href="${deleteUrl }">删除</a>
								</td>
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