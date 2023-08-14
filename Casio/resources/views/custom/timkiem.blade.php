@extends('custom.layout')

@section('custom.content')
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/timkiem">Tìm kiếm</a>
            </div>
        </div>
        
        <div class="i-products-search">
            <div class="inp-title">
                <a><b>Kết quả tìm kiếm của "{{ $searchTerm }}"</b></a> 
            </div>
            <div class="i-frame-product-search">
                @if (count($totalSearch) > 0)
                    @foreach ($totalSearch as $t)
                    <div class="i-product-item-search">
                        <a href="/sanpham/{{ $t->id }}"><img class="ipi-img" src="assets/custom/Anh/SP/{{ $t->AnhDaiDien }}" /></a>
                        <div class="ipi-status" style="background-color: green;">
                            <a>New</a>
                        </div>
                        @if ($t->PhanTram != 0)
                            <div class="ipi-info">
                                <a href="/sanpham/{{ $t->id }}" class="ipi-name">{{ $t->TenSP }}</a> <br> 
                                <a class="ipi-price"><b>{{ number_format($t->GiaSauGiam) }} đ</b></a> <br> 
                                <a style="color: #337AB7;"><s>{{ number_format($t->GiaBan) }} đ</s></a> 
                            </div>
                        @else
                            <div class="ipi-info">
                                <a href="/sanpham/{{ $t->id }}" class="ipi-name">{{ $t->TenSP }}</a> <br>
                                <a class="ipi-price"><b>{{ number_format($t->GiaBan) }} đ</b></a> <br>
                            </div>
                        @endif
                
                        <input class="btn-buy-now" type="button" value="MUA NGAY" />
                    </div>
                    @endforeach
                @else
                    <br>
                    <p>Không có sản phẩm nào</p>
                @endif
            </div>
        </div>


        @if (count($totalSearch) > 0)
            <!--Start phân trang-->
            <div class="paginate" style="text-align: center">
                {{$totalSearch->appends(request()->all())->links()}}
            </div>
            <!-- End phân trang-->  
        @endif
    </div>
@endsection