
 
 window.onload = function(){
	showStudentList();
 }
 
 var xmlHttpRequest;
 function showStudentList(){
 	if (window.XMLHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/teacher/getStudent4Teacher";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
 function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var students = xmlHttpRequest.responseText;
 		var student = eval("("+students+")");
 		var num = student.length;
 		if(num == 0 ){
 			alert("没有学生选择课题，请勿操作");
 			var sbb = document.getElementById("submitButton");
 			sbb.setAttribute("disabled","disabled");
 		}
 		
 		var stu = document.getElementById("studentId");
 		
		for(var i=0;i<student.length;i++){
			var id = student[i].id;
			var name = student[i].studentName;
 		 	stu.options.add(new Option(name,id));
 		}
 	}
 }