@extends('admin.layout.index')

@section('content')
        
          <div class="row purchace-popup">
            <div class="col-12">
              <span class="d-block d-md-flex align-items-center">
                <p>Like what you see? Check out our premium version for more.</p>
                <a class="btn ml-auto download-button d-none d-md-block" href="https://github.com/BootstrapDash/StarAdmin-Free-Bootstrap-Admin-Template" target="_blank">Download Free Version</a>
                <a class="btn purchase-button mt-4 mt-md-0" href="https://www.bootstrapdash.com/product/star-admin-pro/" target="_blank">Upgrade To Pro</a>
                <i class="mdi mdi-close popup-dismiss d-none d-md-block"></i>
              </span>
            </div>
          </div>
          <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-cube text-danger icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Tổng Thu</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0" style="font-size: 15px;">{{number_format(App\thuchi::where('LoaiThuChi', 1)->sum('SoTien'))}} VNĐ</h3>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-receipt text-warning icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Tổng Chi</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0" style="font-size: 15px;">{{number_format(App\thuchi::where('LoaiThuChi', 2)->sum('SoTien'))}} VNĐ</h3>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-poll-box text-success icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Lợi Nhuận</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0" style="font-size: 15px;">{{number_format((App\thuchi::where('LoaiThuChi', 1)->sum('SoTien'))- (App\thuchi::where('LoaiThuChi', 2)->sum('SoTien')) )}} VNĐ</h3>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-account-location text-info icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Tổng Booking</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0" style="font-size: 15px;">{{App\hopdong::count('MaHD')}}</h3>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
          {{-- <div class="row">
            
          </div> --}}
          <div class="card">
                <div class="card-body">
                  <h4 class="card-title">DANH SÁCH KHÁCH ĐI TOUR</h4>
                  <div class="table-responsive">
                    @if(session('thongbao'))
                      <div class= "alert alert-success" >
                        {{session('thongbao')}}

                      </div>
                    @endif
                    <table class="table table-bordered" >
                      <thead  bgcolor="#308ee0" style="color: #fff">
                        <tr>
                          <th >
                            Mã Khách
                          </th>
                          <th >
                            Họ Tên
                          </th>
                          <th>
                            Giới Tính                         
                          </th>
                          <th>
                            Ngày Sinh                         
                          </th>
                          <th>
                            Địa Chỉ                         
                          </th>
                          
                          <th>
                            Tel
                          </th>
                          <th>
                            Passport
                          </th>
                          <th>
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody id="dlkh">
                        
                        
                      </tbody>
                    </table>
                    <h4 class="card-title">DANH SÁCH HỢP ĐỒNG CHƯA XỬ LÝ</h4>
                    <table class="table table-bordered" id="dshd" >
                      <thead  bgcolor="#308ee0" style="color: #fff">
                        <tr>
                          <th >
                            Mã HĐ
                          </th>
                          <th >
                            Tên Khách Hàng <br>
                            MaTour
                          </th>
                          <th>
                            Thông Tin                          
                          </th>
                          <th>
                            Thành Tiền                         
                          </th>
                          <th>
                            Trạng Thái                         
                          </th>
                          
                          
                          
                         
                          <th style="text-align: center;">
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach(App\hopdong::where('TrangThai',0)->get() as $hd)
                          <tr>
                            <td class="font-weight-medium" >
                              {{ $hd -> MaHD}} 
                            </td>
                            
                            <td style="line-height: 20px">
                              
                                 {{ $hd -> khachhang -> TenKH }}/({{ $hd -> khachhang -> Email }}) 

                              <br>
                             
                                 {{ $hd -> chitiettour-> tour -> TenTour }}/({{ $hd -> chitiettour-> tour -> MaTour }} - {{ $hd -> MaCTTour }})
                                 <br>
                                 Điều Hành Tour: {{$hd -> chitiettour -> tour -> user -> TenNV}}
                             
                            </td>
                            <td style="line-height: 20px;">
                             <li>Ngày Đặt {{ $hd -> NgayDat}}</li>
                            
                             <li>Ngày Xác Nhận 

                               @if($hd -> NgayXacNhan == null)
                                <a  class="XacNhanbtn btn-rounded btn-warning" data-mahd="{{$hd -> MaHD}}" data-sl="{{$hd -> SoCho}}" data-macttour="{{ $hd -> MaCTTour }}" data-tentour="{{ $hd -> chitiettour -> tour -> TenTour }} ({{ $hd -> chitiettour -> tour -> MaTour }}-{{ $hd -> MaCTTour }})" data-tenkh="{{$hd -> khachhang-> TenKH}}"> Chưa xác nhận</a>
                                @else
                                  {{ $hd -> NgayXacNhan}}
                              @endif             

                            </li>
                             <li> Số Chỗ {{ $hd -> SoCho }}</li>
                             
                              <li> SLNL: {{ $hd -> SLNL }}</li>
                              <li> SLTE: {{ $hd -> SLTE }}</li>
                              <li> SLEB: {{ $hd -> SLEB }}</li>
                            
                             <li>{{ $hd -> loaitt -> TenLoaiTT }}</li>
                            </td>
                            <td style="line-height: 20px;">
                              
                              <?php $conlai = ($hd -> ThanhTien)- ($hd -> DaThanhToan ); ?>
                              @if( $conlai == 0)
                              <a  class=" btn-rounded btn-success" style="color: #fff"> Đã Thanh Toán </a>
                               @else
                                <a  class="TTbtn1 btn-rounded btn-danger" style="color: #fff" data-mahd="{{ $hd -> MaHD }}" data-macttour="{{ $hd -> MaCTTour }}"  data-tentour="{{ $hd -> chitiettour -> tour -> TenTour }} ({{ $hd -> chitiettour -> tour -> MaTour }}-{{ $hd -> MaCTTour }})" data-tenkh="{{ $hd -> khachhang-> TenKH }}" data-con="{{ $hd -> ThanhTien - $hd -> DaThanhToan}}"  data-datt="{{ $hd -> DaThanhToan}}"> Chưa Thanh Toán</a>
                              @endif 
                              <br>
                              Tổng Tiền: {{ number_format($hd -> ThanhTien) }} <br>
                              Đã Thanh Toán: {{ number_format( $hd -> DaThanhToan )}} <br>
                              Còn Lại: <a style="color:red">{{number_format( $hd -> ThanhTien -  $hd -> DaThanhToan)}}</a>
                            </td>
                            <td style="line-height: 20px;">
                                  @if($hd -> TrangThai == 0)
                                <a class="btn-warning">Chưa Xác Nhận</a>
                              @elseif($hd -> TrangThai==2)
                               <a class="btn-danger" style="color: #fff"> Đã Hủy Booking</a>
                              @elseif($hd-> TrangThai==1)
                                <a class="btn-success"  style="color: #fff">Đã Xác Nhận</a>
                              @elseif($hd-> TrangThai==3)
                                <a class="btn-primary"  style="color: #fff">Đã Hoàn Trả Đặt Cọc</a>
                              @endif
                            </td>
                              

                            
                            <td>
                               <a class="dslk btn btn-secondary btn-fw" style="color:#fff; width: 170px;" data-id="{{$hd -> MaHD}}">DS Lữ Khách</a>  <br>
                              <?php $daTT = $hd -> DaThanhToan; 
                                    $tong2 = ($hd -> ThanhTien)/2;
                              ?>
                              @if($daTT >= $tong2)
                              <?php $a = App\hopdongdichvu::where('MaHD',$hd -> MaHD)->count() ?>
                                  @if($a == 0)
                                  <a class="btn btn-warning btn-fw" style="color:#fff; width: 170px;" href="admin/qlHD/XuLyHD/{{$hd -> MaHD}}">Add Dịch Vụ</a>  <br>
                                  
                                  @else
                                    <a class="btn btn-warning btn-fw" style="color:#fff;width: 170px;" href="admin/qlHD/UpdateDVHD/{{$hd -> MaHD}}" >Update Dịch Vụ</a>  <br>
                                    @endif
                            @endif

                            <?php $daTT1 = $hd -> DaThanhToan; 
                                    $tong1 = $hd -> ThanhTien;
                              ?>
                            @if($daTT1 == $tong1 )
                            <a class="btn btn-info btn-fw" href="admin/PDF/InHD/{{$hd -> MaHD}}" style="width: 170px;" target="_blank">In Hợp Đồng</a><br>
                            @else
                              <a class="YCThanhToan btn btn-info btn-fw"  style="width: 170px;" data-mahd="{{$hd -> MaHD}}" data-tenkh="{{$hd -> khachhang-> TenKH}}" data-email="{{$hd -> khachhang-> Email}}" data-matour="{{$hd -> chitiettour-> tour-> MaTour}}-{{$hd -> MaCTTour}}" data-tentour="{{$hd -> chitiettour-> tour-> TenTour}}" data-ngaykh="{{$hd -> chitiettour-> NgayKhoiHanh}}" data-ngaykt="{{$hd -> chitiettour-> NgayKetThuc}}" data-tong="{{number_format($hd -> ThanhTien)}}" data-datt="{{number_format($hd ->  DaTT)}}" data-phaitt="{{number_format($hd -> ThanhTien - $hd ->  DaTT)}}" data-makh="{{$hd ->khachhang -> MaKH}}" >Yêu Cầu Thanh Toán</a><br>
                            @endif

                          
                            <a class="suabook btn btn-dark btn-fw" data-id="{{$hd -> MaHD}}" data-slnl="{{$hd -> SLNL}}" data-slte="{{$hd -> SLTE}}" data-sleb="{{$hd -> SLEB}}" data-gianl="{{$hd -> chitiettour -> tour-> Gia}}"  data-giate="{{$hd -> chitiettour -> tour-> GiaTE}}" data-giaeb="{{$hd -> chitiettour -> tour-> GiaEB}}" data-thanhtien="{{$hd -> ThanhTien}}"style="width: 170px; color:#fff">Sửa Booking</a><br>
                           
                            
                            @if($hd -> TrangThai == 1)
                          
                            <a class="huybook btn btn-danger btn-fw" data-id="{{$hd -> MaHD}}"  data-mactt="{{$hd -> MaCTTour}}" style="width: 170px; color:#fff">Hủy Booking</a><br>
                           
                            @endif
                            <?php 
                              $datdv= App\hopdongdichvu::where('MaHD', $hd -> MaHD)->count() ;
                            ?>
                            @if($daTT1==0 )
                          
                            <a class="btn btn-danger btn-fw" href="admin/qlHD/xoaHD/{{$hd -> MaHD}}" style="width: 170px;">Xóa Booking</a>
                            
                            @endif
                            </td>
                            
                          </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

 <div class="modal fade" id="YCTTModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Gửi Yêu Cầu Thanh Toán</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample" action="admin/qlBieuMau/YCThanhToanHD" method="POST" id="YCTTform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                      <label for="exampleTextarea1">Tên Khách Hàng</label>
                      <input type="text" class="form-control" id="TenKH"  name='TenKH'>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Email</label>
                      <input type="text" class="form-control" id="email"  name='email'>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tiêu Đề Mail</label>
                      <input type="text" class="form-control" id="TieuDe"  name='TieuDe' >
                    </div>
                    <input type="text" class="form-control" id="MaKH" required name='MaKH' style="display: none;">
                    <input type="text" class="form-control" id="MaHD" required name='MaHD' style="display: none;">
                    <input type="text" class="form-control" id="MaTour" required  name='MaTour'style="display: none;">
                    <input type="text" class="form-control" id="TenTour" required name='TenTour' style="display: none;">
                    <input type="text" class="form-control" id="NgayKH" required name='NgayKH' style="display: none;">
                    <input type="text" class="form-control" id="NgayKT" required name='NgayKT' style="display: none;">
                    <input type="text" class="form-control" id="Tongtien" required name='Tongtien' style="display: none;">
                    <input type="text" class="form-control" id="PhaiTT" required name='PhaiTT' style="display: none;">
                    <input type="text" class="form-control" id="DaTT" required name='DaTT' style="display: none;">
                    

                             
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Gửi Mail</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>

 <div class="modal fade" id="TT1Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thanh Toán</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="TT1form" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                      <label for="exampleTextarea1">Mã Hợp Đồng</label>
                      <input type="text" class="form-control" id="MaHD1"  name='MaHD' readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tên Khách Hàng</label>
                      <input type="text" class="form-control" id="TenKH1"  name='TenKH'  readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tour</label>
                      <input type="text" class="form-control" id="TenTour1"  name='TenTour' readonly >
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Chưa Thanh Toán </label>
                      <input type="text" class="form-control" id="ChuaTT"  name='ChuaTT' readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Số Tiền Thanh Toán</label>
                      <input type="text" class="form-control" id="SoTienTT"  name='SoTienTT' onKeyPress="return isNumberKey(event)">
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Ghi Chú </label>
                      
                      <textarea class="form-control" id="Ghichu"  name='GhiChu'></textarea>
                    </div>
                    <input type="text" class="form-control" id="DaTT1" required name='DaTT' style="display: none">
                    <input type="text" class="form-control" id="SoTien" required name='SoTien' style="display: none" >
                    <input type="text" class="form-control" id="MaCTTour1" required name='MaCTTour' style="display: none">
                    <input type="text" class="form-control" id="MaNV" required name='MaNV' value="{{ Auth::id()}}" style="display: none">
                   
                    
                    

                             
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Thanh Toán</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="XNModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Xác Nhận Booking</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="XNform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                      <label for="exampleTextarea1">Mã Hợp Đồng</label>
                      <input type="text" class="form-control" id="MaHD2"  name='MaHD' readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tên Khách Hàng</label>
                      <input type="text" class="form-control" id="TenKH2"  name='TenKH'  readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tour</label>
                      <input type="text" class="form-control" id="TenTour2"  name='TenTour' readonly >
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Số Chỗ Đặt  </label>
                      <input type="text" class="form-control" id="SoCho1"  name='SoCho' readonly>
                    </div>
                    
                    <input type="text" class="form-control" id="MaCTTour2" required name='MaCTTour' style="display: none">
                    
                    
                    

                             
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Xác Nhận</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="HuyBookModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Hủy Booking</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="HuyBooKform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <h3> Bạn muốn Hủy Booking #<span id="MaBK"></span></h3>
        
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">OK</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="SuaBookModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sửa Booking</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="SuaBookform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                      <label for="exampleTextarea1">Mã Booking</label>
                      <input type="text" class="form-control" id="MaHD5"  name='MaHD' readonly>
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">SLNL</label>
                      <input type="number" class="form-control" id="SLNL5"  name='SLNL' min="1" required>
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">Giá</label>
                      <input type="text" class="form-control" id="GiaNL5"  name='GiaNL' readonly>
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">SLTE</label>
                      <input type="number" class="form-control" id="SLTE5"  name='SLTE' min="0">
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">Giá TE</label>
                      <input type="text" class="form-control" id="GiaTE5"  name='GiaTE' readonly>
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">SLEB</label>
                      <input type="number" class="form-control" id="SLEB5"  name='SLEB' min="0">
                    </div>
                    <div class="form-group" style="width: 49%; float: left;">
                      <label for="exampleTextarea1">Giá EB</label>
                      <input type="text" class="form-control" id="GiaEB5"  name='GiaEB' readonly>
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Thành Tiền</label>
                      <input type="text" class="form-control" id="ThanhTien5"  name='ThanhTien' readonly>
                    </div>
        
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Update</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="SuaTTKModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sửa Thông Tin Khách</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="SuaTTKform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    
                    <div class="form-group" >
                      <label for="exampleTextarea1">Họ Tên</label>
                      <input type="text" class="form-control" id="HoTen5"  name='HoTen' required>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Giới Tính</label>
                      <select class="form-control" id="GioiTinh5"  name='GioiTinh'>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>

                      </select>  
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">NgaySinh</label>
                      <input type="date" class="form-control" id="NgaySinh5"  name='NgaySinh' required>
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Tel</label>
                      <input type="text" class="form-control" id="Tel5"  name='Tel' required maxlength="11">
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Địa Chỉ</label>
                      <input type="text" class="form-control" id="DiaChi5"  name='DiaChi' required>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Passport</label>
                      <input type="text" class="form-control" id="Passport5"  name='Passport' maxlength="9">
                    </div>
                   
        
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Update</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="ThemTTKModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm Hành Khách</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="ThemTTKform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    
                    <div class="form-group" >
                      <label for="exampleTextarea1">Họ Tên</label>
                      <input type="text" class="form-control" id="HoTen6"  name='HoTen' required>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Giới Tính</label>
                      <select class="form-control" id="GioiTinh6"  name='GioiTinh'>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>

                      </select>  
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">NgaySinh</label>
                      <input type="date" class="form-control" id="NgaySinh6"  name='NgaySinh' required>
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Tel</label>
                      <input type="text" class="form-control" id="Tel6"  name='Tel' required maxlength="11">
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Địa Chỉ</label>
                      <input type="text" class="form-control" id="DiaChi6"  name='DiaChi' required>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Passport</label>
                      <input type="text" class="form-control" id="Passport6"  name='Passport' maxlength="9">
                    </div>
                   
        
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">ADD</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
<div class="modal fade" id="XoaTTKModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Xóa Hành Khách</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="XoaTTKform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <h5>Bạn Chắc Chắn Muốn Xóa Hành Khách <span id="tenhk"></span> ?</h5>
                   
        
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Xóa</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>

