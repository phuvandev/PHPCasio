@extends('custom.layout')

@section('custom.content')
<!--Container-->
<div id="container">
    <div id="move">	
        <div id="move-content">
            <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
            <a class="text" href="/">Trang chủ</a> 
            <a id="icon-move"><i class="fas fa-angle-right"></i></a>
            <a class="text" href="/lienhe">Liên hệ</a>		
        </div>
    </div>
    <div id="contact-content">
        @foreach($lienhe as $l)
            <div id="contact-title">
                @if($l->TieuDe != '') 
                    <a>{{$l->TieuDe}}</a>
                @else 
                @endif 
            </div>
            <div id="contact-text-main">

                <h3>{{$l->TieuMuc}}</h3>
                <p>{{$l->MoTa}}</p>

                @if($l->Anh != '')
                    <img src="assets/custom/Anh/GTLH/{{$l->Anh}}"/>	
                @else	
                @endif	
            </div>	
        @endforeach
    </div>
    
    
</div>
@endsection