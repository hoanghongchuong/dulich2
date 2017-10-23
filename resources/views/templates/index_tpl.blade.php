@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$cateProducts = Cache::get('cateProducts');
?>
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
                        
            <div class="offers">
              <div class="container">
                <div class="offers-head">
                  <h3>TOUR DU LỊCH HOT</h3>
                </div>
                <section class="slider">
                    <div class="flexslider carousel">
                        <ul id="owl-demo" class="slides owl-carousel owl-theme dv-ow-hot">
                            @foreach($hot_product as $hot)
                            <li class='item' >
                                <div class='img'>
                                    <i class='icon_hot'></i>
                                    <a href="{{url('tour/'.$hot->alias.'.html')}}"><img src="{{asset('upload/product/'.$hot->photo)}}" alt="{{$hot->name}}" /></a>
                                </div>

                                <div class='caption-info'>
                                   <div class='caption-info-head'>
                                    <div class='caption-info-head-left'>
                                      <h4><a href="{{url('tour/'.$hot->alias.'.html')}}">{{$hot->name}}</a></h4>
                                      <span>Khởi h&agrave;nh: {{date('d/m/Y', strtotime($hot->date_start))}}</span>
                                    </div>
                                    <div class='price'>
                                      <span class='price_out' >{{number_format($hot->price_old)}} đ</span>
                                      <span class='price_km'>{{number_format($hot->price)}} đ</span>
                                    </div>
                                    <div class='clear'> </div>
                                   </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </section>
                
              </div>
            </div>

            <div class="dvgioithieutour">
              <div class="container">
                <div class="row">
                  <?php $banner = DB::table('banner_content')->where('position',1)->get(); ?>
                  @foreach($banner as $qc)
                  <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="banner_quangcao_hieuung_3">
                      <a href="{{$qc->link}}"><img src="{{asset('upload/banner/'.$qc->image)}}" alt="Image"></a>
                    </div>
                  </div>
                  @endforeach      
                  <div class="clear"></div>
                </div>
              </div>
            </div>
             
            <div class="offers">
              <div class="container">
                <div class="offers-head">
                  <h3>TOUR DU LỊCH MỚI</h3>
                </div>
                <section class="slider">
                    <div class="flexslider carousel">
                        <ul id="owl-demo" class="slides owl-carousel owl-theme dv-ow-moi">
                            @foreach($news_product as $newsProduct)
                            <li class="item" >
                                <div class="img">
                                    <a href="{{url('tour/'.$newsProduct->alias.'.html')}}">
                                        <img src="{{asset('upload/product/'.$newsProduct->photo)}}" alt=""/>
                                    </a>
                                </div>

                                <div class="caption-info">
                                   <div class="caption-info-head">
                                    <div class="caption-info-head-left">
                                      <h4><a href="{{url('tour/'.$newsProduct->alias.'.html')}}"> {{$newsProduct->name}}</a></h4>
                                      <span>Khởi h&agrave;nh: {{date('d/m/Y', strtotime($hot->date_start))}}</span>
                                    </div>
                                    <div class="price">
                                        <span class="price_out">{{ number_format($newsProduct->price_old) }} đ </span>
                                        
                                        <span class="price_km">{{number_format($newsProduct->price)}} đ</span>
                                    </div>
                                    <div class="clear"> </div>
                                   </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </section>
                    
              </div>
            </div>

            <div class="holiday-types" style="background: url('{{asset('public/images/type-bg.jpg')}}') no-repeat 0px 0px; background-size: cover;">
                  <div class="container">
                    <div class="wrap">
                      <!-- <div class="holiday-type-head">
                        <h3>Danh mục tour</h3>
                      </div> -->
                      <div class="holiday-type-grids">
                            @foreach($cateHots as $cate)
                            <div class='col-md-3 col-sm-4 col-xs-6 col-min-12'>
                                <div class='holiday-type-grid'>
                                  <a href="{{url('tour/'.$cate->alias)}}"><img src="{{asset('upload/product/'.$cate->photo)}}" alt="{{$cate->name}}"></a>
                                  <a href="{{url('tour/'.$cate->alias)}}">{{$cate->name}}</a>
                                </div>
                            </div>
                            @endforeach
                      </div>
                    </div>
                  </div>
            </div>

            <div class="clients bottom-0">
              <div class="container">
                <div class="client-head">
                  <h3>Tin tức</h3>
                </div>
                <section class="slider">
                      <div class="flexslider carousel">
                        <ul id="owl-demo" class="slides owl-carousel owl-theme dv-ow-news">
                            @foreach($tintuc_moinhat as $news)
                            <li class='item'>
                                <div class='img'>
                                  <a href="{{url('tin-tuc/'.$news->alias.'.html')}}"><img src="{{asset('upload/news/'.$news->photo)}}" alt="{{$news->name}}"/></a>
                                </div>
                                <div class='caption-info'>
                                   <div class='caption-info-head'>
                                    <div class='caption-info-head-left'>
                                      <h4><a href="{{url('tin-tuc/'.$news->alias.'.html')}}">{{$news->name}}</a></h4>
                                      <span class='span_new'>{{$news->mota}}</span>
                                    </div>
                                    <div class='clear'> </div>
                                   </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                      </div>
                </section>
              </div>
            </div>

        </div>
    </section>
</article>
@endsection
