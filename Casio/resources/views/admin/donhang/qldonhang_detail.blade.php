@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title">
                <h3>Chi tiết Đơn hàng : 
                    <a style="color: red;">{{ $donhang->id }}</a>
                </h3>
                <h4>Khách hàng: 
                    <a style="color: blue ;">{{ $donhang->TenKH }}</a>
                </h4>
                <h4>Email: 
                    <a style="color: blue ;">{{ $donhang->Email }}</a>
                </h4>
                <h4>Địa chỉ: 
                    <a style="color: blue ;">{{ $donhang->DiaChi }}</a>
                </h4>
                <h4>SĐT: 
                    <a style="color: blue ;">{{ $donhang->SDT }}</a>
                </h4>
                <h4>Ngày đặt mua:
                    <a style="color:forestgreen ;">{{date_format(date_create($donhang->created_at), "l, d/m/Y H:i:s")}}</a>
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
                    <tr style="color: #000000;">
                        <th style="text-align: center;">Mã CTĐH</th>
                        <th style="text-align: center;">Tên SP</th>
                        <th style="text-align: center;">Ảnh SP</th>
                        <th style="text-align: center;">Số lượng</th> 
                        <th style="text-align: center;">Giá mua</th>
                        <th style="text-align: center;">Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($ctdonhang as $c)
                        <tr>
                            <td style="text-align: center;"><b>{{ $c->id }}</b></td>
                            <td style="text-align: center;"><b>{{ $c->TenSP }}</b></td>
                            <td style="text-align: center;">
                            <img style="width: 180px; height: 180px;" src="/assets/custom/Anh/SP/{{ $c->AnhDaiDien }}" />
                            </td>
                            <td style="text-align: center;"><b>{{ $c->SoLuong }}</b></td>
                            <td style="text-align: center; color: red"><b>{{number_format($c->GiaMua)}} đ</b></td>
                            <td style="text-align: center; color: red"><b>{{number_format($c->ThanhTien)}} đ</b></td>
                            
                        </tr>
                    @endforeach
                </tbody>
            </table> 
            <p style="text-align: center; font-size: 26px;">
                Tổng tiền giao dịch: 
                <a style="color: red;">{{number_format($c->TongTien)}} đ</a>
                
            </p>  
        </div>
        <div class="" style="">
            <a href="/qldonhang">
                <button class="btn btn-warning btn-xs" >
                    <i class="fa fa-reply"></i> Quay lại
                </button>
            </a>
          </div>
    </div>
</div>
  
  <!-- /page content -->
@endsection
