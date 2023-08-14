// document.getElementById("login").onclick = function () {
//     var account = document.form.tk.value;
// 	var pass = document.form.mk.value;

	
// 	var getData = sessionStorage.getItem("acc-pass");
// 	var getDataArray = "["+getData+"]"; //lấy dữ liệu mảng
// 	var data = JSON.parse(getDataArray);

// 	if (account == null || account == "") {
// 		document.getElementById("warning1").style.display = 'block';
// 		if(pass == null || pass == ""){
// 			document.getElementById("warning2").style.display = 'block';
// 		}
// 		return false;	
// 	}
	
// 	if (pass == null || pass == "") {
// 		document.getElementById("warning2").style.display = 'block';
// 		if(account == null || account == ""){
// 			document.getElementById("warning1").style.display = 'block';
// 		}
// 		return false;
// 	}
	
// 	for(var i=0; i<data.length; i++){
// 		/*console.log(data[i].taikhoan);
// 		console.log(data[i].matkhau); */
// 		if (account == data[i].taikhoan && pass == data[i].matkhau) {
// 			alert("Chào mừng " + account + "  !");
// 			window.location.href = "index.html";
// 			return false;
// 			break;
// 		}	
// 	}



// 	if (account == "Phu" && pass == "1") {
// 		sessionStorage.removeItem("nameAdmin");
// 		sessionStorage.setItem("nameAdmin", "Phú");
// 		alert("Chào mừng " + account + "  !");
// 		window.location.href = "admin.html";
// 		return false;	
// 	}	
// 	if (account == "Hoang" && pass == "2") {
// 		sessionStorage.removeItem("nameAdmin");
// 		sessionStorage.setItem("nameAdmin", "Hoàng");
// 		alert("Chào mừng " + account + "  !");
// 		window.location.href = "admin.html";
// 		return false;	
// 	}
// 	else {
// 		alert("Tài khoản không tồn tại! Hãy nhập lại !!!");
// 	}	
// };



