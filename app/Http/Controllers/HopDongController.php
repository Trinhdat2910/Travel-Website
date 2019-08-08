<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Requests;
use App\ tour;
use App\chitiettour;
use App\chitietdichvu;
use App\diadiemdulich;
use App\thongtinkhach;
use App\loaitour;
use App\doitac;
use App\loaidoitac;
use App\hopdong;
use App\hopdongdichvu;
use App\dichvutour;
use App\thuchi;

class HopDongController extends Controller
{
    public function getDanhSachHD(){
    	$hopdong = hopdong::all();
    	return view('admin.qlHD.danhsach',['hopdong'=>$hopdong]);
    }
    public function getdsChuaXN(){
        $hopdong = hopdong::where('TrangThai',0)->get();
        return view('admin.qlHD.danhsach',['hopdong'=>$hopdong]);
    }
    public function getdsDaXN(){
        $hopdong = hopdong::where('TrangThai',1)->get();
        return view('admin.qlHD.danhsach',['hopdong'=>$hopdong]);
    }
    public function getdsDaHuy(){
        $hopdong = hopdong::where('TrangThai',2)->orwhere('TrangThai',3)->get();
        return view('admin.qlHD.danhsach',['hopdong'=>$hopdong]);
    }
    public function getListHDTour($MaCTTour){
        $hopdong = hopdong::where('MaCTTour',$MaCTTour)->get();
        $hopdong1 = hopdong::where('MaCTTour',$MaCTTour)->first();
        return view('admin.qlHD.ListHDTour',['hopdong'=>$hopdong], ['hopdong1'=>$hopdong1]);
    }
    
