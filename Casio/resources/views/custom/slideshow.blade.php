<!--slideshow-->
<div id="frame-slideshow">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          @foreach($listslide as $key => $ls)
            <li data-target="#myCarousel" data-slide-to="{{ $key }}" class="{{ $key == 0 ? 'active' : '' }}"></li>
          @endforeach
        </ol>
    
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          @foreach($listslide as $key => $ls)
            <div class="item {{ $key == 0 ? 'active' : '' }}">
              <a href="/dongsanpham/{{ $ls->Link }}">
                <img src="/assets/custom/Anh/Slide/{{ $ls->Anh }}" alt="Slideshow" style="width:100%;">
              </a>
            </div>
          @endforeach
        </div>
    
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
</div>