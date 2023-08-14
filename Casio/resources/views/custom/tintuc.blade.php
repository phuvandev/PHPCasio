@extends('custom.layout')

@section('custom.content')
<!----------------------------------------------Container---------------------------------------------->
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/tintuc">Tin tức Casio Văn Phú</a>	
            </div>	
        </div>
            
        <div id="news-content">		
            @foreach($listtintuc as $ltt)
                <div class="frame-news">
                    <div id="fn-img">
                        <a href="/cttintuc/{{ $ltt->id }}"><img id="news-avatar" src="assets/custom/Anh/TT/{{ $ltt->AnhDaiDien }}" /></a>
                    </div>
                    <div id="news-title">
                        <a href="/cttintuc/{{ $ltt->id }}">{{ $ltt->TieuDe }}</a>
                    </div>
                    <div id="news-contents">
                        <p>{{ $ltt->MoTa }}</p>
                    </div>
                    <div id="news-date">
                        <i class="fas fa-calendar-week"></i><p>{{date_format(date_create($ltt->created_at), "d/m/Y H:i:s") }}</p>
                    </div>
                </div>
            @endforeach
        </div>

        <!--Start phân trang-->
        <div class="paginate" style="text-align: center">
            {{$listtintuc->appends(request()->all())->links()}}
        </div>
        <!-- End phân trang-->
        	
    </div>	
@endsection