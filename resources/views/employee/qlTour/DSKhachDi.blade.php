@extends('employee.layout.index')

@section('contentNV')
<div class="card">
                <div class="card-body">
                  <div><h4 class="card-title" style=" float: left; line-height: 40px" >DANH SÁCH KHÁCH ĐI TOUR </h4>
                    
                  </div>
                  <a href="employee/PDF/DSKhachDi/{{$MaCTTour}}" class="btn btn-success btn-fw" style="width: 150px; float: right;" >Print</a>
                  <div class="table-responsive">
                    @if(session('thongbao'))
                      <div class= "alert alert-success" >
                        {{session('thongbao')}}

                      </div>
                    @endif
                    
                  </div>
                 

                		<table class="table table-bordered" id ="dsct" >
                      <thead  bgcolor="#308ee0" style="color: #fff">
                        <tr >
                          <th  >
                            Mã Khách
                          </th>
                          <th>
                           Họ Tên
                          </th>
                          
                          
                          <th>
                            Ngày Sinh
                          </th>
                          <th>
                            Giới Tính
                          </th>
                          <th>
                            Địa Chỉ
                          </th>
                          <th>
                            Tel
                          </th>
                                                    
                          <th >
                           Passport
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                      @foreach($hopdong as $hd)
                        @foreach(App\thongtinkhach::where('MaHD',$hd-> MaHD)->get() as $kh)
                          <tr>
                            <td  >
                            	{{ $kh-> MaKhach}}                              
                            </td>
                            <td>
                            	{{ $kh-> HoTen}} 
                              
                            </td>
                            
                            <td>
                            	{{ $kh-> NgaySinh}} 
                            </td>
                            <td>
                            	{{ $kh-> GioiTinh}} 
                            
                            </td>
                            <td>
                             	 {{ $kh-> DiaChi}} 
                            </td>
                            
                            <td>
                             {{ $kh-> Tel}} 
                            </td>
                            <td>
                            	{{ $kh-> Passport}} 
                            </td>
                            
                          </tr>
                        @endforeach
                        @endforeach
                      </tbody>
                    </table>
         

  

@endsection
