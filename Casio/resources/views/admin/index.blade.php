@extends('admin.layout')

@section('admin.content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="row">
      <div class="col-md-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Tóm tắt giao dịch <small>Tiến độ hàng tuần</small></h2>
            <div class="filter">
              <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <div class="col-md-9 col-sm-12 col-xs-12">
              <div class="demo-container" style="height:280px">
                <div id="chart_plot_02" class="demo-placeholder"></div>
              </div>
              <div class="tiles">
                <div class="col-md-4 tile">
                  <span>Tổng số phiên</span>
                  <h2>231,809</h2>
                  <span class="sparkline11 graph" style="height: 160px;">
                       <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
                </div>
                <div class="col-md-4 tile">
                  <span>Tổng doanh thu</span>
                  <h2>$231,809</h2>
                  <span class="sparkline22 graph" style="height: 160px;">
                        <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
                </div>
              </div>

            </div>

            <div class="col-md-3 col-sm-12 col-xs-12">
              <div>
                <div class="x_title">
                  <h2>Hồ sơ hàng đầu</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Cài đặt 1</a>
                        </li>
                        <li><a href="#">Cài đặt 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <ul class="list-unstyled top_profiles scroll-view">
                  <li class="media event">
                    <a class="pull-left border-aero profile_thumb">
                      <i class="fa fa-user aero"></i>
                    </a>
                    <div class="media-body">
                      <a class="title" href="#">Ms. Mary Jane</a>
                      <p><strong>$2300. </strong> Agent Avarage Sales </p>
                      <p> <small>12 Sales Today</small>
                      </p>
                    </div>
                  </li>
                  <li class="media event">
                    <a class="pull-left border-green profile_thumb">
                      <i class="fa fa-user green"></i>
                    </a>
                    <div class="media-body">
                      <a class="title" href="#">Ms. Mary Jane</a>
                      <p><strong>$2300. </strong> Agent Avarage Sales </p>
                      <p> <small>12 Sales Today</small>
                      </p>
                    </div>
                  </li>
                  <li class="media event">
                    <a class="pull-left border-blue profile_thumb">
                      <i class="fa fa-user blue"></i>
                    </a>
                    <div class="media-body">
                      <a class="title" href="#">Ms. Mary Jane</a>
                      <p><strong>$2300. </strong> Agent Avarage Sales </p>
                      <p> <small>12 Sales Today</small>
                      </p>
                    </div>
                  </li>
                  <li class="media event">
                    <a class="pull-left border-aero profile_thumb">
                      <i class="fa fa-user aero"></i>
                    </a>
                    <div class="media-body">
                      <a class="title" href="#">Ms. Mary Jane</a>
                      <p><strong>$2300. </strong> Agent Avarage Sales </p>
                      <p> <small>12 Sales Today</small>
                      </p>
                    </div>
                  </li>
                  <li class="media event">
                    <a class="pull-left border-green profile_thumb">
                      <i class="fa fa-user green"></i>
                    </a>
                    <div class="media-body">
                      <a class="title" href="#">Ms. Mary Jane</a>
                      <p><strong>$2300. </strong> Agent Avarage Sales </p>
                      <p> <small>12 Sales Today</small>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Tóm tắt hàng tuần</small></h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Settings 1</a>
                  </li>
                  <li><a href="#">Settings 2</a>
                  </li>
                </ul>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">

            <div class="row" style="border-bottom: 1px solid #E0E0E0; padding-bottom: 5px; margin-bottom: 5px;">
              <div class="col-md-7" style="overflow:hidden;">
                <span class="sparkline_one" style="height: 160px; padding: 10px 25px;">
                              <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                          </span>
                <h4 style="margin:18px">Tiến độ bán hàng</h4>
              </div>

              <div class="col-md-5">
                <div class="row" style="text-align: center;">
                  <div class="col-md-4">
                    <canvas class="canvasDoughnut" height="110" width="110" style="margin: 5px 10px 10px 0"></canvas>
                    <h4 style="margin:0">Bounce Rates</h4>
                  </div>
                  <div class="col-md-4">
                    <canvas class="canvasDoughnut" height="110" width="110" style="margin: 5px 10px 10px 0"></canvas>
                    <h4 style="margin:0">New Traffic</h4>
                  </div>
                  <div class="col-md-4">
                    <canvas class="canvasDoughnut" height="110" width="110" style="margin: 5px 10px 10px 0"></canvas>
                    <h4 style="margin:0">Device Share</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->    
<script>
  @if(session('thongbao'))
      alert('{{ session('thongbao') }}');
  @endif
</script>  
@endsection