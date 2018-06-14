<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师提交课题</title>
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
				<!-- <h4>上传课题</h4> -->
				<ul class="list-inline">
					<li>课题管理</li>
					<li>/</li>
					<li>上传课题</li>
				</ul>
				<p><font color="red" size="4px">${message }</font> </p>
				<form action="${pageContext.request.contextPath}/teacher/uploadThesisTitle" method="post">
					<div class="form-group">
						<label>课题名称：</label>
						<input class="form-control" placeholder="课题名" id="thesisTitle" name="thesisTitle"/>
					</div>
					
					<div class="form-group">
						<label>课题描述：</label>
						<textarea class="form-control" placeholder="描述信息..." id="thesisDesc" name="thesisDesc"></textarea>
					</div>

					<div class="form-group">
						<div class="row">

							<div class="col-sm-3"></div>
							<button type="submit" class="btn btn-primary col-sm-2">提交</button>
							<div class="col-sm-2"></div>
							<button type="reset" class="btn btn-danger col-sm-2">重置</button>
							<div class="col-sm-3"></div>
						</div>
					</div>

				</form>
				
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>
</body>
</html>