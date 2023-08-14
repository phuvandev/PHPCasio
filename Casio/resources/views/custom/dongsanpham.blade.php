@extends('custom.layout')

@section('custom.content')
<!--------------------------------Container------------------------------>
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="{{ $dongsanpham->id }}">{{ $dongsanpham->TenDSP }}</a>	
            </div>	
        </div>
        
        <div class="productLine-content1" >
            <div class="pc1-left">
                <div class="pc1-img">
                    <img id="pc1-img-large" src="/assets/custom/Anh/DSP/{{$dongsanpham->Anh}}" />
                    <div id="pc1-img-name">{{ $dongsanpham->TenDSP }}</div>
                </div>
            </div>
        
            <div id="pc1-right">
                <div id="pc1-text">
                    <p>{{ $dongsanpham->MoTa }}</p>
                </div>
            </div>
        </div>
        
        <div id="productLine-content2">
            <div id="frame-plc2">
                <!----------	Chọn mức giá	-------------->
                <div id="pc2-left">		
                    <div id="frame-so">
                        <div id="plc2-select-option">
                            <a>Chọn mức giá</a><i class="fas fa-angle-down"></i>
                        </div>
                        <div id="option">
                            <div class="box-scroll">
                                <ul>
                                    <li><input id="choose-1" class="checkbox-price" type="checkbox" /><a>Dưới 1 triệu</a></li>
                                    <li><input id="choose-2" class="checkbox-price" type="checkbox" /><a>Từ 1 đến 3 triệu</a></li>
                                    <li><input id="choose-3" class="checkbox-price" type="checkbox" /><a>Từ 3 - 5 triệu</a></li>
                                    <li><input id="choose-4" class="checkbox-price" type="checkbox" /><a>Từ 5 - 7 triệu</a></li>
                                    <li><input id="choose-5" class="checkbox-price" type="checkbox" /><a>Từ 7 - 10 triệu</a></li>
                                    <li><input id="choose-6" class="checkbox-price" type="checkbox" /><a>Từ 10 - 15 triệu</a></li>
                                    <li><input id="choose-7" class="checkbox-price" type="checkbox" /><a>Trên 15 triệu</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="pc2-right">
                    <div id="frame-pc2-title">
                        <div id="pc2-title-content">
                            <span>ĐỒNG HỒ CASIO {{ $dongsanpham->TenDSP }}</span>
                        </div>
                        
                    </div>
                    <!--------------Dòng sản phẩm: ----------------------------->
                    <div class="pl-frame-product">
                        @foreach ($listsanpham as $s)
                            <div class="pl-product-item"> 
                                <a href="/sanpham/{{ $s->id }}"><img src="/assets/custom/Anh/SP/{{ $s->AnhDaiDien }}" /></a>
                            @if ($s->PhanTram != 0)
                                <div id="pl-product-status" style="background-color: #F75006">
                                    <a>{{ $s->PhanTram }}%</a>
                                </div>
                                <div id="pl-product-info">
                                    <a id="pl-product-name" href="/sanpham/{{ $s->id }}">{{$s->TenSP}}</a><br />
                                    <a id="pl-product-price"><b>{{number_format($s->GiaSauGiam)}} đ</b></a><br />
                                    <a style="color: #337AB7"><s>{{number_format($s->GiaBan)}} đ</s></a>
                                </div>
                            @else
                                <div id="pl-product-status">
                                    <a>New</a>
                                </div>
                                <div id="pl-product-info">
                                    <a id="pl-product-name" href="/sanpham/{{ $s->id }}">{{$s->TenSP}}</a><br />
                                    <a id="pl-product-price"><b>{{number_format($s->GiaSauGiam)}} đ</b></a><br />
                                </div>
                            @endif
                                <input class="btn-buy-now" type="button" value="MUA NGAY" />
                            </div>

                        @endforeach
                    </div>    
                    <!--Start phân trang-->
                    <div class="paginate" style="text-align: center">
                        {{$listsanpham->appends(request()->all())->links()}}
                    </div>
                    <!-- End phân trang--> 
                </div>
            </div>
        </div>	
    </div>
@endsection
