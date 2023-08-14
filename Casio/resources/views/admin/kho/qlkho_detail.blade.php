@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
            <h3>Chi tiết Kho : 
                <a style="color: red;">{{ $kho->TenKho }}</a>
            </h3>
        </div>

        <div class="title_right">
          <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            <div class="input-group">
              
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

                <!--xem chi tiết hdn-->  
                <table id="datatable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="text-align: center;">Mã CTK</th>
                            <th style="text-align: center;">Số lượng</th> 
                            <th style="text-align: center;">Tên SP</th>
                            <th style="text-align: center;">Ảnh SP</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ctkho as $c)
                            <tr>
                                <td style="text-align: center;">{{ $c->id }}</td>
                                <td style="text-align: center;">{{ $c->SoLuong }}</td>
                                <td style="text-align: center;">{{ $c->TenSP }}</td>
                                <td style="text-align: center;">
                                    <img style="width: 120px; height: 120px;" src="/assets/custom/Anh/SP/{{ $c->AnhDaiDien }}" />
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table> 
                <!-- end project list -->
                <!--Quay lại trang-->
                <div class="" style="">
                  <a href="/qlkho">
                      <button class="btn btn-warning btn-xs" >
                          <i class="fa fa-reply"></i> Quay lại
                      </button>
                  </a>
                </div>
                <!--Start phân trang-->
                <div class="paginate" style="text-align: center">
                    {{$ctkho->appends(request()->all())->links()}}
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
