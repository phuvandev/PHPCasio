@extends('custom.layout')

@section('custom.content')       
    <!---------------------------------Container-------------------------------------------->
    <div id="container">
        @include('custom.slideshow')		
        <!--------------- Ưu điểm ----------------->
        <div id="frame-advantage">
            <div id="advantage">
                <div class="advantage-detail">
                    <img class="advantage-img" src="assets/custom/Anh/real.png" />
                    <a><b>Chính hãng Casio Nhật Bản</b></a><br />
                    <a>Casio Văn Phú ủy quyền Casio</a>
                </div>
                <div class="advantage-detail">
                    <img class="advantage-img" src="assets/custom/Anh/shipfree.png" />
                    <a><b>Giao hàng toàn quốc</b></a><br />
                    <a>Freeship với HĐ trên 1 triệu đồng</a>
                </div>
                <div class="advantage-detail">
                    <img class="advantage-img" src="assets/custom/Anh/baohanh.png" />
                    <a><b>Bảo hành chính hãng</b></a><br />
                    <a>Bảo hành máy 5 năm G-Shock & Baby-G</a>
                </div>
            </div>
        </div>

        <!------------------------ Chương trình khuyến mãi------------------------------>
        <div id="frame-promotion">
            <div class="featured-promotion"> <!--Khuyến mãi nổi bật-->
                <a href="{{ route('dongsanpham', ['id' => 1]) }}">
                    <img id="fp-img" src="assets/custom/Anh/featured-promotion1.png" />
                </a>
            </div>
            <div class="featured-promotion">
                <a href="{{ route('dongsanpham', ['id' => 2]) }}">
                    <img id="fp-img" src="assets/custom/Anh/featured-promotion2.png" />
                </a>
            </div>
            <div class="featured-promotion">
                <a href="{{ route('dongsanpham', ['id' => 3]) }}">
                    <img id="fp-img" src="assets/custom/Anh/featured-promotion3.png" />
                </a>
            </div>
            <div class="featured-promotion">
                <a href="{{ route('dongsanpham', ['id' => 5]) }}">
                    <img id="fp-img" src="assets/custom/Anh/featured-promotion4.png" />
                </a>
            </div>
        </div>

        <!-- sản phẩm hot nhất-->
        <div id="hottest-product">
            <div id="hp-content-left">
                <div id="hpcl-frame">
                    <div id="hp-title">
                        <a><b>Sản phẩm</b></a> 
                        <a id="hot-word"><b>HOT</b></a>
                    </div>
                    <div>
                        <a id="hp-line-name"><b>{{ $sanpham_hotest->TenDSP }}</b></a><br />
                        <a id="hp-name" href="/sanpham/{{ $sanpham_hotest->id }}">
                            {{ $sanpham_hotest->TenSP }}
                        </a><br />
                        @if($sanpham_hotest->PhanTram == 0)
                            <a id="hp-price">Giá: </a> 
                            <a id="hp-price-value" >
                                {{number_format($sanpham_hotest->GiaBan)}} đ
                            </a>
                        @else 
                            <a id="hp-price">Giá: </a> 
                            <a id="hp-price-value" style="font-size: 16px; color: #337AB7 !important;">
                                <s>{{number_format($sanpham_hotest->GiaBan)}} đ</s>
                            </a>
                            <a id="hp-price-value">
                                {{number_format($sanpham_hotest->GiaSauGiam)}} đ
                            </a>
                        @endif
                    </div>

                    <a id="hp-see-detail" href="/sanpham/{{ $sanpham_hotest->id }}">Xem chi tiết</a>
                </div>
            </div>
            <div id="hp-content-right">
                <a href="/sanpham/{{ $sanpham_hotest->id }}">
                    <img id="hp-img" src="assets/custom/Anh/SP/{{ $sanpham_hotest->AnhDaiDien }}" />
                </a>
                <div id="hp-text">
                    {{ $sanpham_hotest->TenDSP }}
                </div>
            </div>
        </div>

        <!---------------------------Các dòng sản phẩm------------------------------------------->
        <div id="i-product-line">
            @foreach($listdongsanpham as $d)
                <div class="ipl-item" >
                    <a href="/dongsanpham/{{ $d->id }}"><img class="ipl-img" src="assets/custom/Anh/DSP/{{ $d->AnhDaiDien }}" /></a>	
                </div>
            @endforeach
        </div>

        <!--------------------------Sản phẩm mới--------------------->
        <div class="i-products">
            <div class="inp-title">
                <a><b>Sản phẩm mới</b></a> 
            </div>
            <div class="i-frame-product">
                @foreach ($sanpham_new as $sn)
                <div class="i-product-item">
                    <a href="/sanpham/{{ $sn->id }}"><img class="ipi-img" src="assets/custom/Anh/SP/{{$sn->AnhDaiDien}}" /></a>
                    <div class="ipi-status" style="background-color: green;">
                        <a>New</a>
                    </div>
                    @if ($sn->PhanTram != 0)
                        <div class="ipi-info">
                            <a href="/sanpham/{{ $sn->id }}" class="ipi-name">{{$sn->TenSP}}</a> <br>
                            <a class="ipi-price"><b>{{number_format($sn->GiaSauGiam)}} đ</b></a> <br>
                            <a style="color: #337AB7;"><s>{{number_format($sn->GiaBan)}} đ</s></a>
                        </div>
                    @else
                        <div class="ipi-info">
                            <a href="/sanpham/{{ $sn->id }}" class="ipi-name">{{$sn->TenSP}}</a> <br>
                            <a class="ipi-price"><b>{{number_format($sn->GiaBan)}} đ</b></a> <br>
                        </div>
                    @endif
            
                    <a href="/themvaogiohang/{{ $sn->id }}">
                        <input class="btn-buy-now" type="button" value="MUA NGAY" onclick="return confirm('Thêm vào giỏ hàng thành công!')"/>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
        <!--------------------------Sản phẩm bán chạy--------------------->
        <div class="i-products">
            <div class="inp-title">
                <a><b>Sản phẩm bán chạy</b></a>
            </div>
            <div class="i-frame-product">
                @foreach ($sanpham_hot as $sh)
                <div class="i-product-item">
                    <a href="/sanpham/{{ $sh->id }}"><img class="ipi-img" src="assets/custom/Anh/SP/{{$sh->AnhDaiDien}}" /></a>
                    <div class="ipi-status" style="background-color: #EC1C24;">
                        <a>Hot</a>
                    </div>
                    @if ($sh->PhanTram != 0)
                        <div class="ipi-info">
                            <a href="/sanpham/{{ $sh->id }}" class="ipi-name">{{$sh->TenSP}}</a> <br>
                            <a class="ipi-price"><b>{{number_format($sh->GiaSauGiam)}} đ</b></a> <br>
                            <a style="color: #337AB7;"><s>{{number_format($sh->GiaBan)}} đ</s></a>
                        </div>
                    @else 
                        <div class="ipi-info">
                            <a href="/sanpham/{{ $sh->id }}" class="ipi-name">{{$sh->TenSP}}</a> <br>
                            <a class="ipi-price"><b>{{number_format($sh->GiaBan)}} đ</b></a> <br>
                        </div>
                    @endif
                    <a href="/themvaogiohang/{{ $sh->id }}">   
                        <input class="btn-buy-now" type="button" value="MUA NGAY" onclick="return confirm('Thêm vào giỏ hàng thành công!')"/>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
        <!--------------------------Sản phẩm giảm giá--------------------->
        <div class="i-products">
            <div class="inp-title">
                <a><b>Sản phẩm giảm giá</b></a> 
            </div>
            <div class="i-frame-product">
                @foreach($sanpham_sale as $ss)
                <div class="i-product-item">
                    <a href="/sanpham/{{ $ss->id }}"><img class="ipi-img" src="assets/custom/Anh/SP/{{ $ss->AnhDaiDien }}" /></a>
                    <div class="ipi-status" style="background-color: #f75006;">
                        <a>{{ $ss->PhanTram }}%</a>
                    </div>
                    <div class="ipi-info">
                        <a href="/sanpham/{{ $ss->id }}" class="ipi-name">{{ $ss->TenSP }}</a> <br>
                        <a class="ipi-price"><b>{{number_format($ss->GiaSauGiam)}} đ</b></a> <br>
                        <a style="color: #337AB7;"><s>{{number_format($ss->GiaBan)}} đ</s></a>
                    </div>
                    <a href="/themvaogiohang/{{ $ss->id }}">
                        <input class="btn-buy-now" type="button" value="MUA NGAY" onclick="return confirm('Thêm vào giỏ hàng thành công!')"/>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <script>
        @if(session('thongbao'))
            alert('{{ session('thongbao') }}');
        @endif
      </script>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/assets/custom/slick-1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            
            $('.i-frame-product').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 3000,
                dots: true,
            });
        });
    </script>
@endsection

  