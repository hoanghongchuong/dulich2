<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CateGallery;
use File;
class CateGalleryController extends Controller
{
    public function getList(){
    	$data = CateGallery::all();
    	return view('admin.categallery.index', compact('data'));
    }
    public function getAdd(){

    	return view('admin.categallery.create');
    }
    public function postAdd(Request $request){
    	$img = $request->file('fImages');
        $path_img='upload/banner';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
    	$data = new CateGallery;
    	$data->name = $request->txtName;
    	 if($request->txtAlias){
            $data->alias = $request->txtAlias;
        }else{
            $data->alias = changeTitle($request->txtName);
        }
    	$data->photo = $img_name;
    	$data->save();
    	return redirect()->route('admin.categallery.index')->with('status','Thêm thành công');
    }
    public function getEdit($id){
    	$data = CateGallery::where('id', $id)->first();
    	return view('admin.categallery.edit', compact('data'));
    }
    public function update(Request $request, $id){
    	$data = CateGallery::find($id);
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
    	$data->name = $request->txtName;
    	 if($request->txtAlias){
            $data->alias = $request->txtAlias;
        }else{
            $data->alias = changeTitle($request->txtName);
        }
        $data->save();
        return redirect('backend/categallery/edit/'.$id)->with('status','Cập nhật thành công');

    }
    public function delete($id){
    	$data = CateGallery::find($id);
    	$data->delete();
    	return redirect()->back()->with('status','Xóa thành công');
    }
}
