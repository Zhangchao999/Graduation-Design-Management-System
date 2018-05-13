<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师修改信息</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/departmentManage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/verifyPhone.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_teacherHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4>修改信息</h4>
				
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/modifyInfoToDb" method="post">
					<input type="hidden" name="id" id="id" value="${sessionScope.teacher.id }" />
					<input type="hidden" name="teacherNo" id="teacherNo" value="${sessionScope.teacher.teacherNo }" />

					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">姓名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherName" name="teacherName" value="${sessionScope.teacher.teacherName }" >
						</div>
					</div>
						
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">性别:</label>
						<div class="col-sm-10">
							<select class="form-control" id="sex" name="sex" >
								<option value="${sessionScope.teacher.sex }">${sessionScope.teacher.sex }</option>
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">当前院系：</label>
						<div class="col-sm-10">
							<input class="form-control" name="departmentOld" id="departmentOld" value="${sessionScope.teacher.departmentName }"  readonly>
						</div>
					</div>
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">院系:</label>
						<div class="col-sm-10">
							<select class="form-control" id="department" name="department" onclick="addDepartment();" >
								<option value="">请选择...</option>
							</select>
						</div>
					</div>
											
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">联系方式:</label>
						<div class="col-sm-10"> 
							<input type="text" class="form-control" id="phone" name="phone" value="${sessionScope.teacher.phone }" onblur="verify();">
						</div>
					</div>	
						
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
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