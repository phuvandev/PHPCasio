document.getElementById("signup").onclick = function () {
    var S = document.form.surname.value; //tạo biến lấy dữ liệu 
	var N = document.form.name.value;	
	var A = document.form.account.value;
	var E = document.form.email.value;
	var P = document.form.pass.value;
	var R = document.form.repass.value;
	var T = document.form.tel.value;

	//Tạo biến user để đăng ký tài khoản
	var user = {
		taikhoan: A,
		matkhau: P,
	};
		
	
	if (S == null || S == "" || N == null || N == "" || A == null || A == "" || E == null || E == "" || P == null || P == "" ||  R == null || R == "" ||  T == null || T == "" ) {
		alert("Không được để trống thông tin! Hãy nhập lại...");
		return false;
	}
	if (R == P) 
	{
		var getData = sessionStorage.getItem("acc-pass");
		var listAccount = ""; //danh sách tk ban đầu là rỗng
		if (getData != null ){
			listAccount = getData + "," + JSON.stringify(user);
		}
		else {
			listAccount = JSON.stringify(user);
		}
		sessionStorage.setItem("acc-pass", listAccount); //thêm ds tài khoản vào bộ nhớ tạm
		alert("Đăng ký thành công!");

		return true;
	}
	else {
		alert("Xác nhận mật khẩu chưa đúng!");
		return false;
	}
};


/* document.getElementById("signup").onclick = function () {
	
	var N = document.getElementsByName("account").value; 
	console.log(N);
};
*/