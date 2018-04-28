/**
 * 
 */

window.onload=function(){
	setInterval("showInfo()",10000);
}

function showInfoOld() {
	
	var shoInfo = document.getElementById("realTimeMessage");
	//var message = <%=(String) application.getAttribute("sb")%>;
	var message= '<%=application.getAttribute("realTimeTopicMessage")%>' ;  
	//var message = "<% =(String) application.getAttribute("realTimeTopicMessage")%>";
	if(message == null ||message==""){
		message = "";
	}
	showInfo.innerHTML = message;

}

var xmlHttpRequest;
 function showInfo(){
 	if (window.xmlHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/student/getRealTimeTopic";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
  function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var message = xmlHttpRequest1.responseText;
 		if(message==null || message=="" ){
 			
 		}else{
 			
 		}
 		
 	}
 }
 