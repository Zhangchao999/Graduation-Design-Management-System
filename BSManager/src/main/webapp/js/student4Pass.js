 window.onload = function(){
	showStudent();
 }
 
 var xmlHttpRequest;
 function showStudent(){
 	if (window.XMLHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/teacher/showStudent4Pass";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
 function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var students = xmlHttpRequest.responseText;
 		
 		
 		var student = eval("("+students+")");
 		
 		var num = student.length;
 		if(num == 0 ){
 			alert("没有学生选择课题或没有毕业论文通过的学生，请勿操作");
 			var sbb = document.getElementById("submitButton");
 			sbb.setAttribute("disabled","disabled");
 		}
 		
 		var dd = document.getElementById("studentList");
 		
		for(var i=0;i<student.length;i++){
			var id = student[i].id;
			var name = student[i].studentName;
 		 	dd.options.add(new Option(name,id));
 		}
 	}
 }