<html>
	<head>
        <meta charset="UTF-8">
		<title>Casio Văn Phú - Đăng ký</title>
		<link rel="stylesheet" type="text/css" href="assets/custom/css/signup.css" />
		<link rel="stylesheet" href="assets/custom/css/fontawesome/css/all.min.css">
		
		<script src="assets/custom/js/jquery-3.6.0.min.js">
		</script>
	</head>
	<body>
        <div id="container-signup">
            <div id="color-content-signup">
                <div id="left-signup">
                    <div id="content-left-signup">
                        <h2 id="text1-signup">Chào mừng bạn đến với</h2>
                        <h1 id="text2-signup">Đồng hồ Văn Phú</h1>
                        <div id="info-log">
                            <a>Đăng ký hoặc đăng nhập tài khoản để nhận nhiều ưu đãi hơn!</a>
                        </div>
                    </div>
                    <div id="log">
                        <a id="Question-signup"><b>Bạn đã có tài khoản?</b></a>
                        <div id="log-now">
                            <a id="text-log" href="/dangnhap"><b>ĐĂNG NHẬP NGAY!</b></a>
                        </div>
                    </div>
                    <div id="back-signup">
                        <a href="/"><img id="icon-back-signup" src="assets/custom/Anh/back.png" /></a>
                    </div>
                </div>
    
                <div id="right-signup">
                    <div id="content-right-signup">
                        <div id="logo-signup">
                            <a href="/"><img id="logo-VPW-signup" src="assets/custom/Anh/logoVPW_big.png" alt="Ảnh" /></a>
                        </div>
                        <form name="form" id="form-signup" action="/signup" method="POST"> 
                            @csrf
                            <!--------------------Dòng 1-------------------->
                            <div class="content-signup">
                                <input class="text-c-signup" name="name" type="text" placeholder="Họ và tên" />
                            </div>
                            {{-- <div id="warning-signup">
                                <a class="warning-text-signup2"><i>Vui lòng điền Họ và Tên!</i></a>
                            </div> --}}
                            
                            <!--------------------Dòng 2-------------------->			
                            <div class="content-signup">
                                <input class="text-c-signup" name="username" type="text" placeholder="Tài khoản" />
                            </div>
                            {{-- <div id="warning-signup">
                                <a class="warning-text-signup2"><i>Vui lòng điền Tài khoản!</i></a>
                            </div> --}}
                
                            <!--------------------Dòng 3-------------------->			
                            <div class="content-signup">
                                <input class="text-c-signup" name="email" type="text" placeholder="Email" />
                            </div>
                            {{-- <div id="warning-signup">
                                <a class="warning-text-signup2"><i>Vui lòng điền Email!</i></a>
                            </div> --}}
                
                            <!--------------------Dòng 4-------------------->	
                            <div class="content-signup" id="s-c2">
                                <div class="frame-left-signup">
                                    <input class="text-sc-signup" name="password" type="password" placeholder="Mật khẩu" />
                                </div>
                                {{-- <div id="warning-signup-s">
                                    <a class="warning-text-signup1"><i>Vui lòng điền Mật khẩu!</i></a>
                                </div> --}}
                                
                                <div class="frame-right-signup">
                                    <input class="text-sc-signup" name="repassword" type="password" placeholder="Xác nhận mật khẩu" />
                                </div>
                                {{-- <div id="warning-signup-s">
                                    <a class="warning-text-signup1"><i>Vui lòng nhập lại Mật khẩu!</i></a>
                                </div> --}}
                            </div>
                            <!--------------------Dòng 5-------------------->	
                            <div class="content-signup">
                                <input class="text-c-signup" name="address" type="text" placeholder="Địa chỉ" />
                            </div>
                            {{-- <div id="warning-signup">
                                <a class="warning-text-signup2"><i>Vui lòng điền Địa chỉ!</i></a>
                            </div> --}}
                            <!--------------------Dòng 6-------------------->	
                            <div class="content-signup">
                                <input class="text-c-signup" name="phone" type="text" placeholder="Số điện thoại" />
                            </div>
                            {{-- <div id="warning-signup">
                                <a class="warning-text-signup2"><i>Vui lòng điền Số điện thoại!</i></a>
                            </div> --}}
                            
                            <button id="signup-signup" type="submit">
                                <i class="fa fa-fw fa-sign-in-alt mr-1"></i>
                                <a>ĐĂNG KÝ TÀI KHOẢN</a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>