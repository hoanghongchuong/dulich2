<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', ['as'=>'index', 'uses'=>'IndexController@index']);
Route::get('gioi-thieu',['as'=>'getAbout', 'uses'=>'IndexController@getAbout']);

Route::get('lien-he',['as'=>'getContact', 'uses'=>'ContactController@getContact']);
Route::post('lien-he',['as'=>'postContact', 'uses'=>'ContactController@postContact']);

Route::get('tin-tuc',['as'=>'getNews', 'uses'=>'IndexController@getNews']);
Route::get('tin-tuc/{id}.html',['as'=>'getNewsDetail', 'uses'=>'IndexController@getNewsDetail']);
Route::get('tuyen-dung',['as'=>'getNews', 'uses'=>'IndexController@getTuyenDung']);
Route::get('tuyen-dung/{id}.html',['as'=>'getNewsDetail', 'uses'=>'IndexController@getNewsTuyenDungDetail']);
Route::get('gallery','IndexController@gallary')->name('gethinhanh');
Route::get('gallery/{alias}','IndexController@gallaryDetail')->name('galleryDetail');

Route::get('tim-kiem',['as'=>'search', 'uses'=>'IndexController@search']);
Route::post('newsletter',['as'=>'postNewsletter', 'uses'=>'IndexController@postNewsletter']);
Route::get('tour',['as'=>'getProduct', 'uses'=>'IndexController@getProduct']);
Route::get('tour/{alias}.html','IndexController@getProductDetail')->name('detailProduct');
Route::get('tour/{id}',['as'=>'getProductList', 'uses'=>'IndexController@getProductList']);
Route::get('thanh-toan',['as'=>'thanhtoan', 'uses' => 'IndexController@thanhtoan']);
Route::get('danh-muc/{alias}',['as'=>'getProductChild', 'uses'=>'IndexController@getProductChild']);

Route::get('thuong-hieu/{alias}','IndexController@getProductByThuongHieu');

Route::get('ajax/province/{id}',['as'=>'loadDistrictByProvince', 'uses'=>'IndexController@loadDistrictByProvince']);
Route::get('sap-xep','IndexController@SapXep')->name('sapxep');

// dang ky, dang nhap
Route::get('signup','SignupController@signup');
Route::post('signup', 'SignupController@postSignup')->name('postSignup');
Route::get('login','LoginController@getLogin')->name('getLogin');
Route::post('login','LoginController@postLogin')->name('postLogin');
Route::get('logout','LoginController@logout');
// gio hang
Route::get('gio-hang',['as'=>'getCart', 'uses'=>'IndexController@getCart']);
Route::post('cart/add', ['as' => 'addProductToCart', 'uses' => 'IndexController@addCart']);
Route::post('cart/update',['as' => 'updateCart', 'uses' => 'IndexController@updateCart']);
// Route::get('updatecart/{id}/{qty}',['as'=>'updatecart','uses'=>'IndexController@updatecart']);
Route::get('xoa-gio-hang/{id}','IndexController@deleteCart');
Route::post('gui-don-hang', ['as' =>'postOrder', 'uses'=> 'IndexController@postOrder']);
Route::get('xoa-all','IndexController@deleteAllCart')->name('deleteCart');

Route::get('dich-vu',['as'=>'getDichvu', 'uses'=>'IndexController@getDichvu']);

Route::post('card/check',['as'=>'checkCard', 'uses'=>'IndexController@checkCard']);

Route::get('dich-vu/{id}',['as'=>'getDichVuList', 'uses'=>'IndexController@getDichVuList']);
Route::get('chi-tiet-dich-vu/{id}.html',['as'=>'getDichVuDetail', 'uses'=>'IndexController@getDichVuDetail']);

Route::get('tuyen-dung','IndexController@getTuyenDung')->name('getTuyenDung');
Route::post('tuyen-dung',['as'=>'postTuyenDung', 'uses'=>'IndexController@postTuyenDung']);
// Route::get('thu-vien-anh',['as'=>'getThuvienanh', 'uses'=>'IndexController@getThuvienanh']);
// Route::get('hoi-vien',['as'=>'getHoivien', 'uses'=>'IndexController@getHoivien']);
Route::get('{id}.html',['as'=>'getProductDetail', 'uses'=>'IndexController@getProductDetail']);
Route::get('bai-viet/{id}.html',['as'=>'getBaiVietDetail', 'uses'=>'IndexController@getBaiVietDetail']);
Route::get('error/404.html',['as'=>'getErrorNotFount', 'uses'=>'IndexController@getErrorNotFount']);
// Route::controllers([
// 	'auth' => 'Auth\AuthController',
// 	'password' => 'Auth\PasswordController',
// ]);

