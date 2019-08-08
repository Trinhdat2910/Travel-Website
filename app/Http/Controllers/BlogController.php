<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\blog;

class BlogController extends Controller
{
    
     public function getDSBlog(){
     	$blog= blog::where('TrangThai', 1)->get();
    	return view('admin.qlBlog.danhsachBlog',[ 'blog'=>$blog]);
    }
    public function getDSBlogHide(){
     	$blog= blog::where('TrangThai', 0)->get();
    	return view('admin.qlBlog.danhsachBlog',[ 'blog'=>$blog]);
    }
    public function getAddBlog(){
    	return view('admin.qlBlog.themBlog');
    }
    public function postAddBlog(Request $request){

    	$blog = new blog;
        $blog -> TomTat= $request -> TomTat;
        $blog -> TieuDe= $request -> TieuDe;
        $blog -> MaNV= $request -> MaNV;
        $blog -> NoiDung= $request -> NoiDung;
        $blog -> NgayPost= date(now());

        
        if($request -> hasFile('HinhAnh'))
        {
            $file = $request->file('HinhAnh');

            $name = $file -> getClientOriginalName();

            $Hinh = str_random(4)."_".$name;
            while(file_exists('upload/blog'.$Hinh))
            {
                $Hinh = str_random(4)."_".$name;
            }
            $file->move("upload/blog", $Hinh);
            $blog -> HinhAnh= $Hinh;
        }
        else
        {
            $blog -> HinhAnh="";
        }

       $blog -> save();

        return redirect()->back() -> with('thongbao', 'Thêm Thành Công');
    	
    }
    public function postXoaBlog(Request $request, $MaBlog){
    	$blog= blog::find($MaBlog);
    	
       	$blog -> delete();

        return redirect()->back() -> with('thongbao', 'Xóa Thành Công');
    	
    }
    public function postshowBlog(Request $request, $MaBlog){
    	$blog= blog::find($MaBlog);
    	$blog -> TrangThai =1;
       	$blog -> save();

        return redirect()->back() -> with('thongbao', 'Xóa Thành Công');
    	
    }
    public function posthideBlog(Request $request, $MaBlog){
    	$blog= blog::find($MaBlog);
    	$blog -> TrangThai =0;
       	$blog -> save();

        return redirect()->back() -> with('thongbao', 'Xóa Thành Công');
    	
    }
    public function getEditBlog($MaBlog){
    	$blog= blog::find($MaBlog);
    	return view('admin.qlBlog.suaBlog', [ 'blog'=>$blog]);
    }
    public function getchitietBlog($MaBlog){
    	$blog= blog::find($MaBlog);
    	return view('admin.qlBlog.chitietBlog', [ 'blog'=>$blog]);
    }
    public function postEditBlog(Request $request, $MaBlog){

    	$blog= blog::find($MaBlog);
    	if ($request-> HinhAnh== "") {

	        $blog -> TomTat= $request -> TomTat;
	        $blog -> TieuDe= $request -> TieuDe;
	        $blog -> MaNV= $request -> MaNV;
	        $blog -> NoiDung= $request -> NoiDung;
	        $blog -> NgayPost= date(now());
	        $blog -> save();
    	}else{



        $blog -> TomTat= $request -> TomTat;
        $blog -> TieuDe= $request -> TieuDe;
        $blog -> MaNV= $request -> MaNV;
        $blog -> NoiDung= $request -> NoiDung;
        $blog -> NgayPost= date(now());
        $blog -> save();
        
        if($request -> hasFile('HinhAnh'))
        {
            $file = $request->file('HinhAnh');

            $name = $file -> getClientOriginalName();

            $Hinh = str_random(4)."_".$name;
            while(file_exists('upload/blog'.$Hinh))
            {
                $Hinh = str_random(4)."_".$name;
            }
            $file->move("upload/blog", $Hinh);
            $blog -> HinhAnh= $Hinh;
        }
        else
        {
            $blog -> HinhAnh="";
        }

       $blog -> save();
   			}

        return redirect()->back() -> with('thongbao', 'Sửa Thành Công');
    	
    }
}
