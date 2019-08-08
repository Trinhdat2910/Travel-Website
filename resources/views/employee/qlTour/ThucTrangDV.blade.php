@extends('employee.layout.index')

@section('contentNV')
<div class="card">
                <div class="card-body">
                	@foreach(App\banggiadichvu::where('MaGiaDV',$dichvutour -> LoaiDV)->get() as $bg)
                  <div><h4 class="card-title" style=" float: left; line-height: 40px" >Thực Trạng Đặt Dịch Vụ {{$dichvutour -> doitac -> TenDoiTac}} ({{$bg -> TenDV}} ) </h4>
                  
                    @endforeach
                  </div>
                  <div class="table-responsive">
                    @if(session('thongbao'))
                      <div class= "alert alert-success" >
                        {{session('thongbao')}}

                      </div>
                    @endif
                    
                  </div>
                
                  <div style="width: 100%; height: 70px; ">
                  	<div style="width: 30%;   float: left">
                  		<p>Ngày Check In : {{$dichvutour-> NgayCI}}</p>
                  		<p>Ngày Check Out : {{$dichvutour-> NgayCO}}</p>
                  	</div>
                  	<div style="width: 30%;   float: left">
                  		<p>Số Lượng Khách Dự Toán: - Người Lớn {{$dichvutour-> SLNL}} - Trẻ Em {{$dichvutour-> SLTE}}</p>
                  		<p>Chi Phí Dự Toán : {{number_format($dichvutour-> TongTien)}} VND</p>
                  	</div>
                  	<?php 
                  		
                  		$slnl= App\hopdongdichvu::where('MaDVTour',$dichvutour -> MaDVTour)->join('hopdong','hopdongdichvu.MaHD','=','hopdong.MaHD')->where('hopdong.TrangThai','=',1)->sum('hopdongdichvu.SLNL');
                  		$slte= App\hopdongdichvu::where('MaDVTour',$dichvutour -> MaDVTour)->join('hopdong','hopdongdichvu.MaHD','=','hopdong.MaHD')->where('hopdong.TrangThai','=',1)->sum('hopdongdichvu.SLTE');
                  		$tongtien= App\hopdongdichvu::where('MaDVTour',$dichvutour -> MaDVTour)->join('hopdong','hopdongdichvu.MaHD','=','hopdong.MaHD')->where('hopdong.TrangThai','=',1)->sum('hopdongdichvu.ThanhTien');

                  	?>
                  	<div style="width: 30%;   float: left">
                  		<p>Số Lượng Khách Thực: - Người Lớn: {{$slnl}}  - Trẻ Em: {{$slte}}</p>
                  		<p>Chi Phí Thực : {{number_format($tongtien)}} VND</p>
                  	</div>
                  </div>      		

                		<table class="table table-bordered"  >
                      <thead  bgcolor="#308ee0" style="color: #fff">
                        <tr >
                          <th  >
                            Mã HDDV
                          </th>
                          <th>
                           Mã HD
                          </th>
                          
                          
                          <th>
                            Ngày Đăng Ký
                          </th>
                          <th>
                            Số lượng
                            
                          </th>
                          <th>
                            Giá
                          </th>
                                                    
                          <th >
                            Thành Tiền
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach(App\hopdong::where('TrangThai',1)->get() as $hd)
                        	@foreach(App\hopdongdichvu::where('MaDVTour',$dichvutour -> MaDVTour)-> where('MaHD',$hd -> MaHD)->get() as $dv)
                          <tr>
                            <td >
                            	
                              {{$dv-> MaHDDV}}
                            </td>
                            <td>
                            	{{$dv-> MaHD}}
                              
                            </td>
                            
                            <td>
                            	{{$dv-> NgayDK}}
                            </td>
                            <td>
                              	<li>Người Lớn: {{$dv -> SLNL}}</li>
                              	<li>Trẻ Em: {{$dv -> SLTE}}</li>
                            </td>
                            <td>
                            
                             	<li>Gía Người Lớn: {{number_format($dv -> Gia)}} VND</li>
                             	<li>Gía Trẻ Em: {{number_format($dv -> GiaTE)}} VND</li>
                            </td>
                            
                            <td>
                              	{{number_format($dv -> ThanhTien)}} VND
                            </td>
                            
                          </tr>
                           @endforeach
                        @endforeach
                        	
                      </tbody>
                    </table>
            </div>
            
            
             

  

@endsection
@section('scriptNV')


  @endsection