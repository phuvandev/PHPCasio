<html>
	<head>
		<meta charset="UTF-8">
		<title>Đồng hồ Casio Văn Phú</title>

		<link rel="shortcut icon" type="image/png" href="/assets/custom/Anh/logoVPW_big.png"/>
		
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/sanpham.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/dongsanpham.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/lienhe.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/chitiettintuc.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/tintuc.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/gioithieu.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/taikhoan.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/giohang.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/thanhtoan.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/timkiem.css" />
		<link rel="stylesheet" type="text/css" href="/assets/custom/css/main.css" />

		<link rel="stylesheet" type="text/css" href="/assets/custom/css/slick.css"/>
		<link rel="stylesheet" href="/assets/custom/css/fontawesome/css/all.min.css"/>

		<link rel="stylesheet" type="text/css" href="/assets/custom/slick-1.8.1/slick/slick.css"/>
  		<link rel="stylesheet" type="text/css" href="/assets/custom/slick-1.8.1/slick/slick-theme.css"/>

		<script src="/assets/custom/Js/jquery-3.6.0.min.js"></script>
		
		<link rel="stylesheet" href="/assets/custom/bootstrap/css/bootstrap.min.css">
		<script src="/assets/custom/js/jquery-3.6.0.min.js"></script>
		<script src="/assets/custom/bootstrap/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div id="casio-frame">
            @include('custom.header')

            @yield('custom.content')

            @include('custom.footer')

<!---------------------------------------------JS----------------------------------------------------->	
			
			<script src="/assets/custom/js/js_index.js"></script>

			<script> 
				autoPlay()		
			</script>
			
			
		</div>
	</body>
</html>