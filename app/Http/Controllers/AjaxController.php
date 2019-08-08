<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Requests;
use App\tinh;
use App\loaidoitac;
use App\doitac;
use App\diadiemdulich;
use App\banggiadichvu;
use App\khuvuc;
use App\nhomtour;
use App\chitiettour;
use App\thuchi;
use App\user;
use Carbon\Carbon;
use App\thongtinkhach;
use App\hopdong;

class AjaxController extends Controller
{
     public function getDoiTac( $tinh, $dv){
     	$doitac = doitac::where('MaTinh',$tinh) -> where('MaLoaiDT',$dv) ->get();
     	foreach($doitac as $dt){
     		echo "<option value='".$dt -> MaDoiTac."'>".$dt -> TenDoiTac."</option>";	
     	}
    	
    }
    public function getDV( $dt){
     	$banggiadichvu = banggiadichvu::where('MaDoiTac',$dt) ->get();
     	foreach($banggiadichvu as $bg){
     		echo "<option value='".$bg -> MaGiaDV."'>".$bg -> TenDV."</option>";	
     	}
    	
    }
    public function getGiaDV( $iddv){
        $banggiadichvu = banggiadichvu::where('MaGiaDV',$iddv) ->get();
        foreach($banggiadichvu as $bg){
            echo $bg -> Gia;    
        }
        
    }
     public function getGiaDVTE( $iddv){
        $banggiadichvu = banggiadichvu::where('MaGiaDV',$iddv) ->get();
        foreach($banggiadichvu as $bg){
            echo $bg -> GiaTE;    
        }
        
    }
    public function getDiaDiemDL( $tinh){
        $diadiemdulich = diadiemdulich::where('MaTinh',$tinh) ->get();
        foreach($diadiemdulich as $dd){
            echo "<option value='".$dd -> MaDD."'>".$dd -> TenDD."</option>";   
        }
        
    }
    public function getTinh( $qg){
        $tinh = tinh::where('MaQG',$qg) ->get();
        foreach($tinh as $t){
            echo "<option value='".$t -> MaTinh."'>".$t -> TenTinh."</option>";   
        }
        
    }
    public function getKhuVuc( $lt){
        $khuvuc = khuvuc::where('MaLoaiTour',$lt) ->get();
        foreach($khuvuc as $t){
            echo "<option value='".$t -> MaKV."'>".$t -> TenKV."</option>";   
        }
        
    }
    public function getNhomTour( $kv){
        $nhomtour = nhomtour::where('MaKV',$kv) ->get();
        foreach($nhomtour as $t){
            echo "<option value='".$t -> MaNhomTour."'>".$t -> TenNhom."</option>";   
        }
        
    }
    public function getTimTour( $Tour){
        $chitiettour = chitiettour::where('MaTour',$Tour) ->get();
        foreach($chitiettour as $t){
            echo "<option value='".$t -> MaCTTour."'>".$t -> NgayKhoiHanh." / (".$t -> MaCTTour.")</option>";   
        }
        
    }
    public function getDSKhach( $MaHD){
        $thongtinkhach = thongtinkhach::where('MaHD',$MaHD) ->get();
        foreach($thongtinkhach as $t){
            echo "<tr>
                          <td>".$t -> MaKhach."</td>
                          <td>".$t -> HoTen."</td>
                          <td>".$t -> GioiTinh."</td>
                          <td>".$t -> NgaySinh."</td>
                          <td>".$t -> DiaChi."</td>
                          <td>".$t -> Tel."</td>
                          <td>".$t -> Passport."</td>
                          <td><a class='SuaTTK btn btn-dark btn-fw' data-id='".$t -> MaKhach."' data-hoten='".$t -> HoTen."' data-gioitinh='".$t -> GioiTinh."' data-ngaysinh='".$t -> NgaySinh."' data-diachi='".$t -> DiaChi."' data-tel='".$t -> Tel."' data-passport='".$t -> Passport."' style='width: 100px; color:#fff'>Sửa</a><br>
                          <a class='XoaTTK btn btn-danger btn-fw' data-id='".$t -> MaKhach."' data-hoten='".$t -> HoTen."' style='width: 100px; color:#fff'>Xóa</a><br></td>
                        </tr>";   
        }
          echo "<tr>
              <td colspan='8' style='text-align: center;'><a class='ThemTTK btn btn-success btn-fw' data-id='".$MaHD."' style='width: 100px; color:#fff'>Thêm</a></td>
          </tr>";
        
    }
    public function getTimTCTour( $macttour){
        $thuchi = thuchi::where('MaCTTour',$macttour) ->get();
        foreach($thuchi as $tc){
          foreach(chitiettour::where('MaCTTour',$tc -> MaCTTour)->get() as $mact){
            foreach(user::where('MaNV',$tc -> MaNV)->get() as $manv){
            echo "<tr>
                          <td style='line-height: 20px;'>". $tc -> id."</td>
                          <td style='line-height: 20px'>";
                          if($tc -> MaHD != null){
                          echo   $tc -> hopdong-> khachhang -> TenKH."<br>";
                           echo  $tc -> DichVu;
                           }
                          elseif($tc -> MaDVTour!= null){
                            echo $tc -> dichvutour-> doitac-> TenDoiTac ."<br>";
                            echo  $tc -> DichVu;
                          }
                            else{
                             echo $tc -> DichVu;
                            }
                            
                         echo  "</td>
                          <td style='line-height: 20px'>
                            
                            Mã Tour:  ".$mact -> MaTour." - ".$mact -> MaCTTour."<br>
                            Tên Tour:  ".$mact -> tour -> TenTour."

                            

                          </td>
                          <td style='line-height: 20px'>";
                            if($tc-> LoaiThuChi==1){
                              echo "Thu";
                            }
                            else{
                             echo "Chi";
                            }
                           
                          echo "<td style='line-height: 20px;'>". number_format($tc -> SoTien)." VND</td></td>
                          <td style='line-height: 20px'>
                            ". $tc -> NoiDung."
                          </td>
                          <td style='line-height: 20px'> 
                            ". $tc -> NgayTT."
                          </td>
                          <td style='line-height: 20px'>
                            
                              ".$manv -> TenNV."
                            
                          </td>
                        </tr>";   

                      
                    }
          }
        }
        echo "<tr>
                          <td></td>
                          <td></td>";
                $thu = thuchi::where('MaCTTour',$macttour)->where('LoaiThuChi', 1)->sum('SoTien');
                $chi = thuchi::where('MaCTTour',$macttour)->where('LoaiThuChi', 2)->sum('SoTien');
                echo "<td colspan='2'>Tổng Thu: <strong>". number_format($thu)." VND </strong></td>
                          <td colspan='2'>Tổng Chi: <strong>". number_format($chi) ." VND </strong></td>
                          <td colspan='2'>Lợi Nhuận:<strong>". number_format($thu - $chi)." VND </strong> </td>
                         
                        </tr>";
        
    }
    public function getTimTCNgay( $ngay){
        $thuchi = thuchi::where('NgayTT',$ngay) ->get();
        foreach($thuchi as $tc){
          foreach(chitiettour::where('MaCTTour',$tc -> MaCTTour)->get() as $mact){
            foreach(user::where('MaNV',$tc -> MaNV)->get() as $manv){
            echo "<tr>
                          <td style='line-height: 20px;'>". $tc -> id."</td>
                          <td style='line-height: 20px'>";
                          if($tc -> MaHD != null){
                          echo   $tc -> hopdong-> khachhang -> TenKH."<br>";
                           echo  $tc -> DichVu;
                           }
                          elseif($tc -> MaDVTour!= null){
                            echo $tc -> dichvutour-> doitac-> TenDoiTac ."<br>";
                            echo  $tc -> DichVu;
                          }
                            else{
                             echo $tc -> DichVu;
                            }
                            
                         echo  "</td>
                          <td style='line-height: 20px'>
                            
                            Mã Tour:  ".$mact -> MaTour." - ".$mact -> MaCTTour."<br>
                            Tên Tour:  ".$mact -> tour -> TenTour."

                            

                          </td>
                          <td style='line-height: 20px'>";
                            if($tc-> LoaiThuChi==1){
                              echo "Thu";
                            }
                            else{
                             echo "Chi";
                            }
                           
                          echo "<td style='line-height: 20px;'>". number_format($tc -> SoTien)." VND</td></td>
                          <td style='line-height: 20px'>
                            ". $tc -> NoiDung."
                          </td>
                          <td style='line-height: 20px'> 
                            ". $tc -> NgayTT."
                          </td>
                          <td style='line-height: 20px'>
                            
                              ".$manv -> TenNV."
                            
                          </td>
                        </tr>";   
                      
                    }
          }
        }
         echo "<tr>
                          <td></td>
                          <td></td>";
                $thu = thuchi::where('NgayTT',$ngay)->where('LoaiThuChi', 1)->sum('SoTien');
                $chi = thuchi::where('NgayTT',$ngay)->where('LoaiThuChi', 2)->sum('SoTien');
                echo "<td colspan='2'>Tổng Thu: <strong>". number_format($thu)." VND </strong></td>
                          <td colspan='2'>Tổng Chi: <strong>". number_format($chi) ." VND </strong></td>
                          <td colspan='2'>Lợi Nhuận:<strong>". number_format($thu - $chi)." VND </strong> </td>
                         
                        </tr>";
        
    }
     public function getTimTCThang( $ngay1, $ngay2){

        $thuchi = thuchi::whereBetween('NgayTT', [$ngay1, $ngay2]) ->get();
        foreach($thuchi as $tc){
          foreach(chitiettour::where('MaCTTour',$tc -> MaCTTour)->get() as $mact){
            foreach(user::where('MaNV',$tc -> MaNV)->get() as $manv){
            echo "<tr>
                          <td style='line-height: 20px;'>". $tc -> id."</td>
                          <td style='line-height: 20px'>";
                          if($tc -> MaHD != null){
                          echo   $tc -> hopdong-> khachhang -> TenKH."<br>";
                           echo  $tc -> DichVu;
                           }
                          elseif($tc -> MaDVTour!= null){
                            echo $tc -> dichvutour-> doitac-> TenDoiTac ."<br>";
                            echo  $tc -> DichVu;
                          }
                            else{
                             echo $tc -> DichVu;
                            }
                            
                         echo  "</td>
                          <td style='line-height: 20px'>
                            
                            Mã Tour:  ".$mact -> MaTour." - ".$mact -> MaCTTour."<br>
                            Tên Tour:  ".$mact -> tour -> TenTour."

                            

                          </td>
                          <td style='line-height: 20px'>";
                            if($tc-> LoaiThuChi==1){
                              echo "Thu";
                            }
                            else{
                             echo "Chi";
                            }
                           
                          echo "<td style='line-height: 20px;'>". number_format($tc -> SoTien)." VND</td></td>
                          <td style='line-height: 20px'>
                            ". $tc -> NoiDung."
                          </td>
                          <td style='line-height: 20px'> 
                            ". $tc -> NgayTT."
                          </td>
                          <td style='line-height: 20px'>
                            
                              ".$manv -> TenNV."
                            
                          </td>
                        </tr>"; 

                      
                    }
          }
        }
         echo "<tr>
                          <td></td>
                          <td></td>";
                $thu = thuchi::whereBetween('NgayTT', [$ngay1, $ngay2])->where('LoaiThuChi', 1)->sum('SoTien');
                $chi = thuchi::whereBetween('NgayTT', [$ngay1, $ngay2])->where('LoaiThuChi', 2)->sum('SoTien');
                echo "<td colspan='2'>Tổng Thu: <strong>". number_format($thu)." VND </strong></td>
                          <td colspan='2'>Tổng Chi: <strong>". number_format($chi) ." VND </strong></td>
                          <td colspan='2'>Lợi Nhuận:<strong>". number_format($thu - $chi)." VND </strong> </td>
                         
                        </tr>";
        
    }
    public function getTimCB( $kh, $dd,$ngaybay){
        $banggiadichvu = banggiadichvu::where('KhoiHanh',$kh)->where('DiemDen',$dd)->where('NgayBay',$ngaybay) ->get();
        foreach($banggiadichvu as $t){
                    echo"<label class='infochuyenbay' for='radioCB".$t -> MaGiaDV."'>
                      
                      <div class='cellhangbay'>".$t -> doitac -> TenDoiTac."</div>
                      <div class='cellsohieu'>".$t -> TenDV."</div>
                      <div class='cellkhoihanh'>".$t -> KhoiHanh."</div>
                      <div class='celldiemden'>".$t -> DiemDen."</div>
                      <div class='cellngaybay'>".$t -> NgayBay."</div>
                      <div class='cellgiobay'>".$t -> GioBay."</div>
                      <div class='cellgiacb'><input  id='radioCB".$t -> MaGiaDV."' type='radio' class='MaGiaDV' name='MaGiaDV' value=".$t -> MaGiaDV.">   ".number_format($t -> Gia)." VND</div>
                    </label>" ;
        }
        
    }
    public function chuakh( $matour){
       
       foreach(chitiettour::where('MaTour',$matour)-> where('NgayKhoiHanh','>',date(now()))->get() as $ct){
                 echo'<tr>
                            <td >
                              ' .$ct-> MaTour .'-'. $ct-> MaCTTour.'<br>';
                          if( $ct-> LichTrinh != null){
                            echo '<a href="admin/PDF/InLT/'. $ct-> LichTrinh .'">In Lịch trình tour </a>';
                          }
                             
                              
                            echo'</td>
                            <td>
                              <li>'.$ct-> NgayKhoiHanh .'</li>
                           
                              <li>'. $ct-> NgayKetThuc .'</li>
                             
                            </td>
                            <td>
                              '. $ct-> user-> TenNV .'
                            </td>
                            <td>';
                              
                               if( $ct -> TinhTrang == 0){
                              echo '<a class="showtt btn btn-rounded btn-outline-primary" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour -> TenTour.'" data-ct="'. $ct -> MaCTTour .'">Mở</a>';
                              }else{
                              echo '<a class="hidett btn btn-rounded btn-outline-warning" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour-> TenTour .'" data-ct="'. $ct -> MaCTTour .'">Đóng</a>';
                              }
                            echo '</td>
                            <td>
                              <li>Số lượng: '. $ct-> SL.' </li>
                              <li>Số chỗ đã đặt: '. $ct-> SoChoDaDat .'</li>
                              <li>Còn Trống: '. $ct-> SL .'-'. $ct-> SoChoDaDat .'</li>
                            </td>
                            
                            
                            <td>';
                              if(hopdong::where("MaCTTour", $ct -> MaCTTour)->count()>0 ){
                              echo '<a href="admin/qlHD/ListHDTour/'.$ct -> MaCTTour.'" class="btn btn-info btn-fw" style="width: 150px;" >List Hợp Đồng</a>';
                              }
                              echo '<a href="admin/qlTour/DSKhachDi/'.$ct -> MaCTTour.'" class="btn btn-secondary btn-fw" style="width: 150px;" >List Lữ Khách</a>
                              <br>
                              <a href="admin/qlTour/chitiettour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-primary btn-fw" >Dự Toán Chi Phí</a>
                              <a href="admin/qlTour/thuchitour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-warning btn-fw" > Thu Chi Tour</a>
                              <br>
                              <a class="editCTTourbtn btn btn-dark btn-fw" data-id="'. $ct -> MaCTTour .'" data-tentour="'.$ct ->tour -> TenTour .'" data-ngaykh="'.$ct -> NgayKhoiHanh .'" data-ngaykt="'.$ct -> NgayKetThuc .'" data-manv="'.$ct -> MaNV .'" data-sl="'.$ct -> SL .'" style="color: white;width: 150px;" >
                          <i class="mdi mdi-alert-outline"></i>Edit</a>
                            
                              <a class="delcttourbtn btn btn-danger btn-fw" data-id="'. $ct -> MaCTTour .'" style="width: 150px;">
                          <i class="mdi mdi-alert-outline"></i>Delete</a>
                            </td>
                            
                          </tr>';
         }
        
    }
    public function danghd( $matour){
       
       foreach(chitiettour::where('MaTour',$matour)-> where('NgayKhoiHanh','<=',date(now()))->where('NgayKetThuc','>=',date(now()))->get() as $ct){
                 echo'<tr>
                            <td >
                              ' .$ct-> MaTour .'-'. $ct-> MaCTTour.'<br>';
                          if( $ct-> LichTrinh != null){
                            echo '<a href="admin/PDF/InLT/'. $ct-> LichTrinh .'">In Lịch trình tour </a>';
                          }
                             
                              
                            echo'</td>
                            <td>
                              <li>'.$ct-> NgayKhoiHanh .'</li>
                           
                              <li>'. $ct-> NgayKetThuc .'</li>
                             
                            </td>
                            <td>
                              '. $ct-> user-> TenNV .'
                            </td>
                            <td>';
                              
                               if( $ct -> TinhTrang == 0){
                              echo '<a class="showtt btn btn-rounded btn-outline-primary" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour -> TenTour.'" data-ct="'. $ct -> MaCTTour .'">Mở</a>';
                              }else{
                              echo '<a class="hidett btn btn-rounded btn-outline-warning" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour-> TenTour .'" data-ct="'. $ct -> MaCTTour .'">Đóng</a>';
                              }
                            echo '</td>
                            <td>
                              <li>Số lượng: '. $ct-> SL.' </li>
                              <li>Số chỗ đã đặt: '. $ct-> SoChoDaDat .'</li>
                              <li>Còn Trống: '. $ct-> SL .'-'. $ct-> SoChoDaDat .'</li>
                            </td>
                            
                            
                            <td>';
                              if(hopdong::where("MaCTTour", $ct -> MaCTTour)->count()>0 ){
                              echo '<a href="admin/qlHD/ListHDTour/'.$ct -> MaCTTour.'" class="btn btn-info btn-fw" style="width: 150px;" >List Hợp Đồng</a>';
                              }
                              echo '<a href="admin/qlTour/DSKhachDi/'.$ct -> MaCTTour.'" class="btn btn-secondary btn-fw" style="width: 150px;" >List Lữ Khách</a>
                              <br>
                              <a href="admin/qlTour/chitiettour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-primary btn-fw" >Dự Toán Chi Phí</a>
                              <a href="admin/qlTour/thuchitour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-warning btn-fw" > Thu Chi Tour</a>
                              <br>
                              <a class="editCTTourbtn btn btn-dark btn-fw" data-id="'. $ct -> MaCTTour .'" data-tentour="'.$ct ->tour -> TenTour .'" data-ngaykh="'.$ct -> NgayKhoiHanh .'" data-ngaykt="'.$ct -> NgayKetThuc .'" data-manv="'.$ct -> MaNV .'" data-sl="'.$ct -> SL .'" style="color: white;width: 150px;" >
                          <i class="mdi mdi-alert-outline"></i>Edit</a>
                            
                              <a class="delcttourbtn btn btn-danger btn-fw" data-id="'. $ct -> MaCTTour .'" style="width: 150px;">
                          <i class="mdi mdi-alert-outline"></i>Delete</a>
                            </td>
                            
                          </tr>';
         }
        
    }
    public function dakt( $matour){
       
       foreach(chitiettour::where('MaTour',$matour)->where('NgayKetThuc','<',date(now()))->get() as $ct){
                 echo'<tr>
                            <td >
                              ' .$ct-> MaTour .'-'. $ct-> MaCTTour.'<br>';
                          if( $ct-> LichTrinh != null){
                            echo '<a href="admin/PDF/InLT/'. $ct-> LichTrinh .'">In Lịch trình tour </a>';
                          }
                             
                              
                            echo'</td>
                            <td>
                              <li>'.$ct-> NgayKhoiHanh .'</li>
                           
                              <li>'. $ct-> NgayKetThuc .'</li>
                             
                            </td>
                            <td>
                              '. $ct-> user-> TenNV .'
                            </td>
                            <td>';
                              
                               if( $ct -> TinhTrang == 0){
                              echo '<a class="showtt btn btn-rounded btn-outline-primary" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour -> TenTour.'" data-ct="'. $ct -> MaCTTour .'">Mở</a>';
                              }else{
                              echo '<a class="hidett btn btn-rounded btn-outline-warning" data-id="'. $ct -> MaTour .'" data-ten="'. $ct -> tour-> TenTour .'" data-ct="'. $ct -> MaCTTour .'">Đóng</a>';
                              }
                            echo '</td>
                            <td>
                              <li>Số lượng: '. $ct-> SL.' </li>
                              <li>Số chỗ đã đặt: '. $ct-> SoChoDaDat .'</li>
                              <li>Còn Trống: '. $ct-> SL .'-'. $ct-> SoChoDaDat .'</li>
                            </td>
                            
                            
                            <td>';
                              if(hopdong::where("MaCTTour", $ct -> MaCTTour)->count()>0 ){
                              echo '<a href="admin/qlHD/ListHDTour/'.$ct -> MaCTTour.'" class="btn btn-info btn-fw" style="width: 150px;" >List Hợp Đồng</a>';
                              }
                              echo '<a href="admin/qlTour/DSKhachDi/'.$ct -> MaCTTour.'" class="btn btn-secondary btn-fw" style="width: 150px;" >List Lữ Khách</a>
                              <br>
                              <a href="admin/qlTour/chitiettour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-primary btn-fw" >Dự Toán Chi Phí</a>
                              <a href="admin/qlTour/thuchitour/'.$ct -> MaCTTour.'"style="width: 150px;" class="btn btn-warning btn-fw" > Thu Chi Tour</a>
                              <br>
                              <a class="editCTTourbtn btn btn-dark btn-fw" data-id="'. $ct -> MaCTTour .'" data-tentour="'.$ct ->tour -> TenTour .'" data-ngaykh="'.$ct -> NgayKhoiHanh .'" data-ngaykt="'.$ct -> NgayKetThuc .'" data-manv="'.$ct -> MaNV .'" data-sl="'.$ct -> SL .'" style="color: white;width: 150px;" >
                          <i class="mdi mdi-alert-outline"></i>Edit</a>
                            
                              <a class="delcttourbtn btn btn-danger btn-fw" data-id="'. $ct -> MaCTTour .'" style="width: 150px;">
                          <i class="mdi mdi-alert-outline"></i>Delete</a>
                            </td>
                            
                          </tr>';
         }
        
    }
    

}
?>
