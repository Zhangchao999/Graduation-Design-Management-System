<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加导师</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/departmentManage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/verifyPhone.js"></script>

</head>
<body>
	<div class="container">
		<jsp:include page="_adminHomeHead.jsp" />
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- <h4>添加导师</h4> -->
				<ul class="list-inline">
					<li>导师管理</li>
					<li>/</li>
					<li>添加导师</li>
				</ul>
				<p><font color="red" size="5px">${message }</font></p>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/teacherAdd" method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label">导师编号:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherNo" name="teacherNo">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">导师姓名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherName" name="teacherName">
						</div>
					</div>
					
					<div class="form-group">
						<label for="department" class="col-sm-2 control-label">所在院系:</label>
						<div class="col-sm-10">
							<select class="form-control" id="department" name="department" >
								<option value="">请选择...</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">性别:</label>
						<div class="col-sm-10">
							<select class="form-control" id="sex" name="sex">
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">联系方式:</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="phone" name="phone" onblur="verify();" >
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