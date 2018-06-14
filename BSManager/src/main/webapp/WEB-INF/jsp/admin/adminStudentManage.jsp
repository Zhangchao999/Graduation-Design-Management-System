<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
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
				<!-- <h4>学生管理</h4> -->
				<ul class="list-inline">
					<li>学生管理</li>
					<li>/</li>
					<li>学生操作</li>
				</ul>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showAllStudent" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
								<div>
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">点击查看全部学生</button>
								</div>
							</div>
						</div>
						<div class="col-md-9"></div>
					</div>
				</form>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/showStudentOne" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<div >
									<input type="text" placeholder="学生学号" class="form-control" id="studentNo" name="studentNo">
								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<div>
									<input type="text" placeholder="学生姓名" class="form-control" id="studentName" name="studentName">
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
						<div class="col-md-1"></div>
					</div>

				</form>
				
				<table class="table">
					<thead>
						<tr>
							<th>学号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>专业</th>
							<th>年级</th>
							<th>联系方式</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${studentList }" var="student" varStatus="loop">
							<tr>
								<th>${student.studentNo }</th>
								<th>${student.studentName }</th>
								<th>${student.sex }</th>
								<th>${student.majorName }</th>
								<th>${student.grade }</th>
								<th>${student.phone }</th>
								<th>
									<a href="<c:url value="/admin/modifyStudent?id=${student.id }"/>">修改</a>
									<a href="<c:url value="/admin/deleteStudent?id=${student.id }"/>">删除</a>
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