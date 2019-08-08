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
              <button class="btn btn-success btn-block">New Project
                <i class="mdi mdi-plus"></i>
              </button>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="indexAdmin">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Trang chủ</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/qlKH/danhsachKH">
              <i  class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Quản lý Khách Hàng</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  data-toggle="collapse" href="#ui-basicNV" aria-expanded="false" aria-controls="ui-basic" >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Quản Lý Nhân Viên</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basicNV">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlNV/danhsachNV"> Nhân Viên Hướng Dẫn </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlNV/danhsachDH">Điều Hành Tour</a>
                </li>
                
                
              </ul>
            </div>
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
                  <a class="nav-link" href="admin/qlTour/XuLyTour"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/XuLyTourMB"> Miền Bắc </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/XuLyTourMT"> Miền Trung </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/XuLyTourMN"> Miền Nam </a>
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
                  <a class="nav-link" href="admin/qlTour/danhsachTour"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/dsTourMB"> Miền Bắc </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/dsTourMT"> Miền Trung </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/dsTourMN"> Miền Nam </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlTour/themTour"> Thêm Tour Mới </a>
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
                  <a class="nav-link" href="admin/qlHD/danhsachHD"> Tất cả </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlHD/dsChuaXN"> Chưa Xác Nhận </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlHD/dsDaXN"> Đã Xác Nhận </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlHD/dsDaHuy"> Đã Hủy Booking</a>
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
                  <a class="nav-link" href="admin/qlThuChi/ThuChiTour"> Thu Chi Theo Tour </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlThuChi/ThuChiNgay"> Thu Chi Theo Ngày </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlThuChi/ThuChiThang">Thu Chi Theo Tháng </a>
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
                  <a class="nav-link" href="admin/qlBlog/danhsachBlog"> Blog Đang Hiển Thị</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlBlog/danhsachBlogHide"> Blog Đang Ẩn </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlBlog/themBlog">Thêm Blog</a>
                </li>
                
              </ul>
            </div>
            
          </li>
          
          
          <li class="nav-item">
            <a class="nav-link"  href="admin/qlDD/danhsachDD" >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Địa Điểm Du Lịch</span>
         </a>
            
          </li>

          <li class="nav-item">
            <a class="nav-link"  href="admin/qlDoiTac/danhsachDT" >
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Đối Tác Dịch Vụ</span>
            </a>
            
          </li>

          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="menu-icon mdi mdi-restart"></i>
              <span class="menu-title">User Pages</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                
                <li class="nav-item">
                  <a class="nav-link" href="admin/login"> Login </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlNV/themNV"> Tạo Tài Khoản Quản trị </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="admin/qlNV/danhsachAD"> Danh Sách Quản trị </a>
                </li>
                
              </ul>
            </div>
          </li>

        </ul>
      </nav>
@section('script')

<script type="text/javascript">
  $(document).ready( function () {
    $('#qltour').click( function(){
      $('#ui-basic').collapse('toggle');
    });
} );

  </script>
   
@endsection