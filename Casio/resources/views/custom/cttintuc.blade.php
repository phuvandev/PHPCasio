@extends('custom.layout')

@section('custom.content')
<!----------------------------------------------Container---------------------------------------------->
    <div id="container">
        <div id="move">	
            <div id="move-content">
                <a id="icon-home" href="/"><i class="fas fa-home"></i></a> 
                <a class="text" href="/">Trang chủ</a> 
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text" href="/tintuc">Tin tức</a>	
                <a id="icon-move"><i class="fas fa-angle-right"></i></a>
                <a class="text">Bài viết</a>	
            </div>
        </div>
        <div id="content-cttt">
            <!--tin tức bên trái-->
            <div id="content-left1">
                <div id="content-left-title1">
                    <span>{{ $tintuc->TieuDe }}</span>
                </div>
                <div id="content-left-note">
                    <i class="fas fa-regular fa-pen-nib"></i>&nbsp<a><i>{{ $tintuc->name }}</i></a>
                    <i class="fas fa-regular fa-tags"></i>&nbsp<a><i>Tin tức</i></a>
                    <i class="fas fa-calendar-week"></i>&nbsp<a><i>{{date_format(date_create($tintuc->created_at), "l, d/m/Y H:i:s") }}</i></a> 
                </div>
                @foreach($cttintuc as $cttt)
                    <div>
                        <p>{{ $cttt->NoiDung }}</p>
                        <div id="frame-pic1">
                            <img id="picture-cttt" src="/assets/custom/Anh/TT/{{ $cttt->Anh }}" />
                        </div>
                    </div>		
                @endforeach		
            </div>
            
            <!--tin tức bên phải-->
            <div id="content-right1">
                <!---------------------------------------Tin tức mới ---------------------------------->
                <div class="content-right-title1">
                    <a>Tin tức khác</a>
                </div>
                <div id="content-right-d1">
                    @foreach($listtintuc_new as $lttn)
                        @if($lttn->id != $tintuc->id)
                            <div class="crd1">
                                <a href="/cttintuc/{{ $lttn->id }}"><img src="/assets/custom/Anh/TT/{{ $lttn->AnhDaiDien }}"/></a>
                                <a href="/cttintuc/{{ $lttn->id }}" id="article-title">{{ $lttn->TieuDe }}</a>
                            </div>
                        @endif
                    @endforeach
                    <div id="see-more">
                        <a href="/tintuc">Xem thêm</a>
                    </div>
                    
                </div>
                
            </div>	
        </div>
    </div>	
@endsection

