@extends('home.layout.index')

@section('contentHome')
    <div class="slide-one-item home-slider owl-carousel">
      @foreach(App\tour::where('NoiBat',1)->where('MaKV',2)->inRandomOrder() ->get() as $t)
      <div class="site-blocks-cover overlay" style="background-image: url(upload/tour/{{ $t -> HinhAnh }});" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              

              <h1 class="text-white font-weight-light">{{ $t -> TenTour}}</h1>
              <p class="mb-5">{{ $t -> TieuDe}}</p>
              <p><a href="home/ListTour/DetailTour/{{ $t -> MaTour }}" class="btn btn-primary py-3 px-5 text-white">Đặt Ngay!</a></p>

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


    <div class="tab-content p-4 px-5" id="v-pills-tabContent" style=" width: 80%; margin: 0 auto">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                <form action="home/ListTour/Search" class="search-destination" enctype='multipart/form-data' method="get">
                  <div class="row">
                    <div class="col-md align-items-end">
                      <div class="form-group">
                        <label for="#">Điểm Khởi Hành</label>
                        <div class="form-field">
                          <div class="icon"><span class="icon-my_location"></span></div>
                          
                          <select class="form-control" placeholder="Điểm Khởi Hành" name="DiemKH">
                            <option value="Hà Nội"> Hà Nội </option>
                            <option value="Đà Nẵng"> Đà Nẵng </option>
                            <option value="Hồ Chí Minh"> Hồ Chí Minh</option>
                            
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-md align-items-end">
                      <div class="form-group">
                        <label for="#">Điểm Đến</label>
                        <div class="form-field">
                          <div class="icon"><span class="icon-map-marker"></span></div>
                          <input type="text" class="form-control" placeholder="Điểm Đến" name="DiemDen">
                        </div>
                      </div>
                    </div>
                    <div class="col-md align-items-end">
                      <div class="form-group">
                        <label for="#">Ngày Khởi Hành</label>
                        <div class="form-field">
                          <div class="icon"><span class="icon-map-marker"></span></div>
                          <input type="date" class="form-control checkin_date" placeholder="Check In" name="NgayKH" id="NgayKH">
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

            </div>
    
  




    

 
    <div class="site-section">
      
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Điểm Đến Khu Vực Miền Trung</h2>
            <p class="color-black-opacity-5">Hãy Chọn Điểm Đến Tiếp Theo Của Bạn</p>
          </div>
        </div>
        <div class="row">
          @foreach(App\tour::where('TinhTrang',1)->where('MaKV',2)->inRandomOrder()->get() as $t)
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <a href="home/ListTour/DetailTour/{{ $t -> MaTour }}" class="unit-1 text-center">
              <img src="upload/tour/{{ $t -> HinhAnh}}" alt="Image" class="img-fluid" style="height: 400px;">
              <div class="unit-1-text">
                <strong class="text-primary mb-2 d-block">{{ number_format($t -> Gia)}} VND</strong>
                <h3 class="unit-1-heading">{{ $t -> TenTour}}</h3>
                <p>Khởi Hành: {{$t -> DiemKhoiHanh}}</p>
              </div>
            </a>
          </div>
          @endforeach
         
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

  {{--   <div class="site-section bg-light">
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
    </div>
 --}}

    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2 class="font-weight-light text-black">Cẩm Nang Du Lịch</h2>
            <p class="color-black-opacity-5"> Xem &amp; Cập Nhật Tin Tức Du Lịch</p>
          </div>
        </div>
        <div class="row mb-3 align-items-stretch">
          @foreach(App\blog::where('TrangThai',1)->inRandomOrder()->limit(2)->get() as $b1)
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
     @section('script')

    <script type="text/javascript">
      $('#NgayKH').change(function(){
        var ngaykh = $('#NgayKH').val();
          var datekh= new Date(ngaykh);
          var today = new Date();
          var now=Number(today);
          var numngaykh= Number(datekh);
       
          if((numngaykh- now)<0){
            alert('Ngày Khởi Hành phải lớn hơn ngày hiện tại');
            $('#NgayKH').val("");

          }
      });
    </script>
    @endsection