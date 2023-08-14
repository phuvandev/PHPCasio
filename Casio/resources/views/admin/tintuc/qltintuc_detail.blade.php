@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title">
                <h3>Chi tiết tin tức : 
                    <a style="color: red;">{{ $tintuc->TieuDe }}</a>
                </h3>
                <h4>Ngày đăng &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: 
                    <a style="color: blue ;">{{ $tintuc->created_at }}</a>
                </h4>
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
            <!--xem chi tiết tt-->  
            <table id="datatable" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th style="text-align: center;">Mã CTTT</th>
                        <th style="text-align: center;">Ảnh chi tiết</th>
                        <th style="text-align: center;">Nội dung</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($cttintuc as $c)
                        <tr>
                            <td style="text-align: center;">{{$c->id}}</td>
                            <td style="text-align: center;">
                                <img src="/assets/custom/Anh/TT/{{ $c->Anh }}" style="width: 200px; height: 200px;"/>
                            </td>
                            <td style="max-width: 400px;">{{$c->NoiDung}}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>   
        </div>
        <!--Quay lại trang-->
        <div class="" style="">
            <a href="/qltintuc">
                <button class="btn btn-warning btn-xs" >
                    <i class="fa fa-reply"></i> Quay lại
                </button>
            </a>
        </div>
    </div>
</div>
  
  <!-- /page content -->
@endsection
