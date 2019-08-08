<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\chitiettour;
use App\hopdong;
use App\thongtinkhach;
use  App\khachhang;

class BookTourController extends Controller
{
    
     public function getBookTour($MaCTTour){
        $chitiettour= chitiettour::find($MaCTTour);
        return view('home.BookTour.Booking',[ 'chitiettour'=>$chitiettour]);
    }
    public function getTourDaDat(){
        
        return view('home.ListTour.TourDaDat');
    }
    public function getUpdateInfo(){
        
        return view('home.BookTour.UpdateInfo');
    }
    public function postDatTour(Request $request, $MaCTTour){
        $hopdong= new hopdong;
        $hopdong -> SLNL = $request -> SLNL;
        $hopdong -> SLTE = $request -> SLTE;
        $hopdong -> SLEB = $request -> SLEB;
        $hopdong -> SoCho = ($request -> SLNL) + ($request -> SLTE) + ($request -> SLEB);
        $hopdong -> HinhThucTT = $request -> paymentType;
        $hopdong -> NgayDat = date(now());
        $hopdong -> MaLoaiTT = $request -> LoaiTT;
        $hopdong -> ThanhTien = $request -> thanhtien;
        $hopdong -> MaKH = $request -> MaKH;
        $hopdong -> MaCTTour = $MaCTTour;
        if($hopdong ->save()){
            $MaHD= $hopdong -> MaHD;
            foreach ($request -> HoTen as $key => $v) {
               $data = array(
                    'MaHD' =>  $MaHD,
                    'HoTen'=>  $request -> HoTen[$key],
                    'NgaySinh' =>  $request -> NgaySinh[$key],
                    'GioiTinh' =>  $request -> GioiTinh[$key],
                    'DiaChi' =>  $request -> Address[$key],
                    'Tel' =>  $request -> Tel[$key],
                    'Passport' =>  $request -> Passport[$key],

                ); 
               thongtinkhach::insert($data);

            }
            return redirect('home/BookTour/TourDaDat')->with('thongbao', 'Đặt Tour Thành Công');
        }

    }
    public function postUpdateInfo(Request $request, $MaKH){
        $khachhang= khachhang::find($MaKH);
        $khachhang -> TenKH= $request -> TenKH;
        $khachhang -> Email= $request -> Email;
        $khachhang -> Tel= $request -> Tel;
        $khachhang -> DiaChi= $request -> DiaChi;
        $khachhang-> save();
        return redirect()->back()->with('thongbao', 'Update Thành Công');
    }
     public function postSuaTTK(Request $request , $MaKhach){
            $thongtinkhach = thongtinkhach::find($MaKhach);
            $thongtinkhach -> HoTen= $request -> HoTen;
            $thongtinkhach -> NgaySinh= $request -> NgaySinh;
            $thongtinkhach -> GioiTinh= $request -> GioiTinh;
            $thongtinkhach -> DiaChi= $request -> DiaChi;
            $thongtinkhach -> Tel= $request -> Tel;
            $thongtinkhach -> Passport= $request -> Passport;
            $thongtinkhach -> save();
            
            return redirect()->back()->with('thongbao', 'Bạn đã update Thành Công');
            
            

    }
}