Route::get('backend/login',['as'=>'admin.auth.getLogin', 'uses'=>'AdminAuth\AuthController@getLogin']);
Route::post('backend/postlogin',['as'=>'admin.auth.postLogin', 'uses'=>'AdminAuth\AuthController@postLogin']);

Route::group(['middleware' =>'authen', 'prefix' => 'backend'], function(){
	Route::get('/',['as'=>'admin.index', 'uses'=>'Admin\IndexController@getIndex']);
	Route::get('register',['as'=>'getRegister', 'uses'=>'AdminAuth\AuthController@getRegister']);
	Route::post('postregister',['as'=>'postRegister', 'uses'=>'AdminAuth\AuthController@postRegister']);
	Route::get('logout', ['as' => 'admin.auth.logout', 'uses' => 'AdminAuth\AuthController@logout']);
	Route::get('setting',['as'=>'admin.setting.index','uses'=>'Admin\SettingController@index']);
	Route::post('setting/update',['as'=>'admin.setting.update','uses'=>'Admin\SettingController@update']);
	
	Route::post('contact/access',['as'=>'admin.contact.access','uses'=>'Admin\ContactController@xuly']);
	Route::post('recruitment/access',['as'=>'admin.recruitment.access','uses'=>'Admin\RecruitmentController@accessRe']);

	Route::group(['prefix' => 'users'], function(){
		Route::get('info',['as'=>'admin.users.getAdmin','uses'=>'Admin\UsersController@getAdmin']);
		Route::post('updateinfo',['as'=>'admin.users.updateinfo','uses'=>'Admin\UsersController@updateinfo']);
	});

	// Chương trình khuyến mại, giảm giá
	Route::group(['prefix' => 'campaign'], function(){
		Route::get('/', ['as' => 'campaignIndex', 'uses' => 'Admin\CampaignController@index']);
		Route::any('/create/{id?}', ['as' => 'campaignCreate', 'uses' => 'Admin\CampaignController@create']);
		Route::get('/delete/{id}', ['as' => 'campaignDelete', 'uses' => 'Admin\CampaignController@delete']);
	});
	Route::group(['prefix' => 'campaign/card'], function(){
		Route::get('/', ['as' => 'campaignCardIndex', 'uses' => 'Admin\CampaignController@getCard']);
		Route::get('delete_list/{id}',['as'=>'deleteListCode','uses'=>'Admin\CampaignController@getDeleteList']);
	});


	Route::group(['prefix' => 'productcate'], function(){
		Route::get('/',['as'=>'admin.productcate.index','uses'=>'Admin\ProductCateController@getDanhSach']);
		Route::get('add',['as'=>'admin.productcate.getAdd','uses'=>'Admin\ProductCateController@getAdd']);
		Route::post('postAdd',['as'=>'admin.productcate.postAdd','uses'=>'Admin\ProductCateController@postAdd']);

		Route::get('edit',['as'=>'admin.productcate.getEdit','uses'=>'Admin\ProductCateController@getEdit']);

		Route::post('edit',['as'=>'admin.productcate.update','uses'=>'Admin\ProductCateController@update']);

		Route::get('{id}/delete',['as'=>'admin.productcate.getDelete','uses'=>'Admin\ProductCateController@getDelete']);
		Route::get('{id}/delete_list',['as'=>'admin.productcate.getDeleteList','uses'=>'Admin\ProductCateController@getDeleteList']);
	});
	Route::group(['prefix' => 'product'], function(){
		Route::get('/',['as'=>'admin.product.index','uses'=>'Admin\ProductController@getList']);
		Route::get('add',['as'=>'admin.product.getAdd','uses'=>'Admin\ProductController@getAdd']);
		Route::post('postAdd',['as'=>'admin.product.postAdd','uses'=>'Admin\ProductController@postAdd']);
		Route::get('delimg/{id}',['as'=>'admin.product.getDelImg','uses'=>'Admin\ProductController@getDelImg']);

		Route::get('edit',['as'=>'admin.product.getEdit','uses'=>'Admin\ProductController@getEdit']);
		Route::post('edit',['as'=>'admin.product.update','uses'=>'Admin\ProductController@update']);

		Route::get('{id}/delete',['as'=>'admin.product.getDelete','uses'=>'Admin\ProductController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.product.getDeleteList','uses'=>'Admin\ProductController@getDeleteList']);
		Route::get('{id}/addAlbum',['as'=>'admin.product.addAlbum','uses'=>'Admin\ProductController@addAlbum']);
		Route::get('dropzoneStore',['as'=>'admin.product.dropzoneStore','uses'=>'Admin\ProductController@dropzoneStore']);
		Route::get('upload',['as'=>'admin.product.upload','uses'=>'Admin\ProductController@post_upload']);
	});


	Route::group(['prefix' => 'thuonghieu'], function(){
		Route::get('/',['as'=>'admin.thuonghieu.index','uses'=>'Admin\ThuongHieuController@index']);
		Route::get('create',['as'=>'admin.thuonghieu.getCreate','uses'=>'Admin\ThuongHieuController@getCreate']);
		Route::post('create',['as'=>'admin.thuonghieu.postCreate','uses'=>'Admin\ThuongHieuController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.thuonghieu.edit','uses'=>'Admin\ThuongHieuController@getEdit']);

		Route::post('edit/{id}',['as'=>'admin.thuonghieu.postEdit','uses'=>'Admin\ThuongHieuController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.thuonghieu.delete','uses'=>'Admin\ThuongHieuController@delete']);
		// Route::get('{id}/delete_list',['as'=>'admin.thuonghieu.getDeleteList','uses'=>'Admin\ProductCateController@getDeleteList']);
	});
	// Route::group(['prefix' => 'orders'], function(){
	// 	Route::get('/',['as'=>'admin.order.index','uses'=>'Admin\OrderController@getList']);
	// 	Route::get('add',['as'=>'admin.orders.getAdd','uses'=>'Admin\OrdersController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.orders.postAdd','uses'=>'Admin\OrdersController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.orders.getEdit','uses'=>'Admin\OrdersController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.orders.update','uses'=>'Admin\OrdersController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.orders.getDelete','uses'=>'Admin\OrdersController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.orders.getDeleteList','uses'=>'Admin\OrdersController@getDeleteList']);
	// });
	
		Route::group(['prefix' => 'orders'], function(){
		Route::get('/',['as'=>'admin.bill.index','uses'=>'Admin\BillController@getList']);
		// Route::get('add',['as'=>'admin.obill.getAdd','uses'=>'Admin\BillController@getAdd']);
		// Route::post('postAdd',['as'=>'admin.obill.postAdd','uses'=>'Admin\OBillController@postAdd']);
		
		Route::get('edit/{id}',['as'=>'admin.bill.getEdit','uses'=>'Admin\BillController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.bill.update','uses'=>'Admin\BillController@update']);

		Route::get('delete/{id}',['as'=>'admin.bill.getDelete','uses'=>'Admin\BillController@getDelete']);
		// Route::get('{id}/delete_list',['as'=>'admin.obill.getDeleteList','uses'=>'Admin\OBillController@getDeleteList']);
	});

	Route::group(['prefix' => 'newscate'], function(){
		Route::get('/',['as'=>'admin.newscate.index','uses'=>'Admin\NewsCateController@getDanhSach']);
		Route::get('add',['as'=>'admin.newscate.getAdd','uses'=>'Admin\NewsCateController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newscate.postAdd','uses'=>'Admin\NewsCateController@postAdd']);

		Route::get('edit',['as'=>'admin.newscate.getEdit','uses'=>'Admin\NewsCateController@getEdit']);

		Route::post('edit',['as'=>'admin.newscate.update','uses'=>'Admin\NewsCateController@update']);

		Route::get('{id}/delete',['as'=>'admin.newscate.getDelete','uses'=>'Admin\NewsCateController@getDelete']);
		Route::get('{id}/delete_list',['as'=>'admin.newscate.getDeleteList','uses'=>'Admin\NewsCateController@getDeleteList']);
	});
	// Route::group(['prefix' => 'menu'], function(){
	// 	Route::get('/',['as'=>'admin.menu.index','uses'=>'Admin\MenuController@getDanhSach']);
	// 	Route::get('add',['as'=>'admin.menu.getAdd','uses'=>'Admin\MenuController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.menu.postAdd','uses'=>'Admin\MenuController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.menu.getEdit','uses'=>'Admin\MenuController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.menu.update','uses'=>'Admin\MenuController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.menu.getDelete','uses'=>'Admin\MenuController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.menu.getDeleteList','uses'=>'Admin\MenuController@getDeleteList']);
	// });

	Route::group(['prefix'=>'position'], function(){
		Route::get('/',['as'=>'admin.position.index','uses'=>'Admin\PositionController@getList']);
		Route::get('add',['as'=>'admin.position.getAdd','uses'=>'Admin\PositionController@getAdd']);
		Route::post('add',['as'=>'admin.position.postAdd','uses'=>'Admin\PositionController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.position.getEdit','uses'=>'Admin\PositionController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.position.update','uses'=>'Admin\PositionController@update']);

		Route::get('delete/{id}',['as'=>'admin.position.getDelete','uses'=>'Admin\PositionController@getDelete']);
		
		Route::get('deleteList/{id}',['as'=>'admin.position.getDeleteList','uses'=>'Admin\PositionController@getDeleteList']);

	});

	Route::group(['prefix'=>'banner'], function(){
		Route::get('/',['as'=>'admin.banner.index','uses'=>'Admin\BannerController@getList']);
		Route::get('add',['as'=>'admin.banner.getAdd','uses'=>'Admin\BannerController@getAdd']);
		Route::post('add',['as'=>'admin.banner.postAdd','uses'=>'Admin\BannerController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.banner.getEdit','uses'=>'Admin\BannerController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.banner.update','uses'=>'Admin\BannerController@update']);

		Route::get('delete/{id}',['as'=>'admin.banner.getDelete','uses'=>'Admin\BannerController@getDelete']);
		Route::get('deleteList/{id}',['as'=>'admin.banner.getDeleteList','uses'=>'Admin\BannerController@getDeleteList']);
	});

	Route::group(['prefix'=>'categallery'], function(){
		Route::get('/',['as'=>'admin.categallery.index','uses'=>'Admin\CateGalleryController@getList']);
		Route::get('add',['as'=>'admin.categallery.getAdd','uses'=>'Admin\CateGalleryController@getAdd']);
		Route::post('add',['as'=>'admin.categallery.postAdd','uses'=>'Admin\CateGalleryController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.categallery.getEdit','uses'=>'Admin\CateGalleryController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.categallery.update','uses'=>'Admin\CateGalleryController@update']);

		Route::get('delete/{id}',['as'=>'admin.categallery.getDelete','uses'=>'Admin\CateGalleryController@delete']);
		
		Route::get('deleteList/{id}',['as'=>'admin.categallery.getDeleteList','uses'=>'Admin\CateGalleryController@getDeleteList']);

	});

	Route::group(['prefix'=>'gallery'], function(){
		Route::get('/',['as'=>'admin.gallery.index','uses'=>'Admin\GalleryController@getList']);
		Route::get('add',['as'=>'admin.gallery.getAdd','uses'=>'Admin\GalleryController@getAdd']);
		Route::post('add',['as'=>'admin.gallery.postAdd','uses'=>'Admin\GalleryController@postAdd']);

		Route::get('edit/{id}',['as'=>'admin.gallery.getEdit','uses'=>'Admin\GalleryController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.gallery.update','uses'=>'Admin\GalleryController@update']);

		Route::get('delete/{id}',['as'=>'admin.gallery.getDelete','uses'=>'Admin\GalleryController@delete']);
		
	});

	Route::group(['prefix' => 'news'], function(){
		Route::get('/',['as'=>'admin.news.index','uses'=>'Admin\NewsController@getList']);
		Route::get('add',['as'=>'admin.news.getAdd','uses'=>'Admin\NewsController@getAdd']);
		Route::post('postAdd',['as'=>'admin.news.postAdd','uses'=>'Admin\NewsController@postAdd']);


		Route::get('edit',['as'=>'admin.news.getEdit','uses'=>'Admin\NewsController@getEdit']);
		Route::post('edit',['as'=>'admin.news.update','uses'=>'Admin\NewsController@update']);

		Route::get('{id}/delete',['as'=>'admin.news.getDelete','uses'=>'Admin\NewsController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.news.getDeleteList','uses'=>'Admin\NewsController@getDeleteList']);
	});
	Route::group(['prefix' => 'about'], function(){
		Route::get('/','Admin\AboutController@getList')->name('admin.about.getList');
		Route::get('add','Admin\AboutController@getAdd')->name('admin.about.getAdd');
		Route::post('add',['as'=>'admin.about.postAdd','uses'=>'Admin\AboutController@postAdd']);

		Route::get('edit/{$id}',['as'=>'admin.about.getEdit','uses'=>'Admin\AboutController@getEdit']);
		Route::post('edit/{$id}',['as'=>'admin.about.update','uses'=>'Admin\AboutController@update']);

		Route::get('delete/{id}',['as'=>'admin.about.getDelete','uses'=>'Admin\AboutController@getDelete']);
	});
	Route::group(['prefix' => 'lienket'], function(){
		Route::get('/',['as'=>'admin.lienket.index','uses'=>'Admin\LienKetController@getList']);
		Route::get('add',['as'=>'admin.lienket.getAdd','uses'=>'Admin\LienKetController@getAdd']);
		Route::post('postAdd',['as'=>'admin.lienket.postAdd','uses'=>'Admin\LienKetController@postAdd']);


		Route::get('edit',['as'=>'admin.lienket.getEdit','uses'=>'Admin\LienKetController@getEdit']);
		Route::post('edit',['as'=>'admin.lienket.update','uses'=>'Admin\LienKetController@update']);

		Route::get('{id}/delete',['as'=>'admin.lienket.getDelete','uses'=>'Admin\LienKetController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.lienket.getDeleteList','uses'=>'Admin\LienKetController@getDeleteList']);
	});
	Route::group(['prefix' => 'contact'], function(){
		Route::get('/','Admin\ContactController@getContact')->name('admin.contact.index');
		Route::get('edit/{id}',['as'=>'admin.contact.getEdit','uses'=>'Admin\ContactController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.contact.update','uses'=>'Admin\ContactController@update']);
		Route::get('delete/{id}','Admin\ContactController@deleteContact')->name('delete.contact');
	});
	Route::group(['prefix' => 'recruitment'], function(){
		Route::get('/',['as'=>'admin.recruitment.index', 'uses'=>'Admin\RecruitmentController@getRecruitment']);
		Route::get('delete/{id}',['as' => 'admin.delete.recruitment', 'uses'=>'Admin\RecruitmentController@deleteRecruitment']);

	});

	Route::group(['prefix' => 'newsletter'], function(){
		Route::get('/',['as'=>'admin.newsletter.index','uses'=>'Admin\NewsLetterController@getList']);
		Route::get('add',['as'=>'admin.newsletter.getAdd','uses'=>'Admin\NewsLetterController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newsletter.postAdd','uses'=>'Admin\NewsLetterController@postAdd']);
		Route::post('sendmail',['as'=>'admin.newsletter.postNewsLetter','uses'=>'Admin\NewsLetterController@postNewsLetter']);


		Route::get('edit',['as'=>'admin.newsletter.getEdit','uses'=>'Admin\NewsLetterController@getEdit']);
		Route::post('edit',['as'=>'admin.newsletter.update','uses'=>'Admin\NewsLetterController@update']);

		Route::get('{id}/delete',['as'=>'admin.newsletter.getDelete','uses'=>'Admin\NewsLetterController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.newsletter.getDeleteList','uses'=>'Admin\NewsLetterController@getDeleteList']);
	});
	Route::group(['prefix' => 'slider'], function(){
		Route::get('/',['as'=>'admin.slider.index','uses'=>'Admin\SliderController@getList']);
		Route::get('add',['as'=>'admin.slider.getAdd','uses'=>'Admin\SliderController@getAdd']);
		Route::post('postAdd',['as'=>'admin.slider.postAdd','uses'=>'Admin\SliderController@postAdd']);


		Route::get('edit',['as'=>'admin.slider.getEdit','uses'=>'Admin\SliderController@getEdit']);
		Route::post('edit',['as'=>'admin.slider.update','uses'=>'Admin\SliderController@update']);

		Route::get('{id}/delete',['as'=>'admin.slider.getDelete','uses'=>'Admin\SliderController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.slider.getDeleteList','uses'=>'Admin\SliderController@getDeleteList']);
	});

	Route::group(['prefix' => 'province'], function(){
		Route::get('/',['as'=>'admin.province.index', 'uses' => 'Admin\ProvinceController@index']);
		Route::get('add',['as'=>'admin.province.getCreate', 'uses' => 'Admin\ProvinceController@getCreate']);
		Route::post('add',['as'=>'admin.province.postCreate', 'uses' => 'Admin\ProvinceController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.province.getEdit', 'uses' => 'Admin\ProvinceController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.province.postEdit', 'uses' => 'Admin\ProvinceController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.province.delete', 'uses' => 'Admin\ProvinceController@delete']);
	});

	Route::group(['prefix' => 'district'], function(){
		Route::get('/',['as'=>'admin.district.index', 'uses' => 'Admin\DistrictController@index']);
		Route::get('add',['as'=>'admin.district.getCreate', 'uses' => 'Admin\DistrictController@getCreate']);
		Route::post('add',['as'=>'admin.district.postCreate', 'uses' => 'Admin\DistrictController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.district.getEdit', 'uses' => 'Admin\DistrictController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.district.postEdit', 'uses' => 'Admin\DistrictController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.district.delete', 'uses' => 'Admin\DistrictController@delete']);
	});

	Route::group(['prefix'=>'chinhanh'], function(){
		Route::get('/',['as'=>'admin.chinhanh.index','uses'=>'Admin\ChiNhanhController@index']);
		Route::get('create',['as'=>'admin.chinhanh.create','uses'=>'Admin\ChiNhanhController@getCreate']);
		Route::post('create',['as'=>'admin.chinhanh.postCreate','uses'=>'Admin\ChiNhanhController@postCreate']);
		Route::get('edit/{id}',['as'=>'admin.chinhanh.edit', 'uses'=>'Admin\ChiNhanhController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.chinhanh.postEdit', 'uses'=>'Admin\ChiNhanhController@postEdit']);
		Route::get('delete/{id}',['as'=>'admin.chinhanh.delete', 'uses' => 'Admin\ChiNhanhController@delete']);
	});

	Route::group(['prefix'=>'bankaccount'], function(){
		Route::get('/',['as'=>'admin.bank.index', 'uses'=>'Admin\BankAccountController@index']);

		Route::get('create',['as'=>'admin.bank.getCreate', 'uses'=>'Admin\BankAccountController@getCreate']);
		Route::post('create',['as'=>'admin.bank.postCreate', 'uses'=>'Admin\BankAccountController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.bank.getEdit', 'uses'=>'Admin\BankAccountController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.bank.postEdit', 'uses'=>'Admin\BankAccountController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.bank.delete','uses'=>'Admin\BankAccountController@delete']);
	});
	Route::group(['prefix'=>'video'], function(){
		Route::get('/',['as'=>'admin.video.index', 'uses'=>'Admin\VideoController@index']);

		Route::get('create',['as'=>'admin.video.getCreate', 'uses'=>'Admin\VideoController@getCreate']);
		Route::post('create',['as'=>'admin.video.postCreate', 'uses'=>'Admin\VideoController@postCreate']);

		Route::get('edit/{id}',['as'=>'admin.video.getEdit', 'uses'=>'Admin\VideoController@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.video.postEdit', 'uses'=>'Admin\VideoController@postEdit']);

		Route::get('delete/{id}',['as'=>'admin.video.delete','uses'=>'Admin\VideoController@delete']);
	});

	Route::post('uploadImg', ['as'=>'admin.uploadImg' ,'uses'=>'Admin/UploadController@uploadImg']);
	Route::post('dropzone/store', ['as'=>'dropzone.store','uses'=>'Admin/ProductController@dropzoneStore']);

});
Route::get('schema/create-product', function(){
	Schema::create('products', function($table){
		$table->increments('id');
		//$table->integer('cate_id')->unsigned();
		//$table->foreign('cate_id')->references('id')->on('product_categories')->onDelete('cascade');
		$table->integer('cate_id')->unsigned();
		$table->integer('stt')->nullable();
		$table->string('name');
		$table->string('alias');
		$table->text('photo')->nullable();
		$table->integer('price');
		$table->longText('mota')->nullable();
		$table->longText('content')->nullable();
		$table->integer('status');
		$table->longText('keyword')->nullable();
		$table->longText('description')->nullable();
		$table->timestamps();
	});
});