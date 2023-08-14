@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Thông số kỹ thuật sản phẩm: 
                    <a style="color: red;">{{ $sanpham->TenSP }}</a>
                </h3>
            </div>
            <div>
                <img src="/assets/custom/Anh/SP/{{ $sanpham->AnhDaiDien }}" style="width: 160px; height: 180px; display: block; margin: 0px auto"/>
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
            <!--xem chi tiết tskt-->  
            <table id="datatable" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th style="text-align: center;">Mã TSKT</th>
                        <th style="text-align: center;">Tên TSKT</th>
                        <th style="text-align: center;">Mô tả</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($thongsokythuat as $t)
                        <tr>
                            <td style="text-align: center;">{{$t->id}}</td>
                            <td style="text-align: center;">{{$t->TenTS}}</td>
                            <td style="text-align: center;">{{$t->MoTa}}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>   
        </div>
        <div class="" style="">
            <a href="/qlsanpham">
                <button class="btn btn-warning btn-xs" >
                    <i class="fa fa-reply"></i> Quay lại
                </button>
            </a>
          </div>
    </div>
</div>
  
  <!-- /page content -->
@endsection
