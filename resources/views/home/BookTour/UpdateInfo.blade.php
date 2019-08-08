@extends('home.layout.index')

@section('contentHome')
  <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-7 mb-5" style="margin: 0 auto">

            <h3 style="margin-left: 110px;">Cập Nhật Thông Tin Cá Nhân</h3>
            @foreach(App\khachhang::where('MaKH', (Auth::guard('khachs') -> id()))->get() as $kh)
            <form action="home/BookTour/UpdateInfo/{{$kh -> MaKH}}" class="p-5 bg-white" style="margin: 0 auto" enctype='multipart/form-data' method="post">
             	@if(session('thongbao'))
                      <div class= "alert alert-success" >
                        {{session('thongbao')}}

                      </div>
                    @endif
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
            	<div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="fname">Username</label>
                  <input type="text" id="fuser"  class="form-control" readonly value="{{$kh -> Username}}">
                </div>
                
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="fname">Họ Tên</label>
                  <input type="text" id="fname" name="TenKH" class="form-control" required value="{{$kh -> TenKH}}">
                </div>
                
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" name="Email" class="form-control" required value="{{$kh -> Email}}">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Số Điện Thoại</label> 
                  <input type="text" id="subject"  name="Tel" class="form-control" required value="{{$kh -> Tel}}">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Địa Chỉ</label> 
                  <textarea name="DiaChi" id="DiaChi" cols="30" rows="4" class="form-control" placeholder="Nhập Địa Chỉ" required > {{$kh -> DiaChi}}</textarea>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Update" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
            @endforeach
          </div>
          
        </div>
      </div>
    </div>

@endsection