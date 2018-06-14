 window.onload = function(){
	addDepartment();
 }
 
 
var xmlHttpRequest;
function addDepartment(){
 	if (window.XMLHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/getAllPartment";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
 function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var departments = xmlHttpRequest.responseText;
 		var dep = eval("("+departments+")");
 		var dd = document.getElementById("department");
		for(var i=0;i<dep.length;i++){
			var id = dep[i].id;
			var name = dep[i].departmentName;
		 	dd.options.add(new Option(name,id));
		}
 	}
 }