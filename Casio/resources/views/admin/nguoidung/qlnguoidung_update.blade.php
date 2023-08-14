@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Quản lý Người dùng - Chức năng Sửa</h3>
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
            @if (Session::has('messError'))
              <div class="alert alert-danger">
                {{Session::get('messError')}}
              </div>
            @endif
            <div class="x_content">
                <form  novalidate name="frmNguoiDung" id="frmNguoiDung" class="form-horizontal row-border" action="/updateNguoiDung/{{$nguoidung->id}}" method="POST" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="col-md-12">
                        <div class="">
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Tài khoản : </label>
                                <div class="col-md-7"> 
                                    <input type="text" id="idUsername" class="form-control" name="username" value="{{ $nguoidung->username }}"/> 
                                </div>
                            </div>
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="input17"> Mật khẩu : </label>
                              <div class="col-md-7"> 
                                  <input type="text" id="idPassword" class="form-control" name="password" value="{{ $nguoidung->password }}"/> 
                              </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Email :</label>
                                <div class="col-md-7"> 
                                    <input type="text" id="idEmail" class="form-control" name="email" value="{{ $nguoidung->email }}"/> 
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Họ tên : </label>
                                <div class="col-md-7"> 
                                    <input type="text" id="idName" class="form-control" name="name" value="{{ $nguoidung->name }}"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Ngày sinh : </label>
                                <div class="col-md-7"> 
                                    <input type="date" id="idDob" class="form-control" name="dob" value="{{ $nguoidung->dob }}" /> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Giới tính : </label>
                                <div class="col-md-7"> 
                                  <select class="form-control" name="gender"> 
                                    <option selected>Chọn giới tính</option>
                                    <option value="0">Nữ</option>
                                    <option value="1">Nam</option>
                                  </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Địa chỉ :</label>
                                <div class="col-md-7"> 
                                    <input type="text" id="idAddress" class="form-control" name="address" value="{{ $nguoidung->address }}"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> SĐT :</label>
                                <div class="col-md-7"> 
                                    <input type="text" id="idPhone" class="form-control" name="phone" value="{{ $nguoidung->phone }}"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="input17"> Loại quyền :</label>
                                <div class="col-md-7"> 
                                    <select class="form-control" name="role"> 
                                        <option selected>Chọn loại quyền</option>
                                        <option value="Quản trị">Quản trị</option>
                                        <option value="Nhân viên">Nhân viên</option>
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
                  <a href="/qlnguoidung">
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
