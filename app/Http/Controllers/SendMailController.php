<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Requests;
use Mail;
use App\khachhang;

class SendMailController extends Controller
{
    public function postYCThanhToanHD( Request $request){
    	$data = ['hoten'=> $request -> TenKH,
    			'MaTour'=> $request -> MaTour,
    			'TenTour'=> $request -> TenTour,
    			'NgayKH'=> $request -> NgayKH,
    			'NgayKT'=> $request -> NgayKT,
    			'MaHD'=> $request -> MaHD,
    			'TongTien'=> $request -> Tongtien,
    			'DaTT'=> $request -> DaTT,
    			'PhaiTT'=> $request -> PhaiTT,
    	 ];
    	 $kh= $request -> email;
    	 $ten=$request -> TenKH;
    	 $tieude=$request -> TieuDe;
    	 
    	Mail::send('email.emailYCTTHD', $data, function($message) use ($kh, $tieude, $ten) {
    		$message->from('trinhvandat1998@gmail.com','Trịnh Văn Đạt');
    		$message->to( $kh , $ten )->subject($tieude);
    	});
    	
    	return redirect()->back()->with('thongbao', 'Gửi Yêu Cầu Thanh Toán Thành Công');
    }
    public function postMailYCDT( Request $request){
        $data = [
                'NoiDung'=> $request -> NoiDung,
                'DoiTac'=>$request -> TenDT,
                
         ];
         $kh= $request -> email;
         $ten=$request -> TenDT;
         $tieude=$request -> TieuDe;
         
        Mail::send('email.emailYCDT', $data, function($message) use ($kh, $tieude, $ten) {
            $message->from('trinhvandat1998@gmail.com','Trịnh Văn Đạt');
            $message->to( $kh , $ten )->subject($tieude);
        });
        
        return redirect()->back()->with('thongbao1', 'Gửi Yêu Cầu Dịch  Vụ Thành Công');
    }
}
