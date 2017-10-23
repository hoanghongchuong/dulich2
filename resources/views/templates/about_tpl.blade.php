@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
?>
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <div class="product-model gioi-thieu-model">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 bg_ff_noidung">
                            <div class='global_left_panel global_left_panel_cus1' style="width: 25%; float: left;">
                                <div class="global_gioithieu11 global_gioithieu11_cus1">Giới thiệu</div>
                               @foreach($tintuc as $item)
                                <a href={{url('bai-viet/'.$item->alias.'.html')}} class='global_subnote_fa global_subnote_fa_cus1'><i class='' aria-hidden='true'></i> {{$item->name}}</a>
                                @endforeach
                                <div class="global_dichvu10 global_dichvu10_cus1">Tour du lịch</div>
                                @foreach($cateProducts as $cate)
                                <a href="{{url('tour/'.$cate->alias)}}" class='global_subnote_fa global_subnote_fa_cus1'><i class='' aria-hidden='true'></i> {{$cate->name}}</a>
                                @endforeach
                            </div>
                            <div class="global_right_panel_info right_panel_info_cus1" style="width: 70%; float: right;">
                                <div class="head_title_center title_info_cus1 title_info_cus2">Giới thiệu</div>
                                <div class="boxstyle_center text_color title_center_z_cus1 title_center_z_cus2">
                                    {!! $news_detail->content !!}
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>
@endsection