    public function getXuLyHD($MaHD){
    	$hopdong = hopdong::find($MaHD);
    	return view('admin.qlHD.XuLyHD',['hopdong'=>$hopdong]);
    }
    public function postXuLyHD(Request $request, $MaHD){
        if($request-> MaDVCB != null){
    	foreach ($request-> MaDVCB as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVCB[$key],
                    'SLNL'=> $request -> SLKCB[$key],
                    'Gia'=> $request -> GiaCB[$key],
                    'ThanhTien'=> $request -> TotalCB[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    		hopdongdichvu::insert($data);
    		

    	}
    }
        if($request-> MaDVHT != null){
    	foreach ($request-> MaDVHT as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVHT[$key],
                    'SLNL'=> $request -> SLKHT[$key],
                    'Gia'=> $request -> GiaHT[$key],
                    'ThanhTien'=> $request -> TotalHT[$key],
                    'NgayDK' => date(now()),
                   
                ); 
    		hopdongdichvu::insert($data);
    		
              
              	
        }
              

    	}
        if($request-> MaDVRT != null){
    	foreach ($request-> MaDVRT as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVRT[$key],
                    'SLNL'=> $request -> SLNLRT[$key],
                    'Gia'=> $request -> GiaRT[$key],
                    'SLTE'=> $request -> SLTERT[$key],
                    'GiaTE'=> $request -> GiaTERT[$key],
                    'ThanhTien'=> $request -> TotalRT[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    		hopdongdichvu::insert($data);
    		

              }

    	}
        if($request-> MaDVST != null){
    	foreach ($request-> MaDVST as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVST[$key],
                    'SLNL'=> $request -> SLNLST[$key],
                    'Gia'=> $request -> GiaST[$key],
                    'SLTE'=> $request -> SLTEST[$key],
                    'GiaTE'=> $request -> GiaTEST[$key],
                    'ThanhTien'=> $request -> TotalST[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    	hopdongdichvu::insert($data);
              	
        }
              

    	}
    	return  redirect('admin/qlHD/danhsachHD/')->with('thongbao', 'Đăng Kí Dịch Vụ Thành Công');
    }
    public function getUpdateDVHD($MaHD){
    	$hopdong = hopdong::find($MaHD);
    	return view('admin.qlHD.UpdateDVHD',['hopdong'=>$hopdong]);
    }

    public function postUpdateDVHD(Request $request, $MaHD){
        if($request-> MaDVCB != null){
    	foreach ($request-> MaDVCB as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVCB[$key],
                    'SLNL'=> $request -> SLKCB[$key],
                    'Gia'=> $request -> GiaCB[$key],
                    'ThanhTien'=> $request -> TotalCB[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    		hopdongdichvu::where('MaDVTour',$request-> MaDVCB[$key])->where('MaHD', $MaHD)->update($data);
    		
              
              
              	}

              

    	}
        if($request-> MaDVHT != null){
    	foreach ($request-> MaDVHT as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVHT[$key],
                    'SLNL'=> $request -> SLKHT[$key],
                    'Gia'=> $request -> GiaHT[$key],
                    'ThanhTien'=> $request -> TotalHT[$key],
                    'NgayDK' => date(now()),
                  
                ); 
    		hopdongdichvu::where('MaDVTour',$request-> MaDVHT[$key])->where('MaHD', $MaHD)->update($data);
    		
              
              }
              	
        
              

    	}
        if($request-> MaDVRT != null){
    	foreach ($request-> MaDVRT as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVRT[$key],
                    'SLNL'=> $request -> SLNLRT[$key],
                    'Gia'=> $request -> GiaRT[$key],
                    'SLTE'=> $request -> SLTERT[$key],
                    'GiaTE'=> $request -> GiaTERT[$key],
                    'ThanhTien'=> $request -> TotalRT[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    		hopdongdichvu::where('MaDVTour',$request-> MaDVRT[$key])->where('MaHD', $MaHD)->update($data);
    		
              
              	
            }
              

    	}
        if($request-> MaDVST != null){
    	foreach ($request-> MaDVST as $key => $value) {
    		$data = array('MaHD' =>  $MaHD,
                    'MaDVTour'=>  $request -> MaDVST[$key],
                    'SLNL'=> $request -> SLNLST[$key],
                    'Gia'=> $request -> GiaST[$key],
                    'SLTE'=> $request -> SLTEST[$key],
                    'GiaTE'=> $request -> GiaTEST[$key],
                    'ThanhTien'=> $request -> TotalST[$key],
                    'NgayDK' => date(now()),
                    
                ); 
    		hopdongdichvu::where('MaDVTour',$request-> MaDVST[$key])->where('MaHD', $MaHD)->update($data);
    		
              
              
              	}

              

    	}
    	return  redirect('admin/qlHD/danhsachHD/')->with('thongbao', 'Đăng Kí Dịch Vụ Thành Công');
    }

    public function postThanhToanHD(Request $request ){
            $thuchi= new thuchi;
            $thuchi -> MaHD = $request -> MaHD;
            $thuchi -> MaCTTour = $request -> MaCTTour;
            $thuchi -> DichVu = "Thanh Toán Hợp Đồng";
            $thuchi -> LoaiThuChi = 1;
            $thuchi -> NgayTT = date(now());
            $thuchi -> NoiDung= $request -> GhiChu;
            $thuchi -> SoTien = $request -> SoTienTT;
            $thuchi -> MaNV = $request -> MaNV;
            if($thuchi->save()){
            $hopdong = hopdong::find($request -> MaHD);
            $hopdong -> DaThanhToan= $request -> SoTien;
            $hopdong -> save();

                // $conlai = $hopdong -> ThanhTien - $hopdong -> DaThanhToan;
                // if($conlai == 0){
                //     $hopdong -> TrangThai = 1;
                //     $hopdong -> save();
                // }
            }
            return  redirect()->back()->with('thongbao', 'Thanh Toán Thành Công');

    }
     public function postHoanTra(Request $request ){
            $thuchi= new thuchi;
            $thuchi -> MaHD = $request -> MaHD;
            $thuchi -> MaCTTour = $request -> MaCTTour;
            $thuchi -> DichVu = "Hoàn Trả Đặt Cọc";
            $thuchi -> LoaiThuChi = 2;
            $thuchi -> NgayTT = date(now());
            $thuchi -> NoiDung= $request -> GhiChu;
            $thuchi -> SoTien = $request -> SoTienTT;
            $thuchi -> MaNV = $request -> MaNV;
            if($thuchi->save()){
            $hopdong = hopdong::find($request -> MaHD);
            $hopdong -> TrangThai= 3;
            $hopdong -> save();

                // $conlai = $hopdong -> ThanhTien - $hopdong -> DaThanhToan;
                // if($conlai == 0){
                //     $hopdong -> TrangThai = 1;
                //     $hopdong -> save();
                // }
            }
            return  redirect()->back()->with('thongbao', 'Đã Hoàn Trả Thành Công');

    }
    public function postXacNhanHD(Request $request ){
            $hopdong = hopdong::find($request -> MaHD);
            $hopdong -> NgayXacNhan= date(now());
            $hopdong -> TrangThai= 1;
            $chitiettour = chitiettour::find($request -> MaCTTour);
            
             if( $chitiettour-> SL -$chitiettour-> SoChoDaDat < $request -> SoCho)
            {
                $socho=$chitiettour-> SL -$chitiettour-> SoChoDaDat;
                return  redirect()->back()->with('thongbao', 'Xác Nhận Thất Bại. Tour chỉ còn '.$socho .' Chỗ');
            }
            else{
                 
            if($hopdong->save() ){
                $chitiettour-> SoChoDaDat = hopdong::where('TrangThai', 1)-> sum('SoCho');
                $chitiettour -> save();
                return  redirect()->back()->with('thongbao', 'Xác Nhận Thành Công');
            }
                   
                else{
                return  redirect()->back()->with('thongbao', 'Xác Nhận Thất bại');
            }
            }
            

    }
    public function postSuaBook(Request $request , $MaHD){
            $hopdong = hopdong::find($MaHD);
            $hopdong -> SLNL= $request -> SLNL;
            $hopdong -> SLTE= $request -> SLTE;
            $hopdong -> SLEB= $request -> SLEB;
            $hopdong -> SoCho= ($request -> SLNL)+($request -> SLTE)+($request -> SLEB);
            $hopdong -> ThanhTien= $request -> ThanhTien;
            $hopdong -> save();
            
            return redirect()->back()->with('thongbao', 'Bạn đã update Thành Công');
            
            

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
    public function postThemTTK(Request $request , $MaHD){
            $thongtinkhach = new thongtinkhach;
            $thongtinkhach -> HoTen= $request -> HoTen;
            $thongtinkhach -> NgaySinh= $request -> NgaySinh;
            $thongtinkhach -> GioiTinh= $request -> GioiTinh;
            $thongtinkhach -> DiaChi= $request -> DiaChi;
            $thongtinkhach -> Tel= $request -> Tel;
            $thongtinkhach -> Passport= $request -> Passport;
            $thongtinkhach -> MaHD= $MaHD;
            $thongtinkhach -> save();
            
            return redirect()->back()->with('thongbao', 'Bạn đã Thêm Hành Khách Thành Công');
            
            

    }
    public function postXoaTTK(Request $request , $MaKhach){
            $thongtinkhach = thongtinkhach::find($MaKhach);
            
            $thongtinkhach -> delete();
            
            return redirect()->back()->with('thongbao', 'Bạn đã Xóa Hành Khách Thành Công');
            
            

    }

    public function getXoaHD($MaHD){
        $hopdong = hopdong::where('MaHD',$MaHD);
        $thongtinkhach = thongtinkhach::where('MaHD',$MaHD);
        $thongtinkhach->delete();

        $hopdong->delete();


        return redirect()->back()->with('thongbao', 'Bạn đã xóa Thành Công');
    }
    public function postHuyBook($MaHD, $MaCTTour){
        $hopdong = hopdong::find($MaHD);
        $hopdong -> TrangThai = 2;
        $chitiettour = chitiettour::find($MaCTTour);
        if($hopdong->save() ){
                $chitiettour-> SoChoDaDat = hopdong::where('TrangThai', 1)-> sum('SoCho');
                $chitiettour -> save();
                return  redirect()->back()->with('thongbao', 'Bạn đã Hủy Book Thành Công');
        }
        else{
            return redirect()->back()->with('thongbao', 'Bạn không thể Hủy Book');
        }

        
    }
}

