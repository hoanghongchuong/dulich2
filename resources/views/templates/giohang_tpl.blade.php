@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="slider aboutslider">
    <div class="container-flush">
        <img src="{{asset('public/images/11.jpg')}}" alt="" title="">
    </div>
    <div class="filter w-100 aboutfilter">
        <div class="container">
            <form action="find.html" class="form-group filter-frm">
                <div class="row">
                    <div class="col-sm-12 col-lg-6">
                        <div class="row">
                            <div class="col-sm-12 col-md-4">
                                <label>Ngày đến</label>
                                <input type="time" class="form-control top-filter-date">
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <label>Ngày đi</label>
                                <input type="time" class="form-control top-filter-date">
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <label>Người lớn</label>
                                <input type="number" class="form-control top-filter-nb">
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-6">
                        <div class="row">
                            <div class="col-sm-12 col-md-4">
                                <label>Trẻ em</label>
                                <input type="number" class="form-control top-filter-nb">
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <label>Số phòng</label>
                                <select class="form-control top-filter-ip">
                                    <option selected>Số phòng</option>
                                    <option value="1">1 phòng</option>
                                    <option value="2">2 phòng</option>
                                    <option value="3">3 phòng</option>
                                </select>
                            </div>
                            <div class="col-sm-12 col-md-4 ">
                                <button type="submit" class="btn w-100 filter-btn">TÌM PHÒNG</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<section class="cart">
    <div class="container">
        <form class="form-group co-frm cart-info-frm" method="post" action="{{route('postOrder')}}">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
        <div class="row">
            
                <div class="col-sm-12 col-md-4">
                    <h3 class="checkout-tit">Thông tin đặt phòng</h3>
             
                        <input type="text" name="full_name" required="required" placeholder="Họ tên khách hàng (*)">
                        <input type="text" name="address" required="required" placeholder="Địa chỉ nhận hàng (*)">
                        <input type="text" name="phone" required="required" placeholder="Số điện thoại liên lạc (*)">
                        <input type="email" name="email" required="required" placeholder="Email liên hệ">
                        <textarea placeholder="Nội dung đặt hàng" name="note"></textarea>
                        <p class="cart-frm-require">(*) Thông tin bắt buộc</p>
                     
                </div>

                <div class="col-sm-12 col-md-4">
                    <h3 class="checkout-tit">Phương thức thanh toán</h3>
                    <label class="custom-control custom-radio">
                        <input id="radioStacked1" name="payment_method" type="radio" class="custom-control-input" value="0" >
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Thanh toán trực tiếp</span>
                    </label>
                    <p>Nhân viên của chúng tôi giao hàng đến quý khách, quý khách sẽ thanh toán đầy đủ 100% số tiền trực tiếp cho nhân viên của chúng tôi</p>

                    <label class="custom-control custom-radio">
                        <input id="radioStacked1" name="payment_method" type="radio" class="custom-control-input" value="1" >
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Chuyển khoản ngân hàng</span>
                    </label>
                    <p>Hiện nay chúng tôi hỗ trợ các ngân hàng sau:</p>
                </div>
                                
                <div class="col-sm-12 col-md-4">
                    <h3 class="checkout-tit">Địa chỉ liên hệ</h3>
                    <ul class="checkout-list">
                        <li>{{$setting->address}}</li>
                        <li>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a></li>
                        <li>Email: <a href="mailto:{{$setting->email}}">{{$setting->email}}</a></li>
                        <li>Website: <a href="{{$setting->website}}">{{$setting->website}}</a></li>

                    </ul>
                    <div class="map_container">{!! $setting->iframemap !!}</div>
                </div>
                <div class="col-sm-12"><button type="submit" class="text-uppercase btn bookonl-btn">Đặt hàng</button></div>
        </div> 
        </form>  
    </div>
</section>


@endsection
