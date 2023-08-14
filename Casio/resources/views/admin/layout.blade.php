<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
	  <!-- <link rel="icon" href="/assets/admin/images/favicon.ico" type="image/ico" /> -->

    <link rel="shortcut icon" type="image/png" href="assets/custom/Anh/logoVPW_big.png"/>
    <title>Quản trị hệ thống Casio Văn Phú</title>

    <!-- Bootstrap -->
    <link href="/assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/assets/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/assets/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/assets/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="/assets/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/assets/admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/assets/admin/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        @include('admin.menuleft')

        @include('admin.header')

        @yield('admin.content')

        @include('admin.footer')
      </div>
    </div>
    
    <!-- jQuery -->
    <script src="/assets/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/assets/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/assets/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/assets/admin/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="/assets/admin/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="/assets/admin/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/assets/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/assets/admin/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="/assets/admin/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="/assets/admin/vendors/Flot/jquery.flot.js"></script>
    <script src="/assets/admin/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="/assets/admin/vendors/Flot/jquery.flot.time.js"></script>
    <script src="/assets/admin/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="/assets/admin/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="/assets/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="/assets/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="/assets/admin/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="/assets/admin/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="/assets/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="/assets/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="/assets/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/assets/admin/vendors/moment/min/moment.min.js"></script>
    <script src="/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/assets/admin/build/js/custom.min.js"></script>
	
    <!-- jQuery Sparklines -->
    <script src="/assets/admin/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
  </body>
</html>
