@extends('home.layout.index')

@section('contentHome')

  

   

    <div class="site-blocks-cover inner-page-cover" style="background-image: url(upload/video_bg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
             
            <a href="upload/video_bg.mp4" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
           
          
              
            </div>
          </div>
        </div>
      </div>  


    
    <div class="site-section">
      <div class="container">
         <h1 class="text-black font-weight-light" style="text-align: center;">Cẩm Nang Du Lịch</h1>
        <div class="row mb-3 align-items-stretch">
        	@foreach(App\blog::where('TrangThai',1)->inRandomOrder()-> limit(12)->get() as $b)
          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="upload/blog/{{ $b -> HinhAnh}}" alt="Image" class="img-fluid">
              <h2 class="font-size-regular"><a href="home/ListTour/DetailBlog/{{$b -> MaBlog}}">{{ $b -> TieuDe}}</a></h2>
              <div class="meta mb-4">by {{ $b -> user-> TenNV}} <span class="mx-2">&bullet;</span> {{date_format(new DateTime($b-> NgayPost),'d-m-Y')}}<span class="mx-2">&bullet;</span> <a href="#">News</a></div>
              <p>{{ $b -> TomTat}}</p>
            </div> 
          </div>
          @endforeach
          

        </div>
        <div class="row">
          <div class="col-12 text-center">
            <a href="#" class="btn btn-outline-primary border-2 py-3 px-5">Load More Posts...</a>
          </div>
        </div>
      </div>
    </div>

    

@endsection