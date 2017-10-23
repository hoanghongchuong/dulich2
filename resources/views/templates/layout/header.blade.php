<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
?>
<div class="head_top header_admin">
    <div class="bg_top"><script>
        function jsupdate(k,idclass,jscolor) {
            if(k==0)        $("."+idclass).css("background-color","#"+jscolor);
            else if (k==1)  $("."+idclass).css("color","#"+jscolor);
        }
    </script>
    </div>
</div>

<div class="top-header" id="header">
    <div class="container">
        <div class="wrap">
            <div class="top-header-left">
                <ul>
                    <li><p class="contact-info">Hotline: {{$setting->hotline}}</p></li>
                    <div class="clear"> </div>
                </ul>
            </div>
            <div class="top-header-right">
                <ul>
                    <li><a class="face" href="" target="_blank"><span> </span></a></li>
                    <li><a class="twit" href="" target="_blank"><span> </span></a></li>
                    <li><a class="thum" href="" target="_blank"><span> </span></a></li>
                    <li><a class="pin" href="" target="_blank"><span> </span></a></li>
                    <div class="clear"> </div>
                </ul>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
</div>

<div class="header">
    <div class="container">
        <div class="logo">
            <a href="{{url('')}}"><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" title="voyage" /></a>
        </div>
        <div class="top-nav">
            <ul class="flexy-menu thick orange">
                <li class=""><a class="" href="{{url('')}}"><span>trang chủ</span></a></li>
                <li class=""><a class='' href="{{url('gioi-thieu')}}"><span>Giới thiệu</span></a></li>
                <li class=""><a  class=""  href="{{url('tour')}}"><span>tour du lịch</span></a>
                    <ul class='dl-submenu '>
                        @foreach($cateProducts as $cateProduct)
                        <li><a href="{{url('tour/'.$cateProduct->alias)}}">» {{$cateProduct->name}}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class=""><a  class=""  href="{{url('tin-tuc')}}"><span>tin tức</span></a></li>
                <li class=""><a class="" href="{{url('lien-he')}}"><span>liên hệ</span></a></li>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="clear"> </div>
    </div>
</div>