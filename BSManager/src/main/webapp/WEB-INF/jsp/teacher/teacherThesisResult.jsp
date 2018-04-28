<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师课题结果</title>
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
				<h4>课题结果</h4>
				<p><font color="red" size="2px">${thesisMessage }</font></p>
				
				<!-- 点击查看上传的课题 -->
				<%-- <form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/showAllThesisTitle"
					method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label class="control-label">&nbsp;</label>
								<div>
									<button type="submit" id="showButton" name="showButton" class="btn btn-primary">点击查看全部选题</button>
									<p><font color="red" size="2px">${thesisMessage }</font></p>
								</div>
							</div>
						</div>
						<div class="col-md-9"></div>
					</div>
				</form> --%>

				<table class="table table-hover ">
					<thead>
						<tr>
							<th>课题名</th>
							<th>状态(是否审核通过)</th>
							<th>操作</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${thesisTitleList }" var="thesisTitle">
							<tr>
								<th>${thesisTitle.thesisName }</th>
								<th>${thesisTitle.statusName }</th>
								<th>
									<a href="<c:url value="/teacher/modifyThesisTitleFrom?id=${thesisTitle.id }"/>">修改</a>
									&nbsp;
									<a href="<c:url value="/teacher/deleteThesisTitle?id=${thesisTitle.id }"/>">删除</a>
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