@endsection
@section('script')

<script type="text/javascript">
  $(document).ready( function () {
    $('#dshd').DataTable();
    $('#dshd').click(function(){
      $('.YCThanhToan').click(function(){
        $('#MaKH').val($(this).data("makh"));
        $('#TenKH').val($(this).data("tenkh"));
        $('#email').val($(this).data("email"));
        $('#MaHD').val($(this).data("mahd"));
        $('#MaTour').val($(this).data("matour"));
        $('#TenTour').val($(this).data("tentour"));
        $('#NgayKH').val($(this).data("ngaykh"));
        $('#NgayKT').val($(this).data("ngaykt"));
        $('#Tongtien').val($(this).data("tong"));
        $('#DaTT').val($(this).data("datt"));
        $('#PhaiTT').val($(this).data("phaitt"));


        $('#YCTTform').attr('action','admin/qlBieuMau/YCThanhToanHD');
        $('#YCTTModal').modal('show');
      });

      $('.TTbtn1').click(function(){
            $('#MaHD1').val($(this).data("mahd"));
            $('#TenKH1').val($(this).data("tenkh"));
            $('#TenTour1').val($(this).data("tentour"));
            $('#ChuaTT').val($(this).data("con"));
            $('#TenTour1').val($(this).data("tentour"));
            $('#MaCTTour1').val($(this).data("macttour"));
             $('#DaTT1').val($(this).data("datt"));
            ;
            $('#SoTienTT').on('input', function(){
                  var a = parseInt($('#SoTienTT').val());
                  var chuatt=parseInt($('#ChuaTT').val());
                  
                  if( a > chuatt){
                    alert (chuatt);
                     $('#SoTienTT').val("");
                  }
                  else{
                  var datt= parseInt($('#DaTT1').val());
                  var sotien= parseInt($('#SoTienTT').val());
                  var tong= datt + sotien;
                  
                  $('#SoTien').val(tong);
                }
            });

          $('#TT1form').attr('action','admin/qlHD/ThanhToanHD');
        $('#TT1Modal').modal('show');
      });
      $('.XacNhanbtn').click(function(){
            $('#MaHD2').val($(this).data("mahd"));
            $('#TenKH2').val($(this).data("tenkh"));
            $('#TenTour2').val($(this).data("tentour"));
            $('#SoCho1').val($(this).data("sl"));
            // $('#TenTour1').val($(this).data("tentour"));
            $('#MaCTTour2').val($(this).data("macttour"));
            //  $('#DaTT1').val($(this).data("datt"));
            // ;
            // $('#SoTienTT').on('input', function(){
            //       var datt= parseInt($('#DaTT1').val());
            //       var sotien= parseInt($('#SoTienTT').val());
            //       var tong= datt + sotien;
                  
            //       $('#SoTien').val(tong);
            // });

          $('#XNform').attr('action','admin/qlHD/XacNhanHD');
        $('#XNModal').modal('show');
      });

      $('.huybook').click(function (){
       
        document.getElementById('MaBK').innerHTML=$(this).data("id");
        $('#HuyBookModal').modal('show');
        $('#HuyBooKform').attr('action','admin/qlHD/HuyBook/'+ $(this).data("id")+'/' + $(this).data("mactt"));
      });
      $('.suabook').click(function (){
        $('#MaHD5').val($(this).data("id"));
        $('#SLNL5').val($(this).data("slnl"));
        $('#SLTE5').val($(this).data("slte"));
        $('#SLEB5').val($(this).data("sleb"));
        $('#GiaNL5').val($(this).data("gianl"));
        $('#GiaTE5').val($(this).data("giate"));
        $('#GiaEB5').val($(this).data("giaeb"));
        $('#ThanhTien5').val($(this).data("thanhtien"));

        $('#SLNL5').click(function(){
          var slnl= $('#SLNL5').val();
          var slte= $('#SLTE5').val();
          var sleb= $('#SLEB5').val();
          var gianl= $('#GiaNL5').val();
          var giate= $('#GiaTE5').val();
          var giaeb= $('#GiaEB5').val();
          var tong= (slnl*gianl)+(slte*giate)+(sleb*giaeb);
          $('#ThanhTien5').val(tong);
        });
        $('#SLTE5').click(function(){
          var slnl= $('#SLNL5').val();
          var slte= $('#SLTE5').val();
          var sleb= $('#SLEB5').val();
          var gianl= $('#GiaNL5').val();
          var giate= $('#GiaTE5').val();
          var giaeb= $('#GiaEB5').val();
          var tong= (slnl*gianl)+(slte*giate)+(sleb*giaeb);
          $('#ThanhTien5').val(tong);
        });
        $('#SLEB5').click(function(){
          var slnl= $('#SLNL5').val();
          var slte= $('#SLTE5').val();
          var sleb= $('#SLEB5').val();
          var gianl= $('#GiaNL5').val();
          var giate= $('#GiaTE5').val();
          var giaeb= $('#GiaEB5').val();
          var tong= (slnl*gianl)+(slte*giate)+(sleb*giaeb);
          $('#ThanhTien5').val(tong);
        });
        $('#SuaBookModal').modal('show');
        $('#SuaBookform').attr('action','admin/qlHD/SuaBook/'+ $(this).data("id"));
      });
      
    });
    $('.dslk').click(function (){
        var mahd= $(this).data("id");
        $.get('admin/ajax/dskhach/'+ mahd  , function(data){
          $('#dlkh').html(data);
          $('.SuaTTK').click(function (){
              $('#HoTen5').val($(this).data("hoten"));
              $('#GioiTinh5').val($(this).data("gioitinh"));
              $('#Tel5').val($(this).data("tel"));
              $('#NgaySinh5').val($(this).data("ngaysinh"));
              $('#DiaChi5').val($(this).data("diachi"));
              $('#Passport5').val($(this).data("passport"));
             
            $('#SuaTTKModal').modal('show');
            $('#SuaTTKform').attr('action','admin/qlHD/SuaTTK/'+ $(this).data("id"));
          });
            $('.ThemTTK').click(function (){
             
             
            $('#ThemTTKModal').modal('show');
            $('#ThemTTKform').attr('action','admin/qlHD/ThemTTK/'+ $(this).data("id"));
          });
            $('.XoaTTK').click(function (){
             
             document.getElementById('tenhk').innerHTML= $(this).data("hoten");
            $('#XoaTTKModal').modal('show');
            $('#XoaTTKform').attr('action','admin/qlHD/XoaTTK/'+ $(this).data("id"));
          });
          
        });
        
      });


    
});
function isNumberKey(evt)
     {
     var charCode = (evt.which) ? evt.which : event.keyCode
     if (charCode > 31 && (charCode < 48 || charCode > 57))
     return false;
     return true;
     }
  </script>
@endsection

       
  
 