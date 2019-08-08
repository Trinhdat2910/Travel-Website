<nav class="sidebar sidebar-offcanvas" id="sidebar" >
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                @if(Auth::check())
                <div class="profile-image">
                  <img class="img-xs rounded-circle" src="upload/nhanvien/{{Auth::user()-> HinhAnh}}" alt="profile image">
                </div>
                
                <div class="text-wrapper">
                  <p class="profile-name">{{Auth::user() -> name}}</p>
                  <div>
                    <p class="designation text-muted">{{Auth::user() -> TenNV }} </p>
                    
                    <p style="font-weight: bold"> {{Auth::user() -> chucvu -> TenCV }} <span class="status-indicator online"></span></p>
                  </div>
                </div>
                @endif
              </div>
             
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="indexEmployee">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Trang chủ</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basicT" aria-expanded="false" aria-controls="ui-basic" >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Quản Lý Tour</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basicT">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/XuLyTour"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/XuLyTourMB"> Miền Bắc </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/XuLyTourMT"> Miền Trung </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/XuLyTourMN"> Miền Nam </a>
                </li>
                
              </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic" id="qltour"  >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Tour Mẫu</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/danhsachTour"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/dsTourMB"> Miền Bắc </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/dsTourMT"> Miền Trung </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlTour/dsTourMN"> Miền Nam </a>
                </li>
                
              </ul>
            </div>

          </li>
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basic9" aria-expanded="false" aria-controls="ui-basic" id="qlhd"  >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Hợp Đồng Đặt Tour</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic9">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlHD/danhsachHD"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlHD/dsChuaXN"> Chưa Xác Nhận </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlHD/dsDaXN"> Đã Xác Nhận </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlHD/dsDaHuy"> Đã Hủy Booking</a>
                </li>
               
              </ul>
            </div>

          </li>

                    
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basic7" aria-expanded="false" aria-controls="ui-basic" id="qlthuchi"  >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Quản Lý Thu Chi</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic7">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlThuChi/ThuChiTour"> Thu Chi Theo Tour </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlThuChi/ThuChiNgay"> Thu Chi Theo Ngày </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlThuChi/ThuChiThang">Thu Chi Theo Tháng </a>
                </li>
                
              </ul>
            </div>
            
          </li>
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basic8" aria-expanded="false" aria-controls="ui-basic" id="qlthuchi"  >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Quản Lý Blog</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic8">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlBlog/danhsachBlog"> Blog Đang Hiển Thị</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlBlog/danhsachBlogHide"> Blog Đang Ẩn </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="employee/qlBlog/themBlog">Thêm Blog</a>
                </li>
                
              </ul>
            </div>
            
          </li>
          
          

          
         

        </ul>
      </nav>
@section('scriptNV')

<script type="text/javascript">
  $(document).ready( function () {
    $('#qltour').click( function(){
      $('#ui-basic').collapse('toggle');
    });
} );

  </script>
   
@endsection