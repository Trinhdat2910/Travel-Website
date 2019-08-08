<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes(['register' => false]);
Route::get('admin/login','LoginController@getLogin')->name('login');
Route::post('admin/login','LoginController@postLogin');
Route::get('logoutAdmin','LoginController@getLogoutAdmin');


// Route::get('admin/login','NhanVienController@getLogin')->name('login');
// Route::post('admin/login','NhanVienController@postLogin');
// Route::get('logoutAdmin','NhanVienController@getLogoutAdmin');

Route::get('loginMember','KhachHangController@getLogin');
Route::post('loginMember','KhachHangController@postLogin');
Route::get('logoutMember','KhachHangController@getLogout');

Route::get('registerMember','KhachHangController@getRegister');
Route::post('Member','KhachHangController@postRegisterMember');


Route::get('admin','HomeController@getIndexAdmin')->middleware('adminLogin');
Route::get('','IndexController@getIndex');
Route::get('indexAdmin','IndexController@getIndexAdmin')->middleware('adminLogin');
Route::get('indexEmployee','IndexController@getIndexEmployee')->middleware('employeeLogin');;
Route::get('error_truycap','IndexController@getErrorTruyCap');
Route::get('error_truycapNV','IndexController@getErrorTruyCapNV');



Route::group(['prefix'=>'admin','middleware'=>'adminLogin'],function(){
	Route::group(['prefix'=>'qlNV'],function(){
		Route::get('danhsachNV','NhanVienController@getDanhSachNV');
		Route::get('danhsachDH','NhanVienController@getDanhSachDH');
		Route::get('danhsachAD','NhanVienController@getDanhSachAD');

		Route::get('themNV','NhanVienController@getThemNV');
		Route::post('themNV','NhanVienController@postThemNV');
		Route::post('themDH','NhanVienController@postThemDH');
		Route::post('themAD','NhanVienController@postThemAD');

		Route::get('editNV/{MaNV}','NhanVienController@getEditNV');
		Route::put('suaNV/{MaNV}','NhanVienController@SuaNV');

		Route::post('xoaNV/{MaNV}','NhanVienController@XoaNV');
	});

	Route::group(['prefix'=>'qlKH'],function(){
		Route::get('danhsachKH','KhachHangController@getDanhSachKH');


		Route::get('editKH/{MaKH}','KhachHangController@getEditKH');
		Route::put('suaKH/{MaKH}','KhachHangController@SuaKH');

		Route::post('xoaKH/{MaKH}','KhachHangController@XoaKH');
	});

	Route::group(['prefix'=>'qlDD'],function(){
		Route::get('danhsachDD','DiaDiemController@getDanhSachDD');

		Route::get('themDD','DiaDiemController@getThemDD');
		Route::post('themDD','DiaDiemController@postThemDD');

		Route::get('editDD/{MaDD}','DiaDiemController@getEditDD');
		Route::put('suaDD/{MaDD}','DiaDiemController@SuaDD');


		Route::post('xoaDD/{MaDD}','DiaDiemController@XoaDD');
	});
	Route::group(['prefix'=>'qlDoiTac'],function(){
		Route::get('danhsachDT','DoiTacController@getDanhSachDT');

		Route::get('themDT','DoiTacController@getThemDT');
		Route::post('themDT','DoiTacController@postThemDT');

		Route::get('suaDT/{MaDT}','DoiTacController@getSuaDT');
		Route::post('suaDT/{MaDT}','DoiTacController@postSuaDT');
		Route::get('xoaDV/{MaDV}','DoiTacController@XoaDV');
		Route::get('xoaDT/{MaDT}','DoiTacController@getXoaDT');
	});

	Route::group(['prefix'=>'qlHD'],function(){
		Route::get('danhsachHD','HopDongController@getDanhSachHD');
		Route::get('dsChuaXN','HopDongController@getdsChuaXN');
		Route::get('dsDaXN','HopDongController@getdsDaXN');
		Route::get('dsDaHuy','HopDongController@getdsDaHuy');

		
		Route::post('SuaBook/{MaHD}','HopDongController@postSuaBook');
		Route::post('SuaTTK/{MaKhach}','HopDongController@postSuaTTK');
		Route::post('ThemTTK/{MaHD}','HopDongController@postThemTTK');
		Route::post('XoaTTK/{MaKhach}','HopDongController@postXoaTTK');

		Route::get('ListHDTour/{MaCTTour}','HopDongController@getListHDTour');



		Route::get('XuLyHD/{MaHD}','HopDongController@getXuLyHD');
		Route::post('XuLyHD/{MaHD}','HopDongController@postXuLyHD');

		Route::get('UpdateDVHD/{MaHD}','HopDongController@getUpdateDVHD');
		Route::post('UpdateDVHD/{MaHD}','HopDongController@postUpdateDVHD');
		Route::post('ThanhToanHD','HopDongController@postThanhToanHD');

		Route::post('XacNhanHD','HopDongController@postXacNhanHD');
		Route::post('HoanTra','HopDongController@postHoanTra');

		Route::post('HuyBook/{MaHD}/{MaCTTour}','HopDongController@postHuyBook');

		Route::get('xoaHD/{MaHD}','HopDongController@getXoaHD');
	});
	Route::group(['prefix'=>'qlBieuMau'],function(){
		Route::post('YCThanhToanHD','SendMailController@postYCThanhToanHD');
		Route::post('MailYCDT','SendMailController@postMailYCDT');

	});
	Route::group(['prefix'=>'qlBlog'],function(){
		Route::get('danhsachBlog','BlogController@getDSBlog');
		Route::get('danhsachBlogHide','BlogController@getDSBlogHide');

		Route::get('themBlog','BlogController@getAddBlog');
		Route::post('themBlog','BlogController@postAddBlog');
		Route::post('XoaBlog/{MaBlog}','BlogController@postXoaBlog');
		Route::post('showBlog/{MaBlog}','BlogController@postshowBlog');
		Route::post('hideBlog/{MaBlog}','BlogController@posthideBlog');
		Route::get('suaBlog/{MaBlog}','BlogController@getEditBlog');
		Route::post('suaBlog/{MaBlog}','BlogController@postEditBlog');
		Route::get('chitietBlog/{MaBlog}','BlogController@getchitietBlog');
		

	});

	Route::group(['prefix'=>'qlThuChi'],function(){
		Route::get('ThuChiTour','ThuChiController@ThuChiTour');
		Route::get('ThuChiNgay','ThuChiController@ThuChiNgay');
		Route::get('ThuChiThang','ThuChiController@ThuChiThang');

	});

	Route::group(['prefix'=>'PDF'],function(){
		Route::get('InHD/{MaHD}','PDFController@InHD');

		Route::post('InThang/{ngay1}/{ngay2}','PDFController@InThang');
		Route::post('InTour/{macttour}','PDFController@InTour');
		Route::post('InNgay/{date}','PDFController@InNgay');
		Route::get('DSKhachDi/{MaCTTour}','PDFController@DSKhachDi');
		Route::get('InLT/{LichTrinh}','PDFController@InLT');
		

	});


	Route::group(['prefix'=>'qlTour'],function(){
		Route::get('danhsachTour','TourController@getDanhSachTour');
		Route::get('dsTourMB','TourController@getdsTourMB');
		Route::get('dsTourMT','TourController@getdsTourMT');
		Route::get('dsTourMN','TourController@getdsTourMN');

		Route::get('themTour','TourController@getThemTour');
		Route::post('themTour','TourController@postThemTour');

		Route::get('suaTour/{MaTour}','TourController@getSuaTour');
		Route::post('suaTour/{MaTour}','TourController@postSuaTour');

		Route::get('xoaTour/{MaTour}','TourController@getXoaTour');

		Route::get('XuLyTour','TourController@getXuLyTour');
		Route::get('XuLyTourMB','TourController@getXuLyTourMB');
		Route::get('XuLyTourMT','TourController@getXuLyTourMT');
		Route::get('XuLyTourMN','TourController@getXuLyTourMN');
		
		Route::get('thuchitour/{MaCTTour}','TourController@getthuchitour');
		Route::post('themthuchi/{MaCTTour}','TourController@themthuchi');

		Route::get('danhsachcttour/{MaTour}','TourController@getdanhsachCTTour');

		Route::get('chitiettour/{MaCTTour}','TourController@getChiTietTour');
		Route::get('ThucTrangDV/{MaDVTour}','TourController@getThucTrangDV');

		Route::post('themDDDL/{MaTour}','TourController@postThemDDDL');
		Route::post('xoaDDDL/{id}','TourController@XoaDDDL');

		Route::get('themDV/{MaCTTour}','TourController@getThemDVTour');
		Route::post('themDVTour/{MaCTTour}','TourController@postThemDVTour');
		Route::post('ThemCB/{MaCTTour}','TourController@postThemCB');
		Route::post('SuaCB/{MaDVTour}','TourController@postSuaCB');

		Route::get('DSKhachDi/{MaCTTour}','TourController@getDSKhachDi');

		Route::post('ThanhToanDV','TourController@postThanhToanDV');


		Route::post('xoaDVTour/{id}','TourController@xoaDVTour');
		Route::put('suaDVTour/{id}','TourController@suaDVTour');

		
		Route::post('themCTTour/{MaTour}','TourController@postThemCTTour');
		Route::put('suaCTTour/{MaCTTour}','TourController@suaCTTour');
		Route::post('xoaCTTour/{id}','TourController@xoaCTTour');

		Route::post('shownoibat/{id}','TourController@showNoiBat');
		Route::post('hidenoibat/{id}','TourController@hideNoiBat');
		Route::post('showtt/{id}','TourController@showTinhTrang');
		Route::post('hidett/{id}','TourController@hideTinhTrang');

		Route::post('showttCT/{id}','TourController@showTinhTrangCT');
		Route::post('hidettCT/{id}','TourController@hideTinhTrangCT');
	});
	Route::group(['prefix'=>'ajax'],function(){
		Route::get('doitac/{tinh}{dv}','AjaxController@getDoiTac');
		Route::get('tendichvu/{dt}','AjaxController@getDV');
		Route::get('giadichvu/{iddv}','AjaxController@getGiaDV');
		Route::get('giadichvuTE/{iddv}','AjaxController@getGiaDVTE');
		Route::get('diadiemdl/{tinh}','AjaxController@getDiaDiemDL');
		Route::get('tinh/{qg}','AjaxController@getTinh');
		Route::get('khuvuc/{lt}','AjaxController@getKhuVuc');
		Route::get('nhomtour/{kv}','AjaxController@getNhomTour');
		Route::get('timcb/{kh}/{dd}/{ngaybay}','AjaxController@getTimCB');
		Route::get('TimTour/{Tour}','AjaxController@getTimTour');
		Route::get('TimTCTour/{macttour}','AjaxController@getTimTCTour');
		Route::get('TimTCNgay/{ngay}','AjaxController@getTimTCNgay');
		Route::get('TimTCThang/{ngay1}/{ngay2}','AjaxController@getTimTCThang');
		Route::get('dskhach/{mahd}','AjaxController@getDSKhach');
		Route::get('chuakh/{matour}','AjaxController@chuakh');
		Route::get('danghd/{matour}','AjaxController@danghd');
		Route::get('dakt/{matour}','AjaxController@dakt');
	});
});


