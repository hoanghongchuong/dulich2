@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article>
    <section class="content gallery pad1" style='padding:0'>
        <div class="midle_main_idclass fix1200_cus1">
            <div class="product-model contact-model">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 bg_ff_noidung mag-20-10">

                            <div class="head_title_center title_info_cus1 title_info_cus2">LIÊN HỆ</div>
                            <div class="clr"></div>
                            <div class="dv-contact">
                                <div class="showText">
                                    <p><strong>{{$setting->company}}</strong></p>
                                    <p>{{$setting->address}}</p>
                                    <p>Điện thoại: {{$setting->phone}}</p>
                                    <p>Email : {{$setting->email}}</p>
                                    <p><strong><br/></strong></p></div>
                                <div class="contact">
                                    <form action="{{route('postContact')}}" method="post" class="formBox" name="FormNameContact" id="FormNameContact">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="goilienhe" value="1"/>
                                        <div class="left">
                                            <li class="name">
                                                <input name="name" required="required" type="text" placeholder="Họ tên" value=""/>
                                            </li>
                                            <li class="phone">
                                                <input name="phone" required="required" type="text" placeholder="Điện thoại" value=""/>
                                            </li>
                                            <li class="mail">
                                                <input name="email" type="email" placeholder="Email" value=""/>
                                            </li>
                                            <li class="local">
                                                <input name="address" type="text" placeholder="Địa chỉ" value=""/>
                                            </li>
                                        </div>
                                        <div class="right">
                                            <li class="mess">
                                                <textarea name="content" cols="" rows="" placeholder="Nội dung" value=""></textarea>
                                            </li>
                                            <div class="haibuttom">
                                                <!-- <a class="button submitbutton">Gửi đi</a> -->
                                                <button type="submit" class="button submitbutton">Gửi đi</button>
                                            </div>
                                        </div>
                                        <div class="clr"></div>
                                    </form>
                                </div>

                                <div class="map_container">
                                    {!! $setting->iframemap !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>

@endsection
