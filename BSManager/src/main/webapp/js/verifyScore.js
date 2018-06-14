/**
 * 
 */
 
 function verify() {
	var phone = document.getElementById("phone").value;
	if (phone.length == 11 || phone.length == 7) {

	} else {
		alert("联系方式号码长度为7位或11位")
		document.getElementById("phone").value = "";
	}
}