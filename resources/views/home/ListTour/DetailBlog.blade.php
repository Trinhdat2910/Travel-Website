@extends('home.layout.index')

@section('contentHome')
    <div class="slide-one-item home-slider owl-carousel">
      
      <div class="site-blocks-cover overlay" style="background-image: url(upload/blog/{{ $blog -> HinhAnh}});" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              

              <h1 class="text-white font-weight-light">{{ $blog -> TieuDe}}</h1>
              {{-- <p class="mb-5">{{ $dd -> diadiemdulich -> TenDD}}</p> --}}
              {{-- <p><a  class="btn btn-primary py-3 px-5 text-white">{{ number_format($tour -> Gia)}} VNĐ</a></p> --}}
              <div class="meta mb-4" style="color: #ef6c57;">by {{ $blog -> user-> TenNV}} <span class="mx-2">&bullet;</span> {{date_format(new DateTime($blog-> NgayPost),'d-m-Y')}}<span class="mx-2"></span></div>
            </div>
          </div>
        </div>
      </div> 
     

      

    </div>


 
    <div class="site-section">
      
      <div class="container">
        
          
         
        </div>
        <div class="row">
	        
        	<div id="LichTrinh"  style="width: 90%;margin: 0 auto;  border: 1px solid #666;  box-shadow: box-shadow: 5px 5px 5px #666; -moz-box-shadow: 5px 5px 5px #666;    -webkit-box-shadow: 5px 5px 5px #666;">
        		<div id="noidung" style="width: 90%;   margin: 0 auto; padding-top: 20px;">
        		    <div style="font-weight: bold;"> {{ $blog -> TomTat}}</div>
                <div> <?php echo $blog -> NoiDung ?></div>

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

   </div>

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