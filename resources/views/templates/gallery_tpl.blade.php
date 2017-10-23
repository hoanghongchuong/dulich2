@extends('index')
@section('content')
<section class="slider aboutslider">
	<div class="container-flush">
		<?php $banner = DB::table("banner_content")->where('position',4)->first(); ?>
        <img src="{{asset('upload/banner/'.$banner->image)}}" alt="" title="">
	</div>	
</section>
<section class="news">
	<div class="container">
    	<div class="row">
    		@foreach($cateGallery as $item)
			<div class="col-sm-12 col-md-6">
				<div class="news-col gallery-col">
    				<a href="{{url('gallery/'.$item->alias)}}" title=""><img src="{{asset('upload/banner/'.$item->photo)}}" alt="" title=""></a>
    				<div class="news-wrap">
    					<h3><a href="{{url('gallery/'.$item->alias)}}" title="" class="news-tit">{{$item->name}}</a></h3>
    				</div>
    			</div>
			</div>
			@endforeach
		</div>
	</div>
</section>
@endsection