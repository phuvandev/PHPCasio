@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Kết quả tìm kiếm đơn hàng của khách hàng "{{ $searchTerm }}"</h3>
        </div>

        <div class="title_right">
          <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            <div class="input-group">
              <form action="/searchDonHang" method="GET">
                <div class="row">
                  <div class="col-md-9 col-sm-9 col-xs-9" style="padding-right: 0;">
                    <input type="text" class="form-control" name="key" placeholder="Tìm kiếm khách hàng..." style="border-top-right-radius: 0; border-bottom-right-radius: 0;">
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3" style="padding-left: 0;">
                    <button class="btn btn-default" type="submit" value="Tìm kiếm" style="background-color: #ec1c24; color:#FFF; border-top-left-radius: 0; border-bottom-left-radius: 0;">GO</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>        
        
      </div>
      
      <div class="clearfix"></div>

      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2></h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Cài đặt 1</a>
                    </li>
                    <li><a href="#">Cài đặt 2</a>
                    </li>
                  </ul>
                </li>
                <li><a class="close-link"><i class="fa fa-close"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <!--------------------------------------------------------------------------------------------->
            <!--------------------------------------------------------------------------------------------->
            <!--------------------------------------------------------------------------------------------->
            <!--------------------------------------------------------------------------------------------->
            @if (count($totalSearch) > 0)
              <div class="x_content">
                <!-- start project list -->
                <div style=" margin-bottom: 50px;">
                  <a class="text-muted font-13 m-b-30" style="float: left;">
                    <form action="/qlsanpham_create" method="GET">
                      <button class="btn btn-primary fa fa-plus">Tạo mới</button>
                    </form>
                  </a>
                </div>

                <table id="datatable" class="table table-striped table-bordered table-hover">
                  <thead>
                      <tr>
                        <th style="text-align: center;">Mã ĐH</th>
                        <th style="text-align: center;">Tên KH</th>
                        <th style="text-align: center;">Mã KH</th>
                        <th style="text-align: center;">Trạng thái</th>
                        <th style="text-align: center;">Người duyệt</th>
                      </tr>
                  </thead>
                  <tbody>
                  @foreach ($totalSearch as $t)
                    <tr>
                      <td style="text-align: center;">{{$t->id}}</td>
                      <td style="text-align: center;">{{$t->TenKH}}</td>
                      <td style="text-align: center;">{{$t->MaKH}}</td>
                      <td style="text-align: center;">
                          @if($t->TrangThai == 0)
                            <a style="color: red;">
                              Chưa duyệt <i style="font-size: 20px" class="fa fa-times"></i>
                            </a>
                          @else
                            <a style="color: green;">
                              Đã duyệt <i style="font-size: 20px" class="fa fa-check"></i>
                            </a>
                          @endif
                      </td>
                      <td style="text-align: center;">
                        @if($t->TrangThai != 0)
                          {{ $t->NguoiDuyet }}
                        @endif
                      </td>
                    </tr>
                  @endforeach
                  </tbody>
                </table>
                
                <!-- end project list -->
                <div class="" style="">
                  <a href="/qldonhang">
                    <button class="btn btn-warning btn-xs" >
                        <i class="fa fa-reply"></i> Quay lại
                    </button>
                  </a>
                </div>
                <!--Start phân trang-->
                <div class="paginate" style="text-align: center">
                  {{$totalSearch->appends(request()->all())->links()}}
                </div>
                <!-- End phân trang-->
              </div>
            @else
              <br>
              <h4>Không có sản phẩm nào phù hợp với từ khóa cần tìm</h4>
              <div class="" style="">
                <a href="/qlsanpham">
                    <button class="btn btn-warning btn-xs" >
                        <i class="fa fa-reply"></i> Quay lại
                    </button>
                </a>
              </div>
            @endif
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- /page content -->
@endsection
