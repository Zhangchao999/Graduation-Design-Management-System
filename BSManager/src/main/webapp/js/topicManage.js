 window.onload = function(){
	addTopic();
 }
 var xmlHttpRequest;
 function addTopic(){
 	if (window.XMLHttpRequest) {
		xmlHttpRequest = new XMLHttpRequest();
	} else {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest.onreadystatechange = callBack;
	url="/BSManager/student/getAllAvailableTopic";
	xmlHttpRequest.open("POST", url, true);
	xmlHttpRequest.send();
 }
 
 function callBack(){
 	if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
 		var thesisList = xmlHttpRequest.responseText;
 		var thesis = eval("("+thesisList+")");
 		var topic = document.getElementById("topic");
		for(var i=0;i<thesis.length;i++){
			var id = thesis[i].id;
			var name = thesis[i].thesisName;
 		 	topic.options.add(new Option(name,id));
 		}
 	}
 }