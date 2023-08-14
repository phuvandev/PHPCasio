@extends('custom.layout')

@section('custom.content')
<!----------------------------------------------Container---------------------------------------------->
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/dongsanpham/{{ $sanpham->MaDSP }}">{{ $sanpham->TenDSP }}</a>	
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="{{ $sanpham->id }}">{{ $sanpham->TenSP }}</a>	
            </div>
        </div>
        <!--Content 1-->   
        <div id="content1-dt">	
            <div id="product-segment"><!--Phần nhấp ảnh-->
                <!--Phân khúc sản phẩm-->
                @foreach($listctanhsanpham as $lcta)
                    <div class="segment">
                        <button id="click-segment">
                            <img id="pic-segment" src="/assets/custom/Anh/ACT/{{ $lcta->Anh }}" />
                        </button>
                    </div>
                @endforeach
            </div>
            <div id="product-show">
                <img id="show-segment" src="/assets/custom/Anh/SP/{{ $sanpham->AnhDaiDien }}" />	
            </div>

            <div id="product-info-dt">
                <div id="product-name-dt">
                    <a id="text-title-dt"><b>Đồng hồ {{$sanpham->TenDSP}} - Chính Hãng</b></a>
                    <a id="text1-dt">Tên sản phẩm: </a> 
                    <a id="text2-dt"><b>{{ $sanpham->TenSP }}</b></a>
                    <a id="text3-dt">Giá:</a> 
                    <a id="text4-dt"><b>{{number_format($sanpham->GiaSauGiam)}} đ</b></a>
                </div>
                <div id="product-info-form">
                    <form action="/themvaogiohangchitiet/{{ $sanpham->id }}">
                        <span>Số lượng: </span> &nbsp
                        <input id="number" type="number" name="number" value="1" min="1" max="10" />
                        <button type="submit" id="addToCart" onclick="return confirm('Thêm vào giỏ hàng thành công!')">
                            <span>THÊM VÀO GIỎ HÀNG</span>
                            <p>Và xem thêm nhiều sản phẩm khác</p>
                        </button>
                    </form>
                </div>
                <!----------	Thông tin thêm 	--------------------->
                <div id="product-info-other">
                    <div id="info-other">
                        <i class="fas fa-info"></i><a href="/lienhe">Quy định bảo hành</a>
                    </div>
                    <div id="info-other">
                        <i class="fas fa-info"></i><a href="/lienhe">Trung tâm bảo hành</a>
                    </div>
                    <div id="info-other">
                        <i class="fas fa-info"></i><a href="/lienhe">Quy định đổi trả</a>
                    </div>
                </div>
            </div>
		</div>

		<!--Content 2-->
        <div id="content2-dt">
            <div id="content2-dt-f">
                <div id="left">
                    <div id="tab">
                        <div id="tab-box">
                            <a>Chi tiết</a>
                        </div>
                    </div>
                    <div id="product-intro">
                        <!-- Giới thiệu sản phẩm -->
                        <br />  
                        <a id="text-pi1">Đồng hồ</a>
                        <a id="text-pi2" href="/dongsanpham/{{ $sanpham->MaDSP }}">{{$sanpham->TenDSP}}</a> 
                        <a id="text-pi3" href="{{ $sanpham->id }}">{{$sanpham->TenSP}}</a><br><br>
                        <p>{{$sanpham->MoTa}} </p>
                    </div>
                </div>

                <div id="right">
                    <table id="datatable1" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th style="text-align: center; color: red" colspan="2">Thông số kỹ thuật</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($listthongsokythuat as $ltskt)
                            <tr>
                                <td style="font-weight: bold; word-wrap: break-word; ">
                                    {{ $ltskt->TenTS }}
                                </td>
                                <td style=" word-wrap: break-word; ">
                                    {{ $ltskt->MoTa }}
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                        
                </div>
            </div>
        </div>

        <!--Content 3-->
        <div id="content3-dt">
            <div id="content3-dt-tab">
                <a>Sản phẩm cùng loại</a>
            </div>
            <div id = "content3-dt-tab-bb"></div>
            <div class="frame-similar-product">
            @foreach ($sanpham_similar as $sps)
                @if($sps->id != $sanpham->id)
                <div class="similar-product-item">
                    <a href="/sanpham/{{ $sps->id }}"><img class="spi-img" src="/assets/custom/Anh/SP/{{$sps->AnhDaiDien}}" /></a>
                    <div class="spi-status" style="background-color: green;">
                        <a>New</a>
                    </div>
                    @if ($sps->PhanTram != 0)
                        <div class="spi-info">
                            <a href="/sanpham/{{ $sps->id }}" class="spi-name">{{$sps->TenSP}}</a> <br>
                            <a class="spi-price"><b>{{number_format($sps->GiaSauGiam)}} đ</b></a> <br>
                            <a style="color: #337AB7;"><s>{{number_format($sps->GiaBan)}} đ</s></a>
                        </div>
                    @else 
                        <div class="spi-info">
                            <a href="/sanpham/{{ $sps->id }}" class="spi-name">{{$sps->TenSP}}</a> <br>
                            <a class="spi-price"><b>{{number_format($sps->GiaBan)}} đ</b></a> <br>
                        </div>
                    @endif
            
                    <a href="/sanpham/{{ $sps->id }}">
                        <input class="buy-now" type="button" value="MUA NGAY" onclick="return confirm('Thêm vào giỏ hàng thành công!')"/>
                    </a>
                </div>
                @endif
            @endforeach
            </div>
        </div>
    </div>	

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/assets/custom/slick-1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.frame-similar-product').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 3000,
                dots: true,
            });
        });
    </script>
@endsection

