@extends('admin.master')
@section('content')
@section('controller','Contact detail')
@section('action','Update')

<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">
        	<form method="post" action="{{asset('backend/contact/edit/'.$data->id)}}" >
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	<!-- <li><a href="#tab_2" data-toggle="tab" aria-expanded="true">Chi tiết đặt phòng</a></li> -->
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
							    	<div class="form-group">
								      	<label for="ten">Họ tên</label>
								      	<input type="text" disabled id="txtName" value="{!! old('txtName', isset($data) ? $data->name : null) !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtTitle">Email</label>
								      	<input type="text"  disabled value="{!! old('txtEmail', isset($data) ? $data->email : null) !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtPhone">Điện thoại</label>
								      	<input type="text" disabled value="{!! old('txtPhone', isset($data) ? $data->phone : null) !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Địa chỉ</label>
								      	<input type="text"  disabled value="{!! old('txtAddress', isset($data) ? $data->address : null) !!}"  class="form-control" />
									</div>
									<div class="form-group">
										<label for="">Ngày nhận phòng</label>
										<input type="text"  disabled value="{{ isset($data) ? date('d/m/Y', strtotime($data->ngayden)) : '' }}"  class="form-control" />
									</div>
									<div class="form-group">
										<label for="">Ngày trả phòng</label>
										<input type="text"  disabled value="{{ isset($data) ? date('d/m/Y', strtotime($data->ngaydi)) : '' }}"  class="form-control" />
									</div>
									<!-- <div class="form-group">
								      	<label for="content">Nội dung</label>
								      	<textarea  rows="5" disabled class="form-control">{!! old('txtContent', isset($data) ? $data->content : null) !!}</textarea>
									</div> -->

								</div>
								<div class="col-md-6 col-xs-12">
									<div class="form-group">
										<label for="">Số người lớn</label>
										<input type="text"  disabled value="{{ isset($data) ? $data->numb_adults : '' }}"  class="form-control" />
									</div>
									<div class="form-group">
										<label for="">Số trẻ em</label>
										<input type="text"  disabled value="{{ isset($data) ? $data->numb_child : '' }}"  class="form-control" />
									</div>
									<div class="form-group">
										<label for="">Số phòng</label>
										<input type="text"  disabled value="{{ isset($data) ? $data->numb_room : '' }}"  class="form-control" />
									</div>
									<div class="form-group">
										<label for="">Ghi chú</label>
										<div class="">
											<textarea name="" id="" disabled cols="100" rows="5">{{$data->content}}</textarea>
										</div>
									</div>
									
									<div class="form-group">
								      	<label for="ten">Tình trạng đơn hàng</label>
								      	<select name="status" class="form-control">
								      		<option value="0" {{ isset($data) && $data->status == 0 ? 'selected=""' : '' }}>Mới đặt</option>
                							<option value="1" {{ isset($data) && $data->status == 1 ? 'selected=""' : '' }}>Xác nhận</option>
                							<option value="2" {{ isset($data) && $data->status == 2 ? 'selected=""' : '' }}>Đã giao phòng</option>
                							<option value="3" {{ isset($data) && $data->status == 3 ? 'selected=""' : '' }}>Đã thanh toán</option>
                							<option value="4" {{ isset($data) && $data->status == 4 ? 'selected=""' : '' }}>Hủy</option>
								      	</select>
									</div>
									

								</div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                  	<div class="tab-pane" id="tab_2">
	                  		<div class="box-body">
					          <table id="example2" class="table table-bordered table-hover">
					            <thead>
					              <tr>
					                <!-- <th style="width: 20px;"><input type="checkbox" name="chonhet" class="minimal" id="chonhet" /></th> -->
					                <th class="text-center with_dieuhuong">Stt</th>
					                <th>Số phòng</th>
					                <th>Số lượng</th>
					              </tr>
					            </thead>
					            <tbody>
					            
					            </tbody>
					          </table>
					        </div><!-- /.box-body -->
					        
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                </div><!-- /.tab-content -->
	            </div>
			    <div class="clearfix"></div>
			    <div class="box-footer col-md-12 row">
					<div class="col-md-6">
				    	<button type="submit" class="btn btn-primary">Cập nhật</button>
				    	<button type="button" onclick="javascript:window.location='backend/contact'" class="btn btn-danger">Thoát</button>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /box -->
    
</section><!-- /.content -->
@endsection()
