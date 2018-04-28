/**
 * 
 */
 
window.onload=function(){
	// autoButton();
	// showTeachers();
}

function autoButton(){
	document.getElementById("showButton").click();
}

 var xmlHttpRequest;
 function showTeachers(){
 	if (window.XMLHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/admin/showAllTeacher";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
 function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var teachers = xmlHttpRequest.responseText;
 		// alert(teachers);
 		var teacher = eval("("+teachers+")");
 		// alert(teacher);
 		document.getElementsByTagName("tbody").innerHTML = teacher;
 	}
 }
