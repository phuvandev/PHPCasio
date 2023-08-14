@extends('custom.layout')

@section('custom.content')
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/giohang">Giỏ hàng</a>
            </div>
        </div>
        
        @if(session('giohang'))
            <div id="container-cart">
                @if (session('thongbao'))
                    <div class="alert alert-danger">
                        {{ session('thongbao') }}
                    </div>
                @endif
                <h3>GIỎ HÀNG</h3>
                <!--Bảng lưu trữ sản phẩm mua-->
                <div id="content-cart">
                    <table id="danhsach">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Ảnh sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                                <th>Xóa</th>
                            </tr>
                        </thead>
                        <tbody id="dataProduct"> <!--Dữ liệu đổ ra-->
                            
                                @foreach(session('giohang') as $id => $sp)
                                    <tr class="cotnay"> 
                                        <td>{{ $loop->iteration }}</td>
                                        <td>
                                            <a href="/chitietsp/{{ $sp['id'] }}">
                                                <img class="cart-item-img" src="assets/custom/Anh/SP/{{ $sp['anhdaidien'] }}"/>
                                            </a>
                                        </td>
                                        <td><a href="/chitietsp/{{ $sp['id'] }}">{{ $sp['tensp'] }}</a></td>
                                        <td class="price-item">{{ number_format($sp['giaban']) }} đ</td>
                                        <td>
                                            <a href="/giamsoluong/{{ $sp['id'] }}">
                                                <input class="nutgiam" type="button" value="-" />
                                            </a>
                                            <input class= "txtsoluong" type = "text" readonly="true" value='{{ $sp['soluong'] }}' />
                                            <a href="/tangsoluong/{{ $sp['id'] }}">
                                                <input class="nuttang" type="button" max="10" value="+" />
                                            </a>
                                        </td >
                                        <td class="allprice"><span>{{number_format($sp['giaban'] * $sp['soluong'])}} đ</span></td>
                                        <td>
                                            <a href="/xoasanphamgiohang/{{ $sp['id'] }}">
                                                <img class="thungrac" src="/assets/custom/Anh/thungrac.png"/>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            
                        </tbody>   
                    </table>
                </div>

                <!--Thông tin -->
                <div id="pay-cart">
                    <div id="option-cart">
                        <a href="/dongsanpham/1">
                            <input class="button" type="button" onclick="" value="TIẾP TỤC MUA HÀNG">
                        </a>
                        <a href="/xoatatca">
                            <input class="button" id="capnhatlai" type="button" value="XÓA HẾT SẢN PHẨM">
                        </a>
                        <a href="/thanhtoan">
                            <input class="button" id="dathang" type="submit" value="THANH TOÁN">
                        </a>
                    </div>
                </div>
            </div>
        @else 
            <div id="container-cart">
                <p>Chưa có sản phẩm nào trong giỏ hàng</p>
            </div>
        @endif
    </div>	
@endsection