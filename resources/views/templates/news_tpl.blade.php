@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <div class="blog_new">
                <div class="container">
                    <div class="row">
                        <div class="bg_ff_noidung padding-product">
                            <div class="col-md-12">
                                <h2 class="type text-center bre_sptintuc bre_onlytintuc">Tất cả bài viết</h2>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 col-min-12 dv-ndung-sptt nobostrap dv-page-tintuc" >
                                @foreach($tintuc as $item)
                                <div class='col-md-3 col-sm-4 col-xs-6 col-min-12' >
                                    <div class=' arrival-grid simpleCart_shelfItem'>
                                        <div class='grid-arr'>
                                            <div  class='grid-arrival'>
                                                <figure>        
                                                    <a href="{{asset('tin-tuc/'.$item->alias.'.html')}}" class='new-gri' >
                                                        <div class='grid-img'>
                                                            <img  src="{{asset('upload/news/'.$item->photo)}}" class='img-responsive' alt=''>
                                                        </div>      
                                                    </a>        
                                                </figure>   
                                            </div>
                                            <div class='women'>
                                                <div class='max-asp'>
                                                    <a href="{{asset('tin-tuc/'.$item->alias.'.html')}}">{{$item->name}}</a>
                                                </div>
                                                <div class='sp_ghichu'>{!! $item->mota !!}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>

                            <div class='page_break page_break_cus1'></div>                   
                            <div class="clear"></div>
                        </div>  
                        <div class="clearfix"> </div>
                    </div>  
                </div>
            </div>  
        </div>              
    </section>
</article>
@endsection
