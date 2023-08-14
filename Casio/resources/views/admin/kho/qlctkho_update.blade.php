@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Chi tiết Kho - Chức năng Sửa</h3>
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
                <form name="frmCTKho" id="frmCTKho" class="form-horizontal row-border" action="/updateCTKho/{{$ctkho->id}}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="col-md-12">
                        <div class="">
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="input17"> Số lượng : </label>
                            <div class="col-md-7"> 
                                <input type="text" id="idSoLuong" class="form-control" name="SoLuong" value={{ $ctkho->SoLuong }} /> 
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="input17"> Tên Kho: </label>
                            <div class="col-md-7"> 
                                <select class="form-control" name="MaKho"> 
                                    <option selected>Chọn kho</option>
                                    @foreach ($kho as $id => $TenKho)
                                      <option value="{{$id}}">{{$TenKho}}</option>
                                    @endforeach
                                </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="input17"> Tên SP: </label>
                            <div class="col-md-7"> 
                                <select class="form-control" name="MaSP"> 
                                    <option selected>Chọn sản phẩm</option>
                                    @foreach ($sanpham as $id => $TenSP)
                                      <option value="{{$id}}">{{$TenSP}}</option>
                                    @endforeach
                                </select>
                            </div>
                          </div>
                            <div class="form-group">
                                <div style="width: 40px; height: 30px; margin: 0px auto;">
                                <button type="submit" class="btn btn-success mt-2" >Lưu</button>
                                </div>
                            </div>   
                        </div>              
                      </div>
                    </div>
                    
                </form>
                <div class="" style="">
                  <a href="/qlctkho">
                      <button class="btn btn-warning btn-xs" >
                          <i class="fa fa-reply"></i> Quay lại
                      </button>
                  </a>
                </div>
            </div>
          </div>
        </div>
    </div>
  </div>
  
  <!-- /page content -->
@endsection