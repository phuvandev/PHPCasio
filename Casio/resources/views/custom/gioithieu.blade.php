@extends('custom.layout')

@section('custom.content')
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/gioithieu">Giới thiệu</a>
            </div>
        </div>
        
        @foreach ($gioithieu as $g)
            <div>
                <div id="intro-title">
                    <a>{{$g->TieuDe}}</a>
                </div>
                <div id="intro-content">
                    
                    <p>{{$g->MoTa}}</p>

                    @if($g->Anh != '')
                        <img src="assets/custom/Anh/GTLH/{{$g->Anh}}"/>
                    @else
                    @endif
                    
                </div>
            </div>
                
        @endforeach
            
    </div>
@endsection