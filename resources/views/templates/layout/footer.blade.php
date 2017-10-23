<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
?>
<div class="clear"></div>
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-main">
                <div class="footer-grids">
                    <div class="col-md-3 col-sm-6 col-xs-6 col-min-12 col-foot-1">
                        <div class="ul_foot ">
                            <h3>Việt Nam Travel</h3>
                            <ul>
                                <li class="not-padding">
                                    <p>Tầng 8, Tòa nhà TOYOTA Thanh Xuân ,315 Trường Chinh, Thanh Xuân, Hà Nội</p>
                                    <p>Điện thoại: (024)7 309 8885</p>
                                    <p>Email : info@gco.vn &nbsp;&nbsp;</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-6 col-min-12 col-foot-2">
                        <div class="ul_foot ">
                            <h3>Giới thiệu</h3>
                            <ul class='nav-bottom navi_bottom  navi_bottom_cus1'>
                                <li class='li_bottom li_bottom_cus1'>
                                    <i class='' aria-hidden='true'></i>
                                    <a class='a_navi_bottom a_navi_bottom_cus1' href=''>Đối tác</a>
                                </li>
                                <li class='li_bottom li_bottom_cus1'>
                                    <i class='' aria-hidden='true'></i>
                                    <a class='a_navi_bottom a_navi_bottom_cus1' href=''>Tầm nhìn - sứ mệnh</a>
                                </li>
                                <li class='li_bottom li_bottom_cus1'>
                                    <i class='' aria-hidden='true'></i>
                                    <a class='a_navi_bottom a_navi_bottom_cus1' href=''>Về chúng tôi</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-6 col-min-12 col-foot-2">
                        <div class="ul_foot ">
                            <h3>Tour du lịch</h3>
                            <ul class='nav-bottom navi_bottom  navi_bottom_cus1'>
                                @foreach($cateProducts as $cate)
                                <li class='li_bottom li_bottom_cus1'>
                                    <i class="" aria-hidden='true'></i>
                                    <a class='a_navi_bottom a_navi_bottom_cus1' href="{{url('tour/'.$cate->alias)}}">{{$cate->name}}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <script type="text/javascript">
                $( document ).ready(function() {
                    var w_document    = $(window).width();
                    if(w_document > 479 && w_document < 992)
                    {
                        var height_foot   = 0;
                        $(".ul_foot ul").each(function() {
                            if(height_foot   < $(this).height())
                            {
                                height_foot = $(this).height();
                            }
                        });
                        if(height_foot     != 0) $(".ul_foot ul").height(height_foot);
                    }
                });
            </script>
        </div>
    </div>
</div>
<div class="subfooter">
    <div class="container">
        <div class="wrap">
            <ul>
                <li>
                    <a href="index.html">trang chủ</a><span>::</span>
                </li>
                <li >
                    <a  href="gioi-thieu.html">giới thiệu</a><span>::</span>
                </li>
                <li >
                    <a  href="tour-cha.html">tour du lịch</a><span>::</span>
                </li>
                <li>
                    <a  href="tin-tuc.html">tin tức</a><span>::</span>
                </li>

                <li><a href="lien-he.html">liên hệ</a></li>
            </ul>
            <p class="copy-right"><span class="footer_copyright"><a target="_blank" href="" alt ="Thiết Kế Website" title="Thiết Kế Website" class="a_copyright">Thiết Kế Website bởi GCO</a></span></p>
            <a class="to-top" href="#header"><span> </span> </a>
        </div>
    </div>
</div>
<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>