Route::group(['prefix'=>'employee','middleware'=>'employeeLogin'],function(){
	Route::group(['prefix'=>'qlNV'],function(){
		Route::get('danhsachNV','NhanVienNVController@getDanhSachNV');
		Route::get('danhsachDH','NhanVienNVController@getDanhSachDH');

		Route::get('themNV','NhanVienNVController@getThemNV');
		Route::post('themNV','NhanVienNVController@postThemNV');
		Route::post('themDH','NhanVienNVController@postThemDH');

		Route::get('editNV/{MaNV}','NhanVienNVController@getEditNV');
		Route::put('suaNV/{MaNV}','NhanVienNVController@SuaNV');

		Route::post('xoaNV/{MaNV}','NhanVienNVController@XoaNV');
	});

	Route::group(['prefix'=>'qlKH'],function(){
		Route::get('danhsachKH','KhachHangNVController@getDanhSachKH');


		Route::get('editKH/{MaKH}','KhachHangNVController@getEditKH');
		Route::put('suaKH/{MaKH}','KhachHangNVController@SuaKH');

		Route::post('xoaKH/{MaKH}','KhachHangNVController@XoaKH');
	});

	Route::group(['prefix'=>'qlDD'],function(){
		Route::get('danhsachDD','DiaDiemNVController@getDanhSachDD');

		Route::get('themDD','DiaDiemNVController@getThemDD');
		Route::post('themDD','DiaDiemNVController@postThemDD');

		Route::get('editDD/{MaDD}','DiaDiemNVController@getEditDD');
		Route::put('suaDD/{MaDD}','DiaDiemNVController@SuaDD');


		Route::post('xoaDD/{MaDD}','DiaDiemNVController@XoaDD');
	});
	Route::group(['prefix'=>'qlDoiTac'],function(){
		Route::get('danhsachDT','DoiTacNVController@getDanhSachDT');

		Route::get('themDT','DoiTacNVController@getThemDT');
		Route::post('themDT','DoiTacNVController@postThemDT');

		Route::get('suaDT/{MaDT}','DoiTacNVController@getSuaDT');
		Route::post('suaDT/{MaDT}','DoiTacNVController@postSuaDT');
		Route::get('xoaDV/{MaDV}','DoiTacNVController@XoaDV');
		Route::get('xoaDT/{MaDT}','DoiTacNVController@getXoaDT');
	});

	Route::group(['prefix'=>'qlHD'],function(){
		Route::get('danhsachHD','HopDongNVController@getDanhSachHD');
		Route::get('dsChuaXN','HopDongNVController@getdsChuaXN');
		Route::get('dsDaXN','HopDongNVController@getdsDaXN');
		Route::get('dsDaHuy','HopDongNVController@getdsDaHuy');

		
		Route::post('SuaBook/{MaHD}','HopDongNVController@postSuaBook');
		Route::post('SuaTTK/{MaKhach}','HopDongNVController@postSuaTTK');
		Route::post('ThemTTK/{MaHD}','HopDongNVController@postThemTTK');
		Route::post('XoaTTK/{MaKhach}','HopDongNVController@postXoaTTK');

		Route::get('ListHDTour/{MaCTTour}','HopDongNVController@getListHDTour');



		Route::get('XuLyHD/{MaHD}','HopDongNVController@getXuLyHD');
		Route::post('XuLyHD/{MaHD}','HopDongNVController@postXuLyHD');

		Route::get('UpdateDVHD/{MaHD}','HopDongNVController@getUpdateDVHD');
		Route::post('UpdateDVHD/{MaHD}','HopDongNVController@postUpdateDVHD');
		Route::post('ThanhToanHD','HopDongNVController@postThanhToanHD');

		Route::post('XacNhanHD','HopDongNVController@postXacNhanHD');
		Route::post('HoanTra','HopDongNVController@postHoanTra');

		Route::post('HuyBook/{MaHD}/{MaCTTour}','HopDongNVController@postHuyBook');

		Route::get('xoaHD/{MaHD}','HopDongNVController@getXoaHD');
	});
	Route::group(['prefix'=>'qlBieuMau'],function(){
		Route::post('YCThanhToanHD','SendMailNVController@postYCThanhToanHD');
		Route::post('MailYCDT','SendMailNVController@postMailYCDT');

	});
	Route::group(['prefix'=>'qlBlog'],function(){
		Route::get('danhsachBlog','BlogNVController@getDSBlog');
		Route::get('danhsachBlogHide','BlogNVController@getDSBlogHide');

		Route::get('themBlog','BlogNVController@getAddBlog');
		Route::post('themBlog','BlogNVController@postAddBlog');
		Route::post('XoaBlog/{MaBlog}','BlogNVController@postXoaBlog');
		Route::post('showBlog/{MaBlog}','BlogNVController@postshowBlog');
		Route::post('hideBlog/{MaBlog}','BlogNVController@posthideBlog');
		Route::get('suaBlog/{MaBlog}','BlogNVController@getEditBlog');
		Route::post('suaBlog/{MaBlog}','BlogNVController@postEditBlog');
		Route::get('chitietBlog/{MaBlog}','BlogNVController@getchitietBlog');
		

	});

	Route::group(['prefix'=>'qlThuChi'],function(){
		Route::get('ThuChiTour','ThuChiNVController@ThuChiTour');
		Route::get('ThuChiNgay','ThuChiNVController@ThuChiNgay');
		Route::get('ThuChiThang','ThuChiNVController@ThuChiThang');

	});

	Route::group(['prefix'=>'PDF'],function(){
		Route::get('InHD/{MaHD}','PDFNVController@InHD');

		Route::post('InThang/{ngay1}/{ngay2}','PDFNVController@InThang');
		Route::post('InTour/{macttour}','PDFNVController@InTour');
		Route::post('InNgay/{date}','PDFNVController@InNgay');
		Route::get('DSKhachDi/{MaCTTour}','PDFNVController@DSKhachDi');
		Route::get('InLT/{LichTrinh}','PDFNVController@InLT');
		Route::get('InHoaDon','PDFNVController@InHoaDon');
		

	});


	Route::group(['prefix'=>'qlTour'],function(){
		Route::get('danhsachTour','TourNVController@getDanhSachTour');
		Route::get('dsTourMB','TourNVController@getdsTourMB');
		Route::get('dsTourMT','TourNVController@getdsTourMT');
		Route::get('dsTourMN','TourNVController@getdsTourMN');

		Route::get('themTour','TourNVController@getThemTour');
		Route::post('themTour','TourNVController@postThemTour');

		Route::get('suaTour/{MaTour}','TourNVController@getSuaTour');
		Route::post('suaTour/{MaTour}','TourNVController@postSuaTour');

		Route::get('xoaTour/{MaTour}','TourNVController@getXoaTour');

		Route::get('XuLyTour','TourNVController@getXuLyTour');
		Route::get('XuLyTourMB','TourNVController@getXuLyTourMB');
		Route::get('XuLyTourMT','TourNVController@getXuLyTourMT');
		Route::get('XuLyTourMN','TourNVController@getXuLyTourMN');
		
		Route::get('thuchitour/{MaCTTour}','TourNVController@getthuchitour');
		Route::post('themthuchi/{MaCTTour}','TourNVController@themthuchi');

		Route::get('danhsachcttour/{MaTour}','TourNVController@getdanhsachCTTour');

		Route::get('chitiettour/{MaCTTour}','TourNVController@getChiTietTour');
		Route::get('ThucTrangDV/{MaDVTour}','TourNVController@getThucTrangDV');

		Route::post('themDDDL/{MaTour}','TourNVController@postThemDDDL');
		Route::post('xoaDDDL/{id}','TourNVController@XoaDDDL');

		Route::get('themDV/{MaCTTour}','TourNVController@getThemDVTour');
		Route::post('themDVTour/{MaCTTour}','TourNVController@postThemDVTour');
		Route::post('ThemCB/{MaCTTour}','TourNVController@postThemCB');
		Route::post('SuaCB/{MaDVTour}','TourNVController@postSuaCB');

		Route::get('DSKhachDi/{MaCTTour}','TourNVController@getDSKhachDi');

		Route::post('ThanhToanDV','TourNVController@postThanhToanDV');


		Route::post('xoaDVTour/{id}','TourNVController@xoaDVTour');
		Route::put('suaDVTour/{id}','TourNVController@suaDVTour');

		
		Route::post('themCTTour/{MaTour}','TourNVController@postThemCTTour');
		Route::put('suaCTTour/{MaCTTour}','TourNVController@suaCTTour');
		Route::post('xoaCTTour/{id}','TourNVController@xoaCTTour');

		Route::post('shownoibat/{id}','TourNVController@showNoiBat');
		Route::post('hidenoibat/{id}','TourNVController@hideNoiBat');
		Route::post('showtt/{id}','TourNVController@showTinhTrang');
		Route::post('hidett/{id}','TourNVController@hideTinhTrang');

		Route::post('showttCT/{id}','TourNVController@showTinhTrangCT');
		Route::post('hidettCT/{id}','TourNVController@hideTinhTrangCT');
	});
	Route::group(['prefix'=>'ajax'],function(){
		Route::get('doitac/{tinh}{dv}','AjaxNVController@getDoiTac');
		Route::get('tendichvu/{dt}','AjaxNVController@getDV');
		Route::get('giadichvu/{iddv}','AjaxNVController@getGiaDV');
		Route::get('giadichvuTE/{iddv}','AjaxNVController@getGiaDVTE');
		Route::get('diadiemdl/{tinh}','AjaxNVController@getDiaDiemDL');
		Route::get('tinh/{qg}','AjaxNVController@getTinh');
		Route::get('khuvuc/{lt}','AjaxNVController@getKhuVuc');
		Route::get('nhomtour/{kv}','AjaxNVController@getNhomTour');
		Route::get('timcb/{kh}/{dd}/{ngaybay}','AjaxNVController@getTimCB');
		Route::get('TimTour/{Tour}','AjaxNVController@getTimTour');
		Route::get('TimTCTour/{macttour}','AjaxNVController@getTimTCTour');
		Route::get('TimTCNgay/{ngay}','AjaxNVController@getTimTCNgay');
		Route::get('TimTCThang/{ngay1}/{ngay2}','AjaxNVController@getTimTCThang');
		Route::get('dskhach/{mahd}','AjaxNVController@getDSKhach');
		Route::get('chuakh/{matour}','AjaxNVController@chuakh');
		Route::get('danghd/{matour}','AjaxNVController@danghd');
		Route::get('dakt/{matour}','AjaxNVController@dakt');
	});
});

Auth::routes();

Route::group(['prefix'=>'home'],function(){
	Route::group(['prefix'=>'BookTour','middleware'=>'memberLogin'],function(){
		Route::get('Booking/{id}','BookTourController@getBookTour');
		Route::post('DatTour/{id}','BookTourController@postDatTour');
		Route::get('TourDaDat','BookTourController@getTourDaDat');
		Route::get('UpdateInfo','BookTourController@getUpdateInfo');
		Route::post('UpdateInfo/{MaKH}','BookTourController@postUpdateInfo');
		Route::post('SuaTTK/{MaKhach}','BookTourController@postSuaTTK');

		
	});
	Route::group(['prefix'=>'ListTour'],function(){
		Route::get('TourMienBac','ListTourController@getTourMB');
		Route::get('TourMienTrung','ListTourController@getTourMT');
		Route::get('TourMienNam','ListTourController@getTourMN');
		
		Route::get('DetailTour/{id}','ListTourController@getDetailTour');
		Route::get('NhomTour/{id}','ListTourController@getNhomTour');
		Route::get('ListBlog','ListTourController@getListBlog');
		Route::get('DetailBlog/{MaBlog}','ListTourController@getDetailBlog');
		Route::get('Search','ListTourController@Search');

		
	});
	});

