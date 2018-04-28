
 
 var xmlHttpRequest;
  var clickNum  = 0;
 function addTopic(){
 	clickNum++;
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
 		/*var id = deps[0].id;
 		alert(id);
 		var name = deps[0].departmentName;
 		alert(name);*/
 		
 		if(clickNum%2==0){
 			for(var i=0;i<thesis.length;i++){
 				var id = thesis[i].id;
 				var name = thesis[i].thesisName;
	 		 	topic.options.add(new Option(name,id));
	 		}
 		}else if(clickNum%2==1){
 			topic.options.length = 0;
 			for(var i=0;i<thesis.length;i++){
 				var id = thesis[i].id;
 				var name = thesis[i].thesisName;
	 		 	topic.options.add(new Option(name,id));
	 		}
 		}
 	}
 }