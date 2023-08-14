<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Đăng nhập Admin</title>

    <!-- Bootstrap -->
    <link href="assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="assets/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="assets/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="assets/admin/vendors/animate.css/animate.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>WELCOME! <i class="fa fa-commenting-o" style="font-size:28px;color:red; "></i></h1>
              <div>
                <input type="text" class="form-control" placeholder="Tài khoản..." required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Mật khẩu..." required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="/admin">ĐĂNG NHẬP</a>
                <a class="reset_pass" href="#">Quên mật khẩu?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <!-- <p class="change_link">Chưa có tài khoản?
                  <a href="#signup" class="to_register" style="color: red; font-size: 12px;"> ĐĂNG KÝ </a>
                </p>

                <div class="clearfix"></div>
                <br /> -->

                <div>
                  <h1><i class="fa fa-spinner fa-pulse"></i> Văn Phú Casio </h1>
                  <p>© 2023 Văn Phú. CÔNG TY CỔ PHẦN VĂN PHÚ CASIO .</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <!-- <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>ĐĂNG KÝ</h1>
              <div>
                <input type="text" class="form-control" placeholder="Tài khoản..." required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email..." required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Mật khẩu..." required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="#signin" >ĐĂNG KÝ</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link"> Đã có tài khoản?
                  <a href="#signin" class="to_register" style="color: red; font-size: 12px;"> ĐĂNG NHẬP </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-spinner fa-pulse"></i> Văn Phú Casio</h1>
                  <p>© 2023 Văn Phú. CÔNG TY CỔ PHẦN VĂN PHÚ CASIO .</p>
                </div>
              </div>
            </form>
          </section>
        </div> -->
      </div>
    </div>
    
  </body>
</html>
