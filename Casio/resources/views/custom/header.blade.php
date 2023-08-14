<!---------------------------------------HEADER--------------------------------------------------------->
<div id="header">
    <div id="header-top">
        <div id="frame-log-sign">
            <div id="log-sign">
                @if(Auth::check())
                    <a id="text-login-signup" href="/taikhoan"><i class="fas fa-user"></i>
                        {{ auth()->user()->name }} 
                    </a>
                    <a id="text-login-signup"> / </a>
                    <a id="text-login-signup" href="/dangxuat">
                        Đăng xuất
                    </a>
                @else
                    <a href="/dangnhap" id="text-login-signup"><i class="fas fa-user"></i>
                        Đăng nhập/Đăng ký
                    </a>
                @endif
            </div>
        </div>
    </div>
    <div id="header-middle">
        <a href="/"><img id="logoVPW" src="/assets/custom/Anh/logoVPW.png" /></a>
        <img id="logoCasio" src="/assets/custom/Anh/logoNCC.png" />

        <div id="icon-search">
            <i class="fa fa-search"></i>
        </div>
        
        <form action="/timkiem" method="GET">
            <input id="hm-text-search" type="text" name="key" placeholder="Tìm kiếm sản phẩm..."/>
            <input id="hm-btn-search" type="submit" value="Tìm kiếm"/>
        </form>
        

        <div id="hm-contact">
            <img id="hm-img-phone" src="/assets/custom/Anh/img-phone.png" />
            <a href="tel:1900111222">Liên hệ</a>
            <a href="tel:1900111222">1900.111.222</a>
        </div>

        <div id="hm-cart">
            <a href="/giohang"><img id="hm-img-cart" src="/assets/custom/Anh/img-cart.png" /></a>
            <a class="hm-text-cart" id="hm-text-cart1" href="/giohang">Giỏ hàng </a>
            <a class="hm-text-cart" id="hm-text-cart2">
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
        </div>
    </div>
    <!----------------------------------------MENU--------------------------------------------------->
    <div id="menu">
        <div id="menu-main">
            <ul>
                @foreach($listmenu as $lm)
                    @if($lm->TenMenu == 'DANH MỤC SẢN PHẨM')
                        <li> 
                            <a id ="menu1">
                                <i class="fas fa-bars"></i>
                                <span>DANH MỤC SẢN PHẨM</span>
                            </a>							
                            <ul id="subcate"> <!--phân loại-->
                                @foreach($listdanhmuc as $l)
                                    <li><a href="/dongsanpham/{{ $l->id }}">{{ $l->TenDSP }}</a></li>
                                @endforeach
                            </ul>
                        </li>
                    @else
                        <li>
                            <a href="{{ $lm->Link }}">{{ $lm->TenMenu }}</a>
                        </li>
                    @endif
                @endforeach
                
             </ul>
        </div>    
    </div>
</div>