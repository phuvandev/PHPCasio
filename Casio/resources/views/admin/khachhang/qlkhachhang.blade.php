@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Thông tin Khách hàng đặt mua sản phẩm</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Tìm kiếm...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" style="background-color: #ec1c24; color:#FFF">GO</button>
                        </span>
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
            <div class="x_content">
                <!-- start project list -->
                <div style=" margin-bottom: 10px;">
                    <a class="text-muted font-13 m-b-30">
                        {{-- <form action="/qlnguoidung_create" method="GET">
                            <button class="btn btn-primary fa fa-plus" >Tạo mới</button>
                        </form> --}}
                    </a>
                </div>

             
                <table id="datatable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                        <th style="text-align: center;">Mã KH</th>
                        <th style="text-align: center;">Tên KH</th>
                        <th style="text-align: center;">Địa chỉ</th>
                        <th style="text-align: center;">SĐT</th>
                        <th style="text-align: center;">Email</th>

                        
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($khachhang as $k)
                        <tr>
                            <td style="text-align: center;">{{$k->id}}</td>
                            <td style="text-align: center;">{{$k->TenKH}}</td>
                            <td style="text-align: center;">{{$k->DiaChi}}</td>
                            <td style="text-align: center;">{{$k->SDT}}</td>
                            <td style="text-align: center;">{{$k->Email}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
              <!-- end project list -->

              <!--Start phân trang-->
              <div class="paginate" style="text-align: center">
                {{$khachhang->appends(request()->all())->links()}}
              </div>
              <!-- End phân trang-->
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- /page content -->
@endsection
