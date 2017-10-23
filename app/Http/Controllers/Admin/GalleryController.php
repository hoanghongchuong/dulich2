<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Gallery;
use App\CateGallery;
use File;
class GalleryController extends Controller
{
     public function getList(){
    	$data = Gallery::all();
    	return view('admin.gallery.index', compact('data'));
    }
    public function getAdd(){

    	return view('admin.gallery.create');
    }
    public function postAdd(Request $request){
    	$img = $request->file('fImages');
        $path_img='upload/banner';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
    	$data = new Gallery;
    	// $data->name = $request->txtName;
    	$data->cate_id = $request->cateGallery;
    	$data->photo = $img_name;
    	$data->save();
    	return redirect()->route('admin.gallery.index')->with('status','Thêm thành công');
    }
    public function getEdit($id){
    	$data = Gallery::where('id', $id)->first();
    	$cate = CateGallery::all();
    	return view('admin.gallery.edit', compact('data','cate'));
    }
    public function update(Request $request, $id){
    	$data = Gallery::find($id);
    	$img = $request->file('fImages');
        $img_current = 'upload/banner/'.$request->img_current;
        // dd($img_current);
        if(!empty($img)){
            $path_img='upload/banner';
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
            $data->photo = $img_name;
            if (File::exists($img_current)) {
                File::delete($img_current);
            }
        }
    	$data->cate_id = $request->cateGallery;
    	
        $data->save();
        return redirect('backend/gallery/edit/'.$id)->with('status','Cập nhật thành công');

    }
    public function delete($id){
    	$data = Gallery::find($id);
    	$data->delete();
    	return redirect()->back()->with('status','Xóa thành công');
    }
}
