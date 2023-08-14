@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title">
                <h3>Chi tiết người dùng : 
                    <a style="color: red;">{{ $nguoidung->name }}</a>
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
            <!--xem chi tiết nd-->  
            <table id="datatable" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th style="text-align: center;">Email</th>
                        <th style="text-align: center;">Ngày sinh</th>
                        <th style="text-align: center;">Giới tính</th>
                        <th style="text-align: center;">Địa chỉ</th>
                        <th style="text-align: center;">SĐT</th>
                      
                      {{-- <th style="text-align: center;">Trạng thái</th>  --}}
                      
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="text-align: center;">{{$nguoidung->email}}</td>
                        <td style="text-align: center;">
                            {{date_format(date_create($nguoidung->dob), "d/m/Y")}}
                        </td>
                        <td style="text-align: center;">
                            @if($nguoidung->gender == 1)
                                Nam
                            @else
                                Nữ
                            @endif
                        </td>
                        <td style="text-align: center;">{{$nguoidung->address}}</td>
                        <td style="text-align: center;">{{$nguoidung->phone}}</td>
                    </tr>
                  
                </tbody>
            </table>   
        </div>
        <div class="" style="">
            <a href="/qlnguoidung">
                <button class="btn btn-warning btn-xs" >
                    <i class="fa fa-reply"></i> Quay lại
                </button>
            </a>
          </div>
    </div>
</div>
  
  <!-- /page content -->
@endsection

