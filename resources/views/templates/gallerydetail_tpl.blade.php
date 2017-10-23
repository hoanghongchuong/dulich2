@extends('index')
@section('content')
<section class="slider aboutslider">
	<div class="container-flush">
		<img src="{{asset('public/images/11.jpg')}}" alt="" title="">
	</div>
</section>
<section class="break site-header">
	<div class="container d-flex align-items-center justify-content-center breakwrap">
		<div class="breakwrap-l">
			<h1 class="text-right text-uppercase break-tit">Rio Hotel & Casino</h1>
			<h2 class="text-right">Chu đáo, thời thượng, hiện đại</h2>
		</div>
		<img src="{{asset('public/images/logo.png')}}" title="" alt="">
	</div>
</section>

<section class="news">
	<div class="container">
		<p class="gallery-name">{{$cate->name}}</p>
		<div class="card-columns">
			@foreach($gallerys as $item)
		  	<div class="card">
		    	<a data-fancybox="gallery" href="{{asset('upload/banner/'.$item->photo)}}" title=""><img src="{{asset('upload/banner/'.$item->photo)}}" class="card-img-top"></a>
		  	</div>
		  	@endforeach
		</div>
	</div>
</section>
@endsection