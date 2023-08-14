@extends('custom.layout')

@section('custom.content')
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/taikhoan">Tài khoản</a>
            </div>
        </div>
        <div id="content-user">
            <div id="c-u-left">
                <ul>
                    <li><b>TÙY CHỌN TÀI KHOẢN</b></li>
                    <li><a href="/taikhoan">Thành viên</a></li>
                    <li><a href="#">Thiết lập tài khoản</a></li>
                    <li><a href="#">Thông tin đơn hàng</a></li>
                </ul>
                <div id="shopping-advice">
                    <div id="shopping-advice-title">
                        <b>TƯ VẤN MUA HÀNG ONLINE</b>
                    </div>
                    <ul>
                        <li><b>VĂN PHÚ CASIO</b></li>
                        <li><i class="fas fa-map-marker-alt"></i>Số 2/24/441, Điện Biên Phủ, phường Bình Hàn, TP Hải Dương</li>
                        <li><i class="fa fa fa-phone"></i><a href="tel:0357717404">0357717404 (Phím 1)</a></li>
                        <li><i class="fa fa fa-phone"></i><a href="tel:0357717404">0357717405 (Phím 2)</a></li>
                        <li><i class="fa fa-envelope"></i><a href="mailto:phuphamvan411@gmail.com">phuphamvan411@gmail.com</a></li>
                        <li><i class="fa fa-globe"></i><a href="/">casio.vanphu.com</a></li>
                    </ul>
                </div>
            </div>
            <div id="c-u-right">
                <div id="user-info">
                    <h4>THÔNG TIN THÀNH VIÊN</h4>
                    <ul>
                        <li><b>Tài khoản: </b> {{ auth()->user()->username }} ({{ auth()->user()->email}})</li>
                        <li><b>Cấp bậc: </b>
                            @if(auth()->user()->role == "Quản trị")
                                Quản trị hệ thống
                            @endif
                            @if(auth()->user()->role == "Nhân viên")
                                Nhân viên
                            @endif
                            @if(auth()->user()->role == "Khách hàng")
                                New member
                            @endif
                        </li>
                        <li><b>Đăng nhập theo kiểu thông thường</b></li>
                        <li><b>Đăng nhập vào: </b>{{ session('login_time')->format('l, d/m/Y H:i:s') }}</li>
                        <li><b>Bằng IP: </b>{{ request()->ip() }}</li>
                    </ul>
                </div>
                <table id="datatable" class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td><b>Họ tên</b></td>
                            <td><b style="color: red">{{ auth()->user()->name }}</b></td>
                        </tr>
                        <tr>
                            <td><b>Ngày/tháng/năm sinh</b></td>
                            <td><b style="color: red">{{date_format(date_create(auth()->user()->dob), "d/m/Y")}}</b></td>
                            
                        </tr>
                        <tr>
                            <td><b>Giới tính</b></td>
                            <td>
                                @if(auth()->user()->gender == 0)
                                    <b style="color: red">Nữ</b>
                                @else 
                                    <b style="color: red">Nam</b>
                                @endif
                                
                            </td>
                        </tr>
                        <tr>
                            <td><b>Địa chỉ</b></td>
                            <td><b style="color: red">{{ auth()->user()->address }}</b></td>
                        </tr>
                        <tr>
                            <td><b>Số điện thoại</b></td>
                            <td><b style="color: red">{{ auth()->user()->phone }}</b></td>
                        </tr>
                        <tr>
                            <td><b>Ngày tham gia</b></td>
                            <td><b style="color: red">{{ auth()->user()->created_at->format('d/m/Y') }}</b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
            
    </div>
@endsection