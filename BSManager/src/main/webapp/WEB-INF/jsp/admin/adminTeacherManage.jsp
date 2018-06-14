<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/autoJump.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- <h4>教师管理</h4> -->
				<ul class="list-inline">
					<li>导师管理</li>
					<li>/</li>
					<li>导师操作</li>
				</ul>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showAllTeacher" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
								<div>
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">点击查看全部教师</button>
								</div>
							</div>
						</div>
						<div class="col-md-9"></div>
					</div>
				</form>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showTeacherOne" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<div >
									<input type="text" placeholder="教师编号" class="form-control" id="teacherNo" name="teacherNo">
								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<div>
									<input type="text" placeholder="教师姓名" class="form-control" id="teacherName" name="teacherName">
								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<div>
									<button type="submit" class="btn btn-primary">提交</button>
									<p><font color="red" size="2px">${showMessage }</font></p>
								</div>
							</div>
						</div>
						<div class="col-md-1">
						</div>
					</div>

				</form>
				
				<table class="table">
					<thead>
						<tr>
							<th>教师编号</th>
							<th>教师姓名</th>
							<th>所在院系</th>
							<th>性别</th>
							<th>联系方式</th>
							<th>操作</th>
							
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${teacherList }" var="teacher">
							<tr>
								<td>${teacher.teacherNo }</td>
								<td>${teacher.teacherName }</td>
								<td>${teacher.departmentName}</td>
								<td>${teacher.sex }</td>
								<td>${teacher.phone }</td>
								<td>
									<a href="<c:url value="/admin/modifyTeacher?id=${teacher.id }"/>">修改</a>
									<a href="<c:url value="/admin/deleteTeacher?id=${teacher.id }"/>">删除</a>
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