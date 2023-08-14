@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Đơn hàng</h3>
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
            <div class="x_content">
                <!-- start project list -->
                <div style=" margin-bottom: 10px;">
                    <a class="text-muted font-13 m-b-30">
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
                          <th style="text-align: center;">Mã ĐH</th>
                          <th style="text-align: center;">Tên KH</th>
                          <th style="text-align: center;">Mã KH</th>
                          <th style="text-align: center;">Trạng thái</th>
                          <th style="text-align: center;">Người duyệt</th>

                          <th style="text-align: center;" colspan="2">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($donhang as $d)
                        <tr>
                            <td style="text-align: center;">{{$d->id}}</td>
                            <td style="text-align: center;">{{$d->TenKH}}</td>
                            <td style="text-align: center;">{{$d->MaKH}}</td>
                            <td style="text-align: center;">
                                @if($d->TrangThai == 0)
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
                              @if($d->TrangThai != 0)
                                  {{ $d->NguoiDuyet }}
                              @endif
                            </td>
                            @if($d->TrangThai == 0)
                              <td style="text-align: center;"> 
                                <form action="/qldonhang_detail/{{$d->id}}" method="GET">
                                  <button class="btn btn-success btn-xs">
                                    <i class="fa fa-folder"></i> Chi tiết
                                  </button>
                                </form>
                              </td>
                              <td style="text-align: center;"> 
                                <form action="/checkDonHang/{{$d->id}}" method="POST">
                                  @csrf
                                  @method('PUT')
                                  <button type="submit" class="btn btn-info btn-xs" onclick="return confirm('Bạn có chắc chắn muốn Duyệt đơn hàng này? Sẽ không thể hoàn tác???')">
                                      <i class="fa fa-pencil"></i> Duyệt
                                  </button>
                                </form>
                              </td>
                            @else
                              <td style="text-align: center;" colspan="2"> 
                                <form action="/qldonhang_detail/{{$d->id}}" method="GET">
                                  <button class="btn btn-success btn-xs">
                                    <i class="fa fa-folder"></i> Chi tiết
                                  </button>
                                </form>
                              </td>
                            @endif
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <!-- end project list -->
              
                <!--Start phân trang-->
                <div class="paginate" style="text-align: center">
                    {{$donhang->appends(request()->all())->links()}}
                </div>
                <!-- End phân trang-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- /page content 'Bạn có chắc chắn Duyệt đơn hàng này? Sẽ không thể hoàn tác???'-->
@endsection
@push('scripts')
  <script>
    function confirmUpdate() {
      return confirm();
    }
  </script>
@endpush