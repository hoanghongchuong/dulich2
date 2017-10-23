@extends('index')
@section('content')
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <div class="prdt">
                <div class="container">
                    <div class="row">
                        <div class="prdt-top bg_ff_noidung padding-product">
                            <div class="col-md-12 col-sm-12 col-xs-12 col-min-12 blog-left">
                                <div class="product-model">
                                        <div class="detai_sanpham_normal">
                                            <div class="breadcrumb"><a href='' class='linky'>
                                                <b>Tour du lịch</b></a>
                                                &raquo;
                                                <a href="{{url('')}}" class='linky'><b>{{$cateProduct->name}}</b>
                                                </a>
                                            </div>
                                            <div class="main_content_top main_content_top_cus1">
                                                <script type="text/javascript" src="{{asset('public/js/jquery.simple-gallery.min.js')}}"></script>
                                                <script type="text/javascript" src="{{asset('public/js/jquery.simple-lens.min.js')}}"></script>
                                                <link rel="stylesheet" type="text/css" href="{{asset('public/css/jquery.simple-lens.css')}}">
                                                <link rel="stylesheet" type="text/css" href="{{asset('public/css/jquery.simple-gallery.css')}}">
                                                <!-- <script>
                                                    $(document).ready(function () {
                                                        $('#demo-1 .simpleLens-thumbnails-container img').simpleGallery({
                                                            loading_image: "{{asset('public/demo/images/loading.gif')}}",
                                                            show_event: 'click'
                                                        });
                                                        $('#demo-1 .simpleLens-big-image').simpleLens({
                                                            loading_image: "{{asset('public/demo/images/loading.gif')}}"
                                                        });
                                                    });
                                                </script> -->
                                                <div class="simpleLens-gallery-container main_col_left main_col_left_cus1" id="demo-1">
                                                    <div class="simpleLens-container">
                                                        <div class="simpleLens-big-image-container">
                                                            <a class="simpleLens-lens-image"
                                                               data-lens-image="{{asset('upload/product/'.$product_detail->photo)}}">
                                                                <img alt="{{$product_detail->name}}"
                                                                     class="simpleLens-big-image" src="{{asset('upload/product/'.$product_detail->photo)}}"/>
                                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="simpleLens-thumbnails-container body_thumb_content body_thumb_content_cus1">
                                                        <a href='JavaScript:void(0);'
                                                           class='simpleLens-thumbnail-wrapper'
                                                           data-lens-image='datafiles/1/28-10-2016/14776242868776_nhatrang3.jpg'
                                                           data-big-image='datafiles/1/28-10-2016/14776242868776_nhatrang3.jpg'>
                                                            <img class="border_images" src="{{asset('upload/product/'.$product_detail->photo)}}"
                                                                 width="50">
                                                        </a>
                                                    </div>

                                                </div>

                                                <div class="main_col_right main_col_right_cus1">
                                                    <h1 class="main_right_title">{{$product_detail->name}}</h1>
                                                    <div class="list_body_left list_body_left_cus1">Hãng sản xuất:</div>
                                                    <div class="list_body_right list_body_right_cus1"> &nbsp;</div>
                                                    <div class="list_body_left list_body_left_cus1 soluong_cus">Số
                                                        lượng:
                                                    </div>
                                                    <div class="list_body_right list_body_right_cus1 soluong_cus">0
                                                        &nbsp;
                                                    </div>
                                                    <div class="list_body_left list_body_left_cus1 tinhtrang_cus"
                                                         style="display: none">Số lượng:
                                                    </div>
                                                    <div class="list_body_right list_body_right_cus1 tinhtrang_cus"
                                                         style="display: none"> &nbsp;
                                                    </div>
                                                    <div class="list_body_left list_body_left_cus1">Mã sản phẩm:</div>
                                                    <div class="list_body_right list_body_right_cus1"> &nbsp;</div>
                                                    <div class="clear"></div>
                                                    <div class="line_top_1 line_top_cus1"></div>
                                                    <div class="global_ghichu_1 global_ghichu_2"><p>Khởi h&agrave;nh:
                                                        16-12-2016</p></div>
                                                    <div class="clear"></div>
                                                    <span class='glo-tgiagoc' style='display:none'>Giá cũ</span>
                                                    <span class='del del_cus1'>{{number_format($product_detail->price_old)}} VND</span>
                                                    <div class='gia_thanhtien gia_thanhtien_cus1'><span
                                                            class='glo-tgiakm' style='display:none'>Giá giảm</span>{{number_format($product_detail->price)}}
                                                        VND
                                                    </div>
                                                </div>
                                                <div class='clear'></div>
                                            </div>

                                            <div class="main_content_body main_content_body_cus1">
                                                <div class='microformat'>
                                                   {!! $product_detail->content !!}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                                <div class="clearfix"></div>
                                <div class="product-tab">
                                    <div class="service-sec dv-splienquan">
                                        <div class="border-top-splq"></div>
                                        <div class="service-grids dv-ndung-sptt">
                                            <div class="row carousel" id="portfoliolist">
                                                <p style="font-size: 24px; margin-bottom: 20px;">Tour liên quan</p>
                                                @foreach($productSameCate as $item)    
                                                <div class='col-md-3 col-sm-4 col-xs-6 col-min-12'>
                                                    <li class='item li_nopadding'>
                                                        <div class='img'><i class='icon_hot'></i>
                                                            <a href="{{url('tour/'.$item->alias.'.html')}}"><img src="{{asset('upload/product/'.$item->photo)}}" alt=" {{$item->name}}" /></a>
                                                        </div>

                                                        <div class='caption-info'>
                                                            <div class='caption-info-head'>
                                                                <div class='caption-info-head-left'>
                                                                    <h4><a href="{{url('tour/'.$item->alias.'.html')}}">{{$item->name}}</a></h4>
                                                                    <span>Khởi h&agrave;nh: {{date('d/m/Y', strtotime($item->date_start))}}</span>
                                                                </div>
                                                                <div class='price'>
                                                                    <span class='price_out' style="display:none"></span>
                                                                    <span class='price_km'>5,200,000 đ</span>
                                                                </div>
                                                                <div class='clear'></div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </div>
                                                @endforeach    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>
@endsection
