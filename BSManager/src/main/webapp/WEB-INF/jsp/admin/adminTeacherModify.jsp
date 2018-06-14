<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改教师</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/departmentManage.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4>修改教师</h4>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/modifyTeacherToDb" method="post">
					<input type="hidden" name="id" id="id" value="${id }"/>
					<div class="form-group">
						<label class="col-sm-2 control-label">编号:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherNo" name="teacherNo" value="${teacherNo }" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherName" name="teacherName" value="${teacherName }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">性别:</label>
						<div class="col-sm-10">
							<select class="form-control" id="sex" name="sex">
								<option value="${sex }"> ${sex }</option>
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">当前院系：</label>
						<div class="col-sm-10">
							<input class="form-control" name="departmentOld" id="departmentOld" value="${departmentName }"  readonly>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">院系:</label>
						<div class="col-sm-10">
							<select class="form-control" id="department" name="department">
								<option value="">请选择...</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">联系方式:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="phone" name="phone" value="${phone }">
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