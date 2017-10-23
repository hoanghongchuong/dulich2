<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    
    <link rel='stylesheet' id='gfont-style-css'  href='http://fonts.googleapis.com/css?family=Roboto%3A100%2C300%2C300italic%2C400%2C400italic%2C500%2C700%2C900%7CRoboto+Slab%3A300%2C400%2C700%7CArapey%3A400%2C400italic%7CLobster%7CCinzel%7CPoiret+One%3A400%7CJosefin+Sans%3A400%7CDomine%3A400&amp;ver=4.4.5' type='text/css' media='all' />
    <link href="{{asset('public/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/customize.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/jquery.mCustomScrollbar.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/global.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/divbox.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/bxslider.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('public/css/owl.carousel.css')}}" rel="stylesheet">
    <link href="{{asset('public/css/owl.theme.css')}}" rel="stylesheet">

    <script type="text/javascript" src="{{asset('public/js/jquery-1.8.2.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/divbox.js')}}"></script>
    <script type='text/javascript' src="{{asset('public/js/jquery.easing.1.3.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/swfobject.js')}}" charset="utf-8"></script>
    <script type="text/javascript" src="{{asset('public/js/jquery.bxslider.min.js')}}" charset="utf-8"></script>
    <script type="text/javascript" src="{{asset('public/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/owl.carousel.js')}}"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('a[href^="#"]').on('click',function (e) {
                e.preventDefault();
                var target = this.hash,
                    $target = $(target);
                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 1000, 'swing', function () {
                    window.location.hash = target;
                });
            });
        });
    </script>
    <script type="text/javascript" src="{{asset('public/js/flexy-menu.js')}}"></script>
    <script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
    <script src="{{asset('public/js/jquery-ui.min.js')}}"></script>
    <script src="{{asset('public/js/fwslider.js')}}"></script>
    
</head>
<body class="cbp-spmenu-push">
    
    @include('templates.layout.header')
    @include('templates.layout.slider')
    @yield('content')
    @include('templates.layout.footer')
     
    {{ $setting->codechat }}
    {{ $setting->analytics }}
    @yield('script')

    <script type="text/javascript">
        $(document).ready(function() {
            var owl = $(".dv-ow-hot");
            owl.owlCarousel({
                itemsCustom : [
                    [0, 1],
                    [450, 2],
                    [600, 2],
                    [700, 3],
                    [1000, 4],
                    [1200, 4],
                    [1400, 4],
                    [1600, 4]
                  ],
                  navigation : true,
                  navigationText : ["<img src='images/owl_left.png'>","<img src='images/owl_right.png'>"],
                  autoplaySpeed:7000,
                  autoPlay: true,
              });
            });
    </script>
    <script type="text/javascript">
            $(document).ready(function() {
                var owl = $(".dv-ow-moi");
                owl.owlCarousel({
                    itemsCustom : [
                        [0, 1],
                        [450, 2],
                        [600, 2],
                        [700, 3],
                        [1000, 4],
                        [1200, 4],
                        [1400, 4],
                        [1600, 4]
                      ],
                      navigation : true,
                      navigationText : ["<img src='images/owl_left.png'>","<img src='images/owl_right.png'>"],
                      autoplaySpeed:7000,
                      autoPlay: true,
                  });
                });
        </script>
    <script type="text/javascript">
        $(document).ready(function() {
        var owl = $(".dv-ow-news");
        owl.owlCarousel({
            itemsCustom : [
                [0, 1],
                [450, 2],
                [600, 2],
                [700, 3],
                [1000, 4],
                [1200, 4],
                [1400, 4],
                [1600, 4]
              ],
              navigation : true,
              navigationText : ["<img src='images/owl_left.png'>","<img src='images/owl_right.png'>"],
              autoplaySpeed:7000,
              autoPlay: true,
          });
        });
    </script>
    <script type="text/javascript">
        $( document ).ready(function() {
            var w_document = $(window).width();
            if(w_document > 479 && w_document < 992)
            {
                var height_foot = 0;
                $(".ul_foot ul").each(function() {
                    if(height_foot < $(this).height())
                    {
                        height_foot = $(this).height();
                    }
                });
                if(height_foot != 0) $(".ul_foot ul").height(height_foot);
            }
        });
    </script>
    <script type="text/javascript">
        $('a.lightbox').divbox();
    </script>
</body>
</html>