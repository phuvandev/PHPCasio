@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Sản phẩm</h3>
        </div>

        <div class="title_right">
          <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            <div class="input-group">
              <form action="/searchSanPham" method="GET">
                <div class="row">
                  <div class="col-md-9 col-sm-9 col-xs-9" style="padding-right: 0;">
                    <input type="text" class="form-control" name="key" placeholder="Tìm kiếm tên sản phẩm..." style="border-top-right-radius: 0; border-bottom-right-radius: 0;">
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
            <div class="x_content">
              <!-- start project list -->
              <div style=" margin-bottom: 50px;">
                <a class="text-muted font-13 m-b-30" style="float: left;">
                  <form action="/qlsanpham_create" method="GET">
                    <button class="btn btn-primary fa fa-plus">Tạo mới</button>
                  </form>
                </a>
                {{-- <a class="btn btn-warning fa fa-cog" style="float: left; margin-left: 900px;" href="/qlthongsokythuat">
                  Thông số
                </a>
                <a class="btn btn-dark fa fa-file-image-o" style="float: left; margin-left: 10px;">
                  Chi tiết ảnh
                </a> --}}
              </div>
              @if (Session::has('thongbao'))
                <div class="alert alert-success">
                  {{Session::get('thongbao')}}
                </div>
              @endif
              <table id="datatable" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                      <th style="text-align: center;">Mã SP</th>
                      <th style="text-align: center;">Tên SP</th>
                      <th style="text-align: center;">Ảnh đại diện</th>
                      <th style="text-align: center;">Giá bán</th>
                      <th style="text-align: center;">Giá sau giảm</th>
                      <th style="text-align: center;">Mô tả</th>
                      <th style="text-align: center;">Tên DSP</th>

                      <th style="text-align: center;" colspan="4">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                  @foreach ($sanpham as $s)
                    <tr>
                        <td style="text-align: center;">{{$s->id}}</td>
                        <td style="text-align: center;"><b>{{$s->TenSP}}</b></td>
                        <td style="text-align: center;">
                          <img  style="width: 120px; height: 120px;" src="assets/custom/Anh/SP/{{$s->AnhDaiDien}}"/>
                        </td>
                        @if($s->PhanTram != 0)
                          <td style="text-align: center; color: #337AB7"><b>{{number_format($s->GiaBan)}} đ</b></td>
                          <td style="text-align: center; color:red"><b>{{number_format($s->GiaSauGiam)}} đ</b></td>
                        @else
                        <td style="text-align: center; color: #337AB7"><b>{{number_format($s->GiaBan)}} đ</b></td>
                        <td style="text-align: center; color:red"><b></b></td>
                        @endif
                        <td style="max-width: 300px;">{{Str::limit($s->MoTa, 200)}}</td>
                        <td style="text-align: center;">{{$s->TenDSP}}</td>

                        <td style="text-align: center;">
                          <form action="/thongsokythuat/{{$s->id}}" method="GET">
                          <button class="btn btn-warning fa fa-cog" >
                            TSKT 
                          </button>
                          </form>
                        </td>

                        <td style="text-align: center;">
                          <form action="/ctanhsanpham/{{$s->id}}" method="GET">
                          <button class="btn btn-dark fa fa-file-image-o" >
                            CTA
                          </button>
                          </form>
                        </td>

                        <td style="text-align: center;">
                          <form action="/qlsanpham_update/{{$s->id}}" method="GET">
                          <button class="btn btn-info btn-xs" >
                              <i class="fa fa-pencil"></i> Sửa 
                          </button>
                          </form>
                        </td>

                        <td style="text-align: center;">
                            <form action="/deleteSanPham/{{$s->id}}" method="POST" id="delete-form">
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
                {{$sanpham->appends(request()->all())->links()}}
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
