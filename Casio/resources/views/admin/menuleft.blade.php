<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
      <div class="navbar nav_title" style="border-bottom: 4px solid aqua; ">
        <a href="/admin" class="site_title"><i class="fa fa-shield" ></i>
          <span>Quản trị WEB</span>
        </a>
      </div>

      <div class="clearfix"></div>

      <!-- menu profile quick info -->
      <div class="profile clearfix">
        <div class="profile_pic">
          <img src="/assets/admin/images/img.jpg" alt="..." class="img-circle profile_img">
        </div>
        <div class="profile_info">
          <span>Chào mừng,</span>
          <h2>{{ auth()->user()->name }}</h2>
        </div>
      </div>
      <!-- /menu profile quick info -->

      <br />

      <!-- sidebar menu -->
      <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
        <div class="menu_section">
          <h3>Tổng quan</h3>
          <ul class="nav side-menu">
            <li><a href="/admin"><i class="fa fa-home"></i> Trang chủ </a>
              
            </li>

            <li><a><i class="fa fa-desktop"></i> Quản lý giao diện <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                <li><a href="/qlmenu">Quản lý Menu</a></li>
                <li><a href="/qlslide">Quản lý Slide</a></li>
                <li><a href="/qlgioithieu">Quản lý Giới thiệu</a></li>
                <li><a href="/qltintuc">Quản lý Tin tức</a></li>
                <li><a href="/qlcttintuc">Quản lý Chi tiết Tin tức</a></li>
                <li><a href="/qllienhe">Quản lý Liên hệ</a></li>
              </ul>
            </li> 
            <li><a><i class="fa fa-cube"></i>Quản lý sản phẩm <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                <li><a href="/qldongsanpham">Quản lý Dòng sản phẩm</a></li>
                <li><a href="/qlctanhdongsanpham">Quản lý Chi tiết Ảnh DSP</a></li>
                <li><a href="/qlsanpham">Quản lý Sản phẩm</a></li>
                <li><a href="/qlctanhsanpham">Quản lý Chi tiết Ảnh sản phẩm</a></li>
                <li><a href="/qlthongsokythuat">Quản lý Thông số kỹ thuật</a></li>
                <li><a href="/qlgiamgia">Quản lý Giảm giá</a></li>
              </ul>
            </li>
            
            <li><a><i class="fa fa-users"></i>Quản lý người dùng <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                <li><a href="/qlnhacungcap">Quản lý Nhà cung cấp</a></li>
                <li><a href="/qlnguoidung">Quản lý Người dùng</a></li>
                <li><a href="/qlkhachhang">Quản lý Khách hàng</a></li>
              </ul>
            </li>
            {{-- <i class="fa fa-edit"></i> --}}
            <li><a><i class="fa fa-check-square-o"></i> Quản lý Nhập/Xuất <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                <li><a href="/qlhoadonnhap">Quản lý Hóa đơn nhập</a></li>
                <li><a href="/qlcthoadonnhap">Quản lý Chi tiết HDN</a></li>
                <li><a href="/qlkho">Quản lý Kho</a></li>
                <li><a href="/qlctkho">Quản lý Chi tiết Kho</a></li>
                <li><a href="/qldonhang">Quản lý Đơn hàng</a></li>
              </ul>
            </li>
            {{-- <li><a><i class="fa fa-desktop"></i> Cài đặt giao diện <span class="fa fa-chevron-down"></span></a> </li>--}}
            {{-- <li><a href="#"><i class="fa fa-table"></i> Bảng biểu </a> <!--<span class="fa fa-chevron-down"></span>--> --}}    
          </ul>
        </div>
        <div class="menu_section">
          <h3>Khác</h3>
          <ul class="nav side-menu">
            <li><a><i class="fa fa-bug"></i> Các trang khác <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                <li><a href="#">Thương mại điện tử</a></li>
                <li><a href="#">Dự án</a></li>
                <li><a href="#">Liên lạc</a></li>
                <li><a href="#">Hồ sơ</a></li>
              </ul>
            </li>
            <li><a href="#"><i class="fa fa-windows"></i> Tiện ích bổ sung <span class="fa fa-chevron-down"></span></a> 
              <ul class="nav child_menu">
                
                <li><a href="#">Icons</a></li>
                <li><a href="#">Tiện ích</a></li>
                <li><a href="#">Hộp thư đến</a></li>
                <li><a href="#">Lịch</a></li>
              </ul>
              <!--<span class="fa fa-chevron-down"></span>-->
              <!-- <ul class="nav child_menu">
                <li><a href="#">403 Error</a></li>
                <li><a href="#">404 Error</a></li>
                <li><a href="#">500 Error</a></li>
                <li><a href="#">Plain Page</a></li>
                <li><a href="#">Login Page</a></li>
                <li><a href="#">Pricing Tables</a></li>
              </ul> -->
            </li>
            <!-- <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
              <ul class="nav child_menu">
                  <li><a href="#level1_1">Level One</a>
                  <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li class="sub_menu"><a href="level2.html">Level Two</a>
                      </li>
                      <li><a href="#level2_1">Level Two</a>
                      </li>
                      <li><a href="#level2_2">Level Two</a>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#level1_2">Level One</a>
                  </li>
              </ul>
            </li> javascript:void(0)-->
            <li><a href="/"><i class="fa fa-laptop"></i> Trang đích <span class="label label-success pull-right">Coming Soon</span></a></li>
          </ul>
        </div>

      </div>
      <!-- /sidebar menu -->

      <!-- /menu footer buttons -->
      <div class="sidebar-footer hidden-small">
        <a data-toggle="tooltip" data-placement="top" title="Cài đặt">
          <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Toàn màn hình">
          <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Khóa màn hình">
          <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Đăng xuất" href="/dangxuat">
          <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
        </a>
      </div>
      <!-- /menu footer buttons -->
    </div>
  </div>