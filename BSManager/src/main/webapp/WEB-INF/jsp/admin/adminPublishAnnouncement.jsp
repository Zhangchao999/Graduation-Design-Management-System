<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布公告</title>
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
				<h4>发布公告</h4>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/admin/publishAnnouncement" method="post">
					<div class="form-group">
						<label>公告内容：</label>
						<textarea class="form-control" id="announcement" name="announcement" placeholder="公告内容..."></textarea>
					</div>
					
					<div class="form-group">
						<div class="row">

							<div class="col-sm-3"></div>
							<button type="submit" class="btn btn-primary col-sm-2">发布</button>
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