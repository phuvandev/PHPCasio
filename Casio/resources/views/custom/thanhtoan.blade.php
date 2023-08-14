@extends('custom.layout')

@section('custom.content')
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/thanhtoan">Thanh toán</a>
            </div>
        </div>
        <div id="container-thanhtoan">
            <div id="alert-1">
                <div class="alert alert-info">
                    <a>Vui lòng điền đầy đủ thông tin Thanh toán vào các mục (*).</a>
                </div>
            </div>
            @if (session('thongbao'))
                <div id="alert-2">
                    <div class="alert alert-danger">
                        {{ session('thongbao') }}
                    </div>
                </div>
            @endif
            <p style="font-size: 14px; margin-top: 20px;">GIAO HÀNG TẬN NƠI</p>
                <form action="/dathang" method="POST">
                    @csrf 
                    <div id="thongtin-thanhtoan">
                        <span>Thông tin khách hàng:</span> <br /><br />
                        
                        <p>
                            Họ và tên người mua: <input type="text" name="TenKH" value="{{ auth()->user()->name }}">
                        </p><br />
                
                        <p>
                            Địa chỉ giao hàng: <input type="text" name="DiaChi" value="{{ auth()->user()->address }}">
                        </p><br />
                
                        <p>
                            Số điện thoại: <input type="text" name="SDT" value="{{ auth()->user()->phone }}">
                        </p><br />
                        <p>
                            Email: <input type="text" name="Email" value="{{ auth()->user()->email }}">
                        </p><br />
                        <p>
                            Số lượng sản phẩm: 
                            <a style="margin-left: 50px; font-weight: bold; color:#EC1C24"> 
                                @php
                                    $tongsoluong = 0;
                                    if(session()->has('giohang')){
                                        foreach(session('giohang') as $sp){
                                            $tongsoluong += $sp['soluong'];
                                        }
                                    }
                                    echo $tongsoluong;
                                @endphp
                            </a> 
                        </p><br />
                    </div>
                    
                    <div id="total-payment">
                        <a id="text-total">Tổng số tiền cần thanh toán:</a>
                        <a id="number-total">
                            @php
                                $tonggiatien = 0;
                                if(session()->has('giohang')){
                                    foreach(session('giohang') as $sp){
                                        $tonggiatien += $sp['soluong'] * $sp['giaban'];
                                    }
                                }
                                echo number_format($tonggiatien);
                            @endphp 
                            đ
                        </a> 
                    </div>
                    
                    <div id="form-check" >
                        <input type="checkbox" name="apply"> <a>Tôi chắc chắn thông tin đã nhập bên trên là chính xác</a>
                    </div>
                    
                    <div id="option-payment">
                        <a href="/giohang">
                            <input id="return" type="button" value="QUAY LẠI">
                        </a>
                        <a href="/dathang">
                            <input id="continue" type="submit" value="ĐẶT HÀNG" >
                        </a>
                    </div>
                </form>
        </div>
    </div>	
@endsection