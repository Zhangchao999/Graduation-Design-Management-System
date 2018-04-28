/**
 * 
 */
 
 function comparePassword() {
	var newPassword1 = document.getElementById("newPassword1").value;
	var newPassword2 = document.getElementById("newPassword2").value;
	if (newPassword1 != newPassword2) {
		alert("两次输入的密码不同！请重新输入");
		document.getElementById("newPassword1").value = "";
		document.getElementById("newPassword2").value = "";
		// document.getElementById("submit").disabled = true;
	}
}
 

	function getPassword(){
		// var userNo= document.getElementById("currentUserNo").value;
		var password= document.getElementById("db_password").value;
		/*alert(userNo);
		alert(password);*/
		var oldPassword= document.getElementById("oldPassword").value;
		if(password!=oldPassword){
			alert("原始密码错误！！");
			document.getElementById("oldPassword").value = "";
		}
		
	}
 
 