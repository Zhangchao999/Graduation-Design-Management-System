<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传开题报告</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/topicManage4Teacher.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4>发布开题报告</h4>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/uploadOpening" method="post" enctype="multipart/form-data">
					<div class="col-md-4">
						<select class="form-control" id="topic4Teacher" name="topic4Teacher" onclick="addTopic4Teacher();">
							<option value="">选择要发布的课题</option>
						</select>
					</div>
					<div class="col-md-2">
						<label class=" control-label">上传开题报告:</label>
					</div>
					<div class="col-md-3">
						<input type="file" id="file1" name="file1">
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary" id="submitButton" name="submitButton">提交</button>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>
</body>
</html>