@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Sản phẩm - Chức năng Sửa</h3>
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
                <form name="frmSanPham" id="frmSanPham" class="form-horizontal row-border" action="/updateSanPham/{{$sanpham->id}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="col-md-12">
                        <div class="">
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="input17"> Tên SP: </label>
                            <div class="col-md-7"> 
                                <input type="text" id="idTenSP" class="form-control" name="TenSP" value="{{ $sanpham->TenSP }}"/> 
                            </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-3 control-label" for="input17"> Ảnh đại diện: </label>
                              <div class="col-md-7"> 
                                  <input type="file" id="idAnhDaiDien" class="form-control" name="AnhDaiDien" value="{{ $sanpham->AnhDaiDien }}"/> 
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-3 control-label" for="input17"> Giá bán: </label>
                              <div class="col-md-7"> 
                                  <input type="text" id="idGiaBan" class="form-control" name="GiaBan" value="{{ $sanpham->GiaBan }}"/> 
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-md-3 control-label" for="input17"> Mô tả: </label>
                              <div class="col-md-7"> 
                                  <textarea style="resize: vertical;" id="idMoTa" class="form-control" name="MoTa">{{ $sanpham->MoTa }}"</textarea> 
                              </div>
                          </div>
                          
                          <div class="form-group">
                              <label class="col-md-3 control-label" for="input17"> Tên DSP: </label>
                              <div class="col-md-7"> 
                                  <select class="form-control" name="MaDSP"> 
                                      <option selected>Chọn dòng sản phẩm</option>
                                      @foreach ($dongsanpham as $id => $TenDSP)
                                        <option value="{{$id}}">{{$TenDSP}}</option>
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
                    
                </form>
                <div class="" style="">
                  <a href="/qlsanpham">
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
  </div>
  
  <!-- /page content -->
@endsection
