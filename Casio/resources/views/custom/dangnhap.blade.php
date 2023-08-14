<html>
	<head>
        <meta charset="UTF-8">
		<title>Casio Văn Phú - Đăng nhập</title>
		<link rel="stylesheet" type="text/css" href="assets/custom/css/login.css" />
		<link rel="stylesheet" href="assets/custom/css/fontawesome/css/all.min.css">
		
		<script src="js/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<div id="container-login">
			<div id="color-content-login">
				<div id="left-login">
					<div id="content-left-login">
						<h2 id="text1-login">Chào mừng bạn đến với</h2>
						<h1 id="text2-login">Đồng hồ Văn Phú</h1>
						<div id="info-login">
							<a>Đăng ký hoặc đăng nhập tài khoản để nhận nhiều ưu đãi hơn!</a>
						</div>
					</div>
					<div id="sign">
						<a id="Question-login"><b>Bạn chưa có tài khoản?</b></a>
						<div id="sign-now">
							<a id="text-sign" href="/dangky"><b>ĐĂNG KÝ NGAY!</b></a>
						</div>
					</div>
					<div id="back-login">
						<a href="/"><img id="icon-back-login" src="assets/custom/Anh/back.png" /></a>
					</div>
				</div>
	
				<div id="right-login">
					<div id="content-right-login">
						<div id="logo-login">
							<a href="/"><img id="logo-VPW-login" src="assets/custom/Anh/logoVPW_big.png" alt="Ảnh" /></a>
						</div>
	
						<!-- tạo form nhập dữ liệu trên trang web -> gửi dữ liệu lên server, chứa các đối tượng điều khiển-->
						<form action="/login" method="POST" name="form" id="form-login"> <!-- tạo form nhập dữ liệu trên trang web -> gửi dữ liệu lên server, chứa các đối tượng điều khiển-->
							@csrf
							<div class="content-login" >
								<input class="text-c-login" type="text" id ="A" name="username" placeholder="Tài khoản" />
							</div>

							<div class="content-login" id="c-1">
								<input class="text-c-login" type="password" id ="P" name="password" placeholder="Mật khẩu" />
							</div>
							<button id="login-login" type="submit" onclick="">
								<i class="fa fa-fw fa-sign-in-alt mr-1"></i>
								<a>ĐĂNG NHẬP</a> 
							</button>
						</form> 
					</div>
				</div>
	
			</div>
		</div>
		<script>
			@if(session('thongbao'))
				alert('{{ session('thongbao') }}');
			@endif
		  </script>
	</body>
</html>