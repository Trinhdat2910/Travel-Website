<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tour;
use App\blog;
use App\chitietnhomtour;

class ListTourController extends Controller
{
    
    public function getTourMB(){
    	    	
    	return view('home.ListTour.TourMienBac');
    }
    public function getTourMT(){
    	    	
    	return view('home.ListTour.TourMienTrung');
    }
    public function getTourMN(){
    	    	
    	return view('home.ListTour.TourMienNam');
    }
    
    public function getTourDaDat(){
    	    	
    	return view('home.ListTour.TourDaDat');
    }
    public function getListBlog(){
                
        return view('home.ListTour.ListBlog');
    }
    public function getDetailBlog($MaBlog){
            $blog= blog::find($MaBlog);
        return view('home.ListTour.DetailBlog',['blog'=>$blog]);
    }
    public function getDetailTour($id){
    	$tour= tour::find($id);
    	return view('home.ListTour.DetailTour',['tour'=>$tour]);
    }
    public function getNhomTour($id){
        $chitietnhomtour= chitietnhomtour::where('MaNhomTour', $id)->limit(1)->get();
        return view('home.ListTour.NhomTour',['chitietnhomtour'=>$chitietnhomtour]);
    }
    public function Search(Request $request){
        $tour= tour::where('TinhTrang',1) -> where('TieuDe','like','%'.$request -> DiemDen.'%')-> orwhere('TenTour','like','%'.$request -> DiemDen.'%')->where('DiemKhoiHanh','like','%'.$request -> DiemKH.'%') ->get();
        return view('home.ListTour.SearchTour',['tour'=>$tour]);
    }
}
