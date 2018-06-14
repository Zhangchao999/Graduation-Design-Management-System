

function show() {
	var tempTopic = document.getElementById("topic").value;
	
	var xmlHttpRequest2;
	if (window.XMLHttpRequest) {
		xmlHttpRequest2 = new XMLHttpRequest();
	} else {
		xmlHttpRequest2 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlHttpRequest2.onreadystatechange = callBack;
	url = "/BSManager/student/getThesisDescById?topicId="+tempTopic;
	xmlHttpRequest2.open("POST", url, true);
	xmlHttpRequest2.send();

	function callBack() {
		if (xmlHttpRequest2.readyState == 4 && xmlHttpRequest2.status == 200) {
			var text = xmlHttpRequest2.responseText;
			var ds = eval("("+text+")");
			var name = ds.desc;
			document.getElementById("thesisDesc").value = "";
			document.getElementById("thesisDesc").value = name;
		}
	}
}
