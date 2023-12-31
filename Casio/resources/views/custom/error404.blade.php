<html>
<head>
	<meta charset="UTF-8">
	<title>404 Not Found</title>

    <style type="text/css">
        body {
            height: 100%;
            margin: 0px;
            font-family: "Segoe UI";
        }
        a {
            text-decoration: none;
        }
        *, ::after, ::before {
            box-sizing: border-box; /* tinh dien tich cua cac phan tu bao gom padding & border */
        }
        #container {
            height: 100%;
            background-image: url('assets/custom/css/bg.jpg');
            background-size: cover;      
        }
        #content {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(37, 37, 37, 0.5);
        }
        #frame {
            width: 800px;
            height: 400px;
            justify-content: center;
            text-align: center;
        }
        #text1 {
            color: #ffb119;
            font-size: 96px;
        }
        #text2 {
            color: #FFFFFF;
            font-size: 30px;
            font-family: "Segoe UI";
        }
        #text3 {
            color: #FFFFFF;
            font-size: 24px;
        }
        #text4 {
            display: block;
            cursor: pointer;
            width: 300px;
            height: 70px;
            margin: 0px auto;
            border-radius: 15px;
            line-height: 70px;
            background-color: #EC1C24;
            color: #FFFFFF;
            font-size: 20px;
            font-weight: bold;
        }
        #text4:hover {
            background-color: red;
        }
    </style>
</head>
    <body>
        <div id="container">
            <div id="content">
                <div id="frame">
                    <a id="text1">KHÔNG TÌM THẤY</a>
                    <p id="text2"><b>Rất tiếc...</b></p>
                    <p id="text3">Trang bạn tìm kiếm không tồn tại</p>
                    <a href="/" id="text4">TRỞ VỀ TRANG CHỦ</a>
                </div>
            </div>
        </div>

        
    </body>
</html>
