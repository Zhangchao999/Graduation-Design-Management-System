<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"> 
	var t=5;//设定跳转的时间 
	setInterval("refer()",1000); //启动1秒定时 
	function refer(){  
	    if(t==0){ 
	        location="../index.jsp"; //#设定跳转的链接地址 
	    } 
	    document.getElementById('show').innerHTML=" "+t+"秒后跳转到主页"; // 显示倒计时 
	    t--; // 计数器递减 
	    //本文转自： 
	} 
</script>
<body>
	<br>
	<div class="container">
		<img src="../images/error.jpg" class="img-rounded">
	</div>
	<hr style="height:1px;border:none;border-top:1px solid #555555;" />
	<div align="center">
		<font color="#55c1e9" size="6px">${message }</font>
		<br>
		<font id="show" color="#1c8aaf" size="5px"></font>
		<br>
		<a href="../index.jsp">点击跳转...</a>
	</div>
</body>	
</html>