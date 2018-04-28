<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/student4Pass.js"></script>
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4>添加成绩</h4>
				
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/addStudentScore" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label>学生姓名:</label>
								<div>
									<select class="form-control" id="studentList" name="studentList" onclick="showStudent();">
										<option value="">请选择...</option>
									</select>
								</div>
								<div class="col-sm-5"></div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<div class="form-group">
								<label>添加学生成绩：</label>
								<input class="form-control" id="score" name="score" placeholder="成绩" />
							</div>
						</div>
						<div class="col-md-5"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-3">
							<button type="submit" class="btn btn-primary" id="submitButton" name="submitButton">提交</button>
						</div>
						<div class="col-md-3">
							<button type="reset" class="btn btn-danger ">重置</button>
						</div>
						<div class="col-md-6"></div>
					</div>

					
					
					
				</form>
				
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>