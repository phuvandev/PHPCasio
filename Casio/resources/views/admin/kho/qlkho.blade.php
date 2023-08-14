@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Kho</h3>
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
                    <form action="/qlkho_create" method="GET">
                        <button class="btn btn-primary fa fa-plus" >Tạo mới</button>
                    </form>
                    </a>
                    
                </div>

                @if (Session::has('thongbao'))
                    <div class="alert alert-success">
                        {{Session::get('thongbao')}}
                    </div>
                @endif
                <table id="datatable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="text-align: center;">Mã kho</th>
                            <th style="text-align: center;">Tên kho</th>
                            <th style="text-align: center;">Địa chỉ</th>

                            <th style="text-align: center;" colspan="2">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($kho as $k)
                        <tr>
                            <td style="text-align: center;">{{$k->id}}</td>
                            <td style="text-align: center;">{{$k->TenKho}}</td>
                            <td style="text-align: center;">{{$k->DiaChi}}</td>
                            <td style="text-align: center;"> 
                              <form action="/qlkho_detail/{{$k->id}}" method="GET">
                                <button class="btn btn-success btn-xs">
                                  <i class="fa fa-folder"></i> Chi tiết
                                </button>
                              </form>
                            </td>

                            <td style="text-align: center;">
                                <form action="/qlkho_update/{{$k->id}}" method="GET">
                                <button class="btn btn-info btn-xs" >
                                    <i class="fa fa-pencil"></i> Sửa 
                                </button>
                                </form>
                            </td>

                            <td style="text-align: center;">
                                <form action="/deleteKho/{{$k->id}}" method="POST" id="delete-form">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-xs" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">
                                    <i class="fa fa-trash-o"></i> Xoá
                                </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <!-- end project list -->
              
                <!--Start phân trang-->
                <div class="paginate" style="text-align: center">
                    {{$kho->appends(request()->all())->links()}}
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
