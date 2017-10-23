@extends('index')
@section('content')

<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <!--blog-->
            <div class="blog_new new-detail">
                <div class="container">
                    <div class="breadcrumb">
                        <a href="{{url('tin-tuc')}}" class="linky"><b>Tin tức</b></a> »
                        <a href="" class="linky"><b>Chi tiết tin tức</b></a> »
                        <a href="" class="linky"><b>{{$news_detail->name}}</b></a>  
                    </div>
                    <div class="row">
                        <div class="bg_ff_noidung padding-product">
                            <div class="col-md-12">
                                {!!$news_detail->content!!}
                                <p>
                                    <div class="fb-comments" data-href="{{url('tin-tuc/'.$news_detail->alias.'.html')}}" data-width="100%" data-numposts="2"></div>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>

@endsection
