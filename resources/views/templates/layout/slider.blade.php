<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))

	<div class="images-slider" style="">
		<div id="fwslider">
			<div class="slider_container">
				@foreach($slider as $item)
				<div class="slide">
					<img src="{{asset('upload/hinhanh/'.$item->photo)}}" alt="{{$item->name}}"/>
					<div class="slide_content">
						<div class="slide_content_wrap">
							<h4 class="title">{{$item->name}}</h4>
							<p class="description">{!! $item->mota !!}</p>
							<div class="slide-btns description">
								<ul>
									<li><a class="mapbtn" href="{{$item->link}}">Xem chi tiết</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
			<div class="timers"> </div>
			<div class="slidePrev"><span> </span></div>
			<div class="slideNext"><span> </span></div>
		</div>
	</div>
@endif