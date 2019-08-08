@extends('employee.layout.index')

@section('contentNV')

<div class="card">
                <div class="card-body">
                  <h4 class="card-title">Quản Lý Thu Chi </h4>
                  @foreach(App\chitiettour::where('MaCTTour', $MaCTTour)->get() as $ctt)
                  <h3>Thu Chi Tour {{$ctt -> tour -> TenTour}} - Mã Tour: {{$ctt -> tour -> MaTour}}- {{$ctt -> MaCTTour}} </h3>
                  @endforeach
                  <input type="text" name="MaCTTour" id="MaTour" value="{{$MaCTTour}}" style="display: none;">
                  <a class="TTbtn btn btn-warning" style="width: 170px; float: left; color: #fff; margin-top: 23px; margin-left: 20px;" data-id="{{$MaCTTour}}">Thêm Thanh Toán</a>
                  <a class="Inbtn btn btn-primary btn-success" style="width: 150px; float: left; color: #fff; margin-top: 23px; margin-left: 20px;">In Thống Kê</a>
                  <div class="table-responsive">
                    @if(session('thongbao'))
                      <div class= "alert alert-success" >
                        {{session('thongbao')}}

                      </div>
                    @endif
                    <table class="table table-bordered" id="dshd">
                      <thead  bgcolor="#308ee0" style="color: #fff">
                        <tr>
                          <th >
                            ID
                          </th>
                          <th >
                            Tên Khách Hàng <br>
                            Tên Đối Tác<br>
                            Dịch Vụ
                          </th>
                          <th>
                            Mã Tour                          
                          </th>
                          <th>
                            Loại                        
                          </th>
                          <th>
                            Số Tiền                        
                          </th>
                          <th>
                            Nội Dung                        
                          </th>
                          <th>
                          	Ngày Thanh Toán
                          </th>
                          
                          
                          
                         
                          <th style="text-align: center;">
                            Nhân Viên
                          </th>
                        </tr>
                      </thead>
                      <tbody id='dlThuChi'>
                      	@foreach($thuchi as $tc)
                      	<tr>
                      		<td style="line-height: 20px;">{{ $tc -> id}}</td>
                      		<td style="line-height: 20px;">
                      			@if($tc -> MaHD != null)
                      			{{ $tc -> hopdong-> khachhang-> TenKH}}<br>
                      			{{ $tc -> DichVu}}
                      			@elseif($tc -> MaDVTour != null)
                      			{{ $tc -> dichvutour -> doitac -> TenDoiTac}}<br>
                      			{{ $tc -> DichVu}}
                      			@else
                      			{{ $tc -> DichVu}}
                      			@endif
                      		</td>
                      		<td style="line-height: 20px;">
                      			@foreach(App\chitiettour::where('MaCTTour',$tc -> MaCTTour)->get() as $mact)
                      			Mã Tour: {{ $mact -> MaTour}} - {{ $mact -> MaCTTour}}<br>
                      			Tên Tour: {{ $mact -> tour -> TenTour}}

                      			@endforeach

                      		</td>
                      		<td style="line-height: 20px;">
                      			@if($tc-> LoaiThuChi==1)
                      				Thu
                      			@else
                      				Chi
                      			@endif
                      		</td>
                      		<td style="line-height: 20px;">{{ number_format($tc -> SoTien)}} VND</td>
                      		<td style="line-height: 20px;">
                      			{{ $tc -> NoiDung}}
                      		</td>
                      		<td style="line-height: 20px;">
                      			{{ $tc -> NgayTT}}
                      		</td>
                      		<td style="line-height: 20px;">
                      			@foreach(App\user::where('MaNV',$tc -> MaNV)->get() as $manv)
                      				{{$manv -> TenNV}}
                      			@endforeach
                      		</td>
                      	</tr>
                        
                        @endforeach
                        <tr>
                          <td></td>
                          <td></td>
                          
                          <?php                       	
                          $thu = App\thuchi::where('LoaiThuChi', 1)->where('MaCTTour',$MaCTTour)->sum('SoTien');  
                          $chi = App\thuchi::where('LoaiThuChi', 2)->where('MaCTTour',$MaCTTour)->sum('SoTien'); ?>
                          <td colspan="2">Tổng Thu: <strong>{{ number_format($thu) }} VND </strong></td>
                          <td colspan="2">Tổng Chi: <strong>{{ number_format($chi) }} VND </strong></td>
                          <td colspan="2">Lợi Nhuận:<strong>{{ number_format($thu - $chi) }} VND </strong> </td>
                         
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

 
<div class="modal fade" id="InModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thanh Toán</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="Inform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <h2>Bạn Có Muốn In Thống Kê</h2>
                    @foreach(App\user::where('MaNV',Auth::id())->get() as $nv)
                    <input type="text" name="MaNV" value="{{ $nv -> TenNV}}" style="display: none;">
                    @endforeach
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Print</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>
 <div class="modal fade" id="TTModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Gửi Yêu Cầu Thanh Toán</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form class="forms-sample"  method="POST" id="TTform" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                      <label for="exampleTextarea1">Tên Dịch Vụ</label>
                      <input type="text" class="form-control"   name='DichVu'>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Loại Thu Chi</label>
                      <p><input type="radio" name='thuchi' value="1" checked>Thu</p>
                      <p><input type="radio" name='thuchi' value="2">Chi</p>

                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Số Tiền</label>
                      <input type="text" class="form-control"  onKeyPress="return isNumberKey(event)" name='SoTien' >
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Nội Dung </label>
                      <textarea class="form-control"   name='NoiDung' ></textarea> 
                    </div>
                    <input type="text" class="form-control"   name='MaNV' value="{{Auth::id()}}" style="display: none;">
                    

                             
        <div class="modal-footer">
        <button type="submit" class="btn btn-danger mr-2">Gửi Mail</button>
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
</div>

@endsection
@section('scriptNV')
<script type="text/javascript">
	$(document).ready(function(){
		
    $('.Inbtn').on('click',function(){
             
              
              var tour= $('#MaTour').val();
              $('#Inform').attr('action','employee/PDF/InTour/'+tour);
              $('#InModal').modal('show');
             


        
      });
    $('.TTbtn').on('click',function(){
             
              
              
              $('#TTform').attr('action','employee/qlTour/themthuchi/'+ $(this).data("id"));
              $('#TTModal').modal('show');
             


        
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
