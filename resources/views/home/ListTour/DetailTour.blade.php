@extends('home.layout.index')

@section('contentHome')
    <div class="slide-one-item home-slider owl-carousel">
      @foreach(App\diadiemtour::where('MaTour',$tour -> MaTour)->get() as $dd)
      <div class="site-blocks-cover overlay" style="background-image: url(upload/diadiem/{{ $dd -> diadiemdulich -> HinhAnh}});" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              

              <h1 class="text-white font-weight-light">{{ $tour -> TenTour}}</h1>
              <p class="mb-5">{{ $dd -> diadiemdulich -> TenDD}}</p>
              <p><a  class="btn btn-primary py-3 px-5 text-white">{{ number_format($tour -> Gia)}} VNĐ</a></p>

            </div>
          </div>
        </div>
      </div> 
      @endforeach 

      

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


 {{--    <div class="tab-content p-4 px-5" id="v-pills-tabContent">

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
    
  




    

 
    <div class="site-section">
      
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Tour {{ $tour -> TenTour}} </h2>
            <p class="color-black-opacity-5">{{ $tour -> TieuDe}}</p>
          </div>
        </div>
        <div class="row">
          <div style="padding-left: 40px;"><p>Điểm Xuất Phát: {{ $tour -> DiemKhoiHanh}} </p></div>
          <div style="padding-left: 40px;"><p>Thời Gian: {{ $tour -> SoNgay}} Ngày {{ $tour -> SoNgay -1}} Đêm</p></div>
        	<div style="width: 100%;  background-color: #ffeddf"> 

        		<div >
        			<div style="width: 14%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Khởi Hành</div>

        			<div style="width: 14%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Mã Tour</div>
        			<div style="width: 14%; height: 40px;  float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Còn Trống</div>
        			<div style="width: 14%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Giá </div>
        			<div style="width: 14%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Giá Trẻ Em</div>
        			<div style="width: 14%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> Giá Em Bé</div>
        			<div style="width: 16%; height: 40px; float: left; border-bottom: 2px solid #000; text-align: center; line-height: 40px;"> </div>
        			
        		</div>
        		@foreach( App\chitiettour::where('MaTour', $tour -> MaTour)-> where('TinhTrang', 1)->orderBy('NgayKhoiHanh', 'asc')-> get() as $ct)
        		<div >
        			<div style="width: 14%; height: 40px;  float: left;  text-align: center; line-height: 40px;"> {{ date_format(new DateTime($ct -> NgayKhoiHanh),'d-m-Y') }}</div>
        			<div style="width: 14%; height: 40px;  float: left;  text-align: center; line-height: 40px;"> {{ $ct -> MaTour }}-{{ $ct -> MaCTTour}}</div>
        			<div style="width: 14%; height: 40px;  float: left;  text-align: center; line-height: 40px;"> {{ $ct -> SL - $ct -> SoChoDaDat }} Chỗ</div>
        			<div style="width: 14%; height: 40px;  float: left;  text-align: center; line-height: 40px; color: #ef6c57;" > {{ number_format($ct -> tour-> Gia) }} VND</div>
        			<div style="width: 14%; height: 40px; float: left;  text-align: center; line-height: 40px; color: #ef6c57;"> {{ number_format($ct -> tour-> GiaTE) }} VND</div>
        			<div style="width: 14%; height: 40px;  float: left; text-align: center; line-height: 40px; color: #ef6c57;"> {{ number_format($ct -> tour-> GiaEB) }} VND</div>
        			<div style="width: 16%; height: 40px; float: left; text-align: center; line-height: 40px;"> <a href="home/BookTour/Booking/{{ $ct -> MaCTTour }}" class="btn btn-primary py-3 px-5 text-white" style="height: 10px; line-height: 2px;float: right;">Mua Tour</a></div>
        			
        		</div>
        		@endforeach
        	</div>
          
         
        </div>
        <div class="row">
	        <div class="row justify-content-center mb-5" style="width: 100%; margin-top: 50px;">
	          <div class="col-md-7 text-center">
	            <h2 class="font-weight-light text-black">Lịch Trình Tour</h2>
	            
	          </div>
	        </div>
        	<div id="LichTrinh"  style="width: 100%;  border: 1px solid #666;  box-shadow: box-shadow: 5px 5px 5px #666; -moz-box-shadow: 5px 5px 5px #666;    -webkit-box-shadow: 5px 5px 5px #666;">
        		<div id="noidung" style="width: 90%;   margin: 0 auto; padding-top: 20px;">
        			<?php echo $tour -> MoTa ?>
        		</div>
        	</div>
        </div>
    </div>
        			    
        			
        			
        			    <!-- <div class="site-section bg-light">
        			      
        			    </div> -->
        			
        			
        			    {{-- <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(home/images/hero_bg_2.jpg); background-attachment: fixed;">
        			      <div class="container">
        			        <div class="row align-items-center justify-content-center text-center">
        			
        			          <div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
        			            <a href="https://vimeo.com/channels/staffpicks/93951774" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
        			            <h2 class="text-white font-weight-light mb-5 h1">Experience Our Outstanding Services</h2>
        			            
        			          </div>
        			        </div>
        			      </div>"
    </div>  --}} 

    

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
    
    
    @endsection