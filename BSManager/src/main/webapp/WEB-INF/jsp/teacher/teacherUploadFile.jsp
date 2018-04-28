<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文档</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/student4Pass.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h4>上传毕业论文</h4>
				<form class="form-horizontal" enctype="multipart/form-data"
					action="${pageContext.request.contextPath}/teacher/uploadThesis4pass" method="post">
					<div class="row">

						<div class="form-group">
							<div class="col-md-4">
								<label class="control-label">选择学生:</label>
								<select class="form-control" id="studentList" name="studentList" onclick="showStudent();">
									<option value="">请选择...</option>
								</select>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label">上传毕业论文:</label>
									<input type="file" id="file" name="file">
								</div>

							</div>
							<div class="col-md-3">
								<div class="form-group">
									<br>
									<button type="submit" class="btn btn-primary " id="submitButton" name="submitButton">提交</button>
								</div>
							</div>

						</div>


					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>