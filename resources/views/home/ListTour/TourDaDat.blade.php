@extends('home.layout.index')

@section('contentHome')
    <div class="slide-one-item home-slider owl-carousel" >
     
      <div {{-- class="site-blocks-cover overlay" --}} style="background-image: url(upload/tour/img_3.jpg); height: 300px; background-size: cover; background-position: center;"{{--  data-aos="fade" --}} {{-- data-stellar-background-ratio="0.5" --}} >
        <div class="container" >
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
             
              <p style="margin-top: 130px; color: #444; font-size: 50px; font-weight: bold;"> Thông Tin Tour Đã Đặt</p>

            </div>
          </div>
        </div>
      </div> 
     
    </div>

{{-- 
    <div class="site-section">
      
      <div class="container overlap-section">
        <div class="row">
          @foreach(App\tour::where('MaKV',1) ->limit(1)->get(); as $t)
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <a href="#" class="unit-1 text-center">
              <img src="upload/tour/{{ $t -> HinhAnh}}" alt="Image" class="img-fluid" style="height: 400px;">
              <div class="unit-1-text">
                <h3 class="unit-1-heading">Du Lịch {{ $t -> khuvuc -> TenKV }}</h3>
              </div>
            </a>
          </div>
          @endforeach
          @foreach(App\tour::where('MaKV',2) ->limit(1)->get(); as $t)
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <a href="#" class="unit-1 text-center">
              <img src="upload/tour/{{ $t -> HinhAnh}}" alt="Image" class="img-fluid" style="height: 400px;">
              <div class="unit-1-text">
                <h3 class="unit-1-heading">Du Lịch {{ $t -> khuvuc -> TenKV }}</h3>
              </div>
            </a>
          </div>
          @endforeach
          @foreach(App\tour::where('MaKV',3) ->limit(1)->get(); as $t)
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <a href="#" class="unit-1 text-center">
              <img src="upload/tour/{{ $t -> HinhAnh}}" alt="Image" class="img-fluid" style="height: 400px;">
              <div class="unit-1-text">
                <h3 class="unit-1-heading">Du Lịch {{ $t -> khuvuc -> TenKV }}</h3>
              </div>
            </a>
          </div>
          @endforeach
        </div>
      </div>
    
    </div> --}}


   {{--  <div class="tab-content p-4 px-5" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
              	<form action="#" class="search-destination">
              		<div class="row">
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">From</label>
	              				<div class="form-field">
	              					<div class="icon"><span class="icon-my_location"></span></div>
					                <input type="text" class="form-control" placeholder="From">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Where</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control" placeholder="Where">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check In</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="date" class="form-control checkin_date" placeholder="Check In">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check Out</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="date" class="form-control checkout_date" placeholder="From">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-self-end">
              				<div class="form-group">
              					<div class="form-field">
					                <input type="submit" value="Search" class="form-control btn btn-primary">
					              </div>
				              </div>
              			</div>
              		</div>
              	</form>
              </div>

            </div> --}}
    
  




    
            @if(session('thongbao1'))
                      <div class= "alert alert-success" >
                        {{session('thongbao1')}}

                      </div>
                    @endif
 
    <div class="site-section">
      
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Thông Tin Tour</h2>
            <p class="color-black-opacity-5"></p>
          </div>
        </div>
        <div class="row">
        	<div id="tbmytour">
		          <table style="margin-bottom: 10px; box-shadow:  0 0 15px 1px #666;">
		          	<thead>
		          		<tr>
		          			<td width="100px">Mã Hợp Đồng</td>
		          			<td width="200px">Tour</td>
		          			<td width="140px">Ngày đi</td>
		          			<td width="140px">	Ngày về	</td>
		          			<td width="150px">Ngày Đặt</td>
		          			<td width="150px">Số Hành Khách</td>
		          			<td width="150px">Đơn Giá</td>
		          			<td width="150px">Tổng</td>

		          		</tr>
		          	</thead>
		          	<tbody>
		          		@foreach(App\hopdong::where('MaKH',(Auth::guard('khachs') -> id()))->get() as $hd)
		          		<tr style="border-bottom: 1px solid #000;">
		          			<td width="100px">{{ $hd -> MaHD}}</td>
		          			<td width="200px"><a href="home/ListTour/DetailTour/{{ $hd -> chitiettour-> MaTour}}">{{ $hd -> chitiettour -> tour-> TenTour}}<br>
		          				Mã Tour: {{ $hd -> chitiettour -> tour-> MaTour}}-{{ $hd -> chitiettour -> MaCTTour}}</a></td>
		          			<td width="140px">{{ date_format(new DateTime( $hd ->  chitiettour-> NgayKhoiHanh ),'d-m-Y') }}</td>
		          			<td width="140px">{{ date_format(new DateTime( $hd ->  chitiettour-> NgayKetThuc),'d-m-Y') }}	</td>
		          			<td width="150px">{{ date_format(new DateTime( $hd ->  chitiettour-> NgayDat),'d-m-Y') }}</td>
		          			<td width="150px" style="text-align: left; padding-left: 5px">
		          				<li style="list-style-type: none;"> Người Lớn : {{ $hd -> SLNL}} </li>
		          				<li style="list-style-type: none;"> Trẻ Em: {{ $hd -> SLTE}} </li>
		          				<li style="list-style-type: none;"> Em Bé : {{ $hd -> SLEB}} </li>



		          			</td>
		          			<td width="150px">
		          				<li style="list-style-type: none;">{{ number_format($hd -> chitiettour -> tour -> Gia)}} VND </li>
		          				<li style="list-style-type: none;">{{ number_format($hd -> chitiettour -> tour -> GiaTE)}} VND</li>
		          				<li style="list-style-type: none;">{{ number_format($hd -> chitiettour -> tour -> GiaEB)}} VND </li>

		          			</td>
		          			<td width="150px">{{ number_format($hd -> ThanhTien )}} VND</td>

		          		</tr>
		          		@endforeach
		          		
		          	</tbody>
		          </table>
         	</div>
        </div>
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Thông Tin Hành Khách Đi Tour</h2>
            <p class="color-black-opacity-5"></p>
          </div>
        </div>
        <div class="row">
          <div id="tbmytour">
              <table style="margin-bottom: 10px; box-shadow:  0 0 15px 1px #666;">
                <thead>
                  <tr>
                    <td width="100px">Mã Khách</td>
                    <td width="200px">Tên Khách</td>
                    <td width="100px">Ngày Sinh</td>
                    <td width="100px">Giới Tính</td>
                    <td width="100px">Tel</td>
                    <td width="150px">Địa Chỉ</td>
                    <td width="100px">Passport</td>
                    <td width="150px">Mã HD</td>
                    <td width="100px">Action</td>

                  </tr>
                </thead>
                <tbody>
                  @foreach(App\hopdong::where('MaKH',(Auth::guard('khachs') -> id()))->get() as $hd)
                  @foreach(App\thongtinkhach::where('MaHD',$hd -> MaHD)->get() as $tt)
                  <tr style="border-bottom: 1px solid #000; line-height: 30px;">
                    <td width="100px">{{ $tt -> MaKhach}}</td>
                    <td width="200px"> {{ $tt -> HoTen}}</td>
                    <td width="140px">{{ date_format(new DateTime( $tt ->  NgaySinh ),'d-m-Y') }}</td>
                    <td width="140px">{{ $tt-> GioiTinh }} </td>
                    <td width="150px">{{ $tt -> Tel }}</td>
                    <td width="150px" >
                      {{$tt-> DiaChi}}
                    </td>
                    <td width="150px">
                        {{$tt -> Passport}}
                    </td>
                    <td width="150px"> {{ $tt -> MaHD}}</td>
                    <td width="150px"><a class='SuaTTK btn btn-dark btn-fw' data-id='{{ $tt -> MaKhach}}' data-hoten='{{ $tt -> HoTen}}' data-gioitinh='{{ $tt-> GioiTinh }}' data-ngaysinh='{{$tt ->  NgaySinh}}' data-diachi='{{$tt-> DiaChi}}' data-tel='{{ $tt -> Tel }}' data-passport='{{$tt -> Passport}}' style='width: 100px; color:#fff'>Sửa</a></td>

                  </tr>
                  @endforeach
                  @endforeach
                  
                </tbody>
              </table>
          </div>
        </div>
      </div>
    


    <!-- <div class="site-section bg-light">
      
    </div> -->


    <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(upload/video_bg.jpg); background-attachment: fixed;">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
            <a href="upload/video_bg.mp4" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
          
            
          </div>
        </div>
      </div>
    </div>  

   {{--  <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Our Services</h2>
            <p class="color-black-opacity-5">We Offer The Following Services</p>
          </div>
        </div>
        <div class="row align-items-stretch">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-airplane"></span></div>
              <div>
                <h3>Air Ticketing</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-ship"></span></div>
              <div>
                <h3>Cruises</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-route"></span></div>
              <div>
                <h3>Tour Packages</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>


          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-hotel"></span></div>
              <div>
                <h3>Hotel Accomodations</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-sailboat"></span></div>
              <div>
                <h3>Sea Explorations</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-ski"></span></div>
              <div>
                <h3>Ski Experiences</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div> --}}


    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Cẩm Nang Du Lịch</h2>
            <p class="color-black-opacity-5"> Xem &amp; Cập Nhật Tin Tức Du Lịch</p>
          </div>
        </div>
        <div class="row mb-3 align-items-stretch">
          @foreach(App\blog::where('TrangThai',1)->limit(2)->get() as $b1)
          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="upload/blog/{{ $b1-> HinhAnh }}" alt="Image" class="img-fluid">
              <h2 class="font-size-regular"><a href="#">{{ $b1-> TieuDe }}</a></h2>
              <div class="meta mb-4">by {{ $b1-> user-> TenNV }} <span class="mx-2">&bullet;</span>{{date_format(new DateTime($b1-> NgayPost),'d-m-Y')}} <span class="mx-2">&bullet;</span> <a href="#">News</a></div>
              <p>{{ $b1-> TomTat }}</p>
            </div> 
          </div>
          @endforeach
         
        </div>
        <div class="row">
          <div class="col-12 text-center">
            <a href="home/ListTour/ListBlog" class="btn btn-outline-primary border-2 py-3 px-5">Xem Tất Cả Bài Viết</a>
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
                      <input type="text" class="form-control" id="Tel5" onKeyPress="return isNumberKey(event)" name='Tel' required>
                    </div>
                    <div class="form-group" >
                      <label for="exampleTextarea1">Địa Chỉ</label>
                      <input type="text" class="form-control" id="DiaChi5"  name='DiaChi' required>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Passport</label>
                      <input type="text" class="form-control" id="Passport5" onKeyPress="return isNumberKey(event)" name='Passport'>
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
    @endsection
    @section('script')
    <script type="text/javascript">
      $(document).ready(function (){
          $('.SuaTTK').click(function (){
              $('#HoTen5').val($(this).data("hoten"));
              $('#GioiTinh5').val($(this).data("gioitinh"));
              $('#Tel5').val($(this).data("tel"));
              $('#NgaySinh5').val($(this).data("ngaysinh"));
              $('#DiaChi5').val($(this).data("diachi"));
              $('#Passport5').val($(this).data("passport"));
             
            $('#SuaTTKModal').modal('show');
            $('#SuaTTKform').attr('action','home/BookTour/SuaTTK/'+ $(this).data("id"));
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