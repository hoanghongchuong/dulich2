@extends('index')
@section('content')
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <div class="dv-dssp">
                <div class="container">
                    <div class="row">
                        <div class="bg_ff_noidung padding-product">
                            <div class="col-md-12">
                                <h2 class="type text-center bre_sptintuc">{{$product_cate->name}}</h2>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 col-min-12 dv-ndung-sptt nobostrap">
                                <div class="service-grids carousel" id="portfoliolist">
                                    @foreach($products as $product)        
                                    <div class='col-md-3 col-sm-4 col-xs-6 col-min-12'>
                                        <li class='item li_nopadding'>
                                            <div class='img'>
                                                @if($product->noibat)                
                                                <i class='icon_hot'></i>
                                                @endif
                                                <a href="{{url('tour/'.$product->alias.'.html')}}"><img src="{{asset('upload/product/'.$product->photo)}}" alt="{{$product->name}}" /></a>
                                            </div>
                                            <div class='caption-info'>
                                                <div class='caption-info-head'>
                                                    <div class='caption-info-head-left'>
                                                        <h4>
                                                            <a href="{{url('tour/'.$product->alias.'.html')}}">{{$product->name}}</a>
                                                        </h4>
                                                        <span>Khởi h&agrave;nh: {{date('d/m/Y', strtotime($product->date_start))}}</span>
                                                    </div>
                                                    <div class='price'>
                                                        <span class='price_out'>{{number_format($product->price_old)}} đ</span>
                                                        <span class='price_km'>{{number_format($product->price)}} đ</span>
                                                    </div>
                                                    <div class='clear'></div>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    @endforeach
                                    <div class='page_break page_break_cus1'></div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                             <div class="paginations">{{$products->links()}}</div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>
@endsection
