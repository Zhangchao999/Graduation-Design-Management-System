<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- 想在页面刷新的时候显示教师信息，但是失败了 -->
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
				<h4>教师管理</h4>
				
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
								<label class="control-label">教师编号:</label>
								<div >
									<input type="text" class="form-control" id="teacherNo" name="teacherNo">
								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">教师姓名:</label>
								<div>
									<input type="text" class="form-control" id="teacherName" name="teacherName">
								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
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
							<td>教师编号</td>
							<td>教师姓名</td>
							<td>所在院系</td>
							<td>性别</td>
							<td>联系方式</td>
							<td>操作</td>
							
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${teacherList }" var="teacher">
							<tr>
								<th>${teacher.teacherNo }</th>
								<th>${teacher.teacherName }</th>
								<th>${teacher.departmentName}</th>
								<th>${teacher.sex }</th>
								<th>${teacher.phone }</th>
								<th>
									<a href="<c:url value="/admin/modifyTeacher?id=${teacher.id }"/>">修改</a>
									<a href="<c:url value="/admin/deleteTeacher?id=${teacher.id }"/>">删除</a>
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