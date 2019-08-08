<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PDF;
use App\hopdong;
use App\thuchi;
use App\user;
use App\chitiettour;
use DateTime;
use App\thongtinkhach;
use App\tour;
use Response;

class PDFController extends Controller
{
    public function InHD($MaHD){
    	$pdf=\App::make('dompdf.wrapper');

    	foreach(hopdong::where('MaHD', $MaHD)->get() as $hd ) {
    		
    		$day= getdate();
    		$d = $day['mday'];
    		$m = $day['mon'];
    		$y = $day['year'];
    		

    		$output='<!DOCTYPE html>
			<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>Hợp Đồng Du Lịch</title>
				<style type="text/css">
					body {
					    font-family: DejaVu Sans;
					}
				</style>
			</head>
			<body style="width: 100%;">

			<div style="width: 80%;   margin: 0 auto;">
				<div style="float: left; width: 20%; height: 120px;  text-align: center">
					<p style="font-size:10px" >Công ty TNHH Du lịch </p>
					<strong>TRAVELERS</strong>
					<p>*************</p>
				</div>
				<div style="width:100%;  height: 120px; text-align: center;margin-left: 100px;">
					<p style="font-size:12px">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</p>
					<p style="font-size:12px">Độc Lập - Tự Do - Hanh Phúc</p>
					<p>*************</p>

				</div>


				<div style="width:100%;  height: 70px;  text-align: center">
					<strong>HỢP ĐỒNG DU LỊCH</strong>
					<p>Số : 2019\HDDL - '.$MaHD.'</p>
				</div>
				<div style="width:90%;  height: 70px;  margin-left: 5%;">
					<p>Hôm nay, Ngày '.$d.' Tháng '.$m.' Năm '.$y.'</p>
					<p>Sau khi bàn bạc và thoả thuận chúng tôi gồm:</p>
				</div>
				<div style="width:90%;  margin-left: 5%;">
					<strong>BÊN A: CÔNG TY TNHH DU LỊCH DỊCH VỤ THƯƠNG MẠI TRAVELERS</strong>
					<p>Ông: Trịnh Văn Đạt</p>
					<p>Chức Vụ: Giám Đốc</p>
					<p>Đại Diện Cho: Công ty TNHH Du Lịch Dịch Vụ Thương Mại Travelers </p>
					<p>Địa Chỉ: 48 Cao Thắng, Hải Châu, Đà Nẵng</p>
					<p>Số Điện Thoại: 1900 1998 - 0348 609 278</p>
					<p>Mã Số Thuế: 0438993245</p>
					<p>Số Tài Khoản: 3458346673 - Ngân Hàng Đông Á chi nhánh Cẩm Lệ</p>
					<p>Chủ Tài Khoản: Trịnh Văn Đạt</p>

				</div>
				<div style="width:90%;  margin-left: 5%;">
					<strong>BÊN B: </strong>
					<p>Ông\Bà: '.$hd-> khachhang-> TenKH.'</p>
					<p>Email:'.$hd-> khachhang-> Email.'</p>
					<p>Địa Chỉ: '.$hd-> khachhang-> DiaChi.'</p>
					<p>Số Điện Thoại: '.$hd-> khachhang-> Tel.'</p>
					<p>Mã Số Thuế:.................................................................</p>
					<p>Số Tài Khoản: ..............................................................</p>
					<p>Chủ Tài Khoản: .............................................................</p>

				</div>
				<div style="width:90%; margin-left: 5%;">
					<strong>Hai bên thống nhất ký một số điều khoản phục vụ khách du lịch như sau: </strong>
					

				</div>
				<div style="width:90%;  margin-left: 5%;">
					<strong>Điều 1: Chương trình tham quan du lịch – Khảo sát học tập theo chuyên đề: </strong>

					<strong>	Bên B tổ chức cho bên A chương trình:</strong>

						<li>Phương Tiện: Xe ô tô đời mới có máy lạnh hiện đại, tivi, ghế ngả..., Lái xe nhiệt tình vui vẻ</li>
						<li>Mức ăn chính: 120.000đ/bữa chính Theo chương trình + Ăn sáng 35.000đ/bữa</li>
						<li>Phòng Nghỉ tiêu chuẩn 3 sao, Nghỉ từ 2 - 4 người/phòng</li>
						<li>Hướng Dẫn Viên: Chuyên nghiệp, phục vụ nhiệt tình, thành thạo,chu đáo suốt tuyến</li>
						<li>Vé thăm quan: Khách được mua tiền vé vào cửa các thắng cảnh có trong tour</li>
						<li>Tàu thuyền tham quan theo chương trình</li>
						<li>Bảo hiểm du lịch theo quy định của Tổng Cục Du Lịch</li>
						<li>Nước uống trên xe, thuốc chống say...</li>
				</div>
				<div style="width:90%;  margin-left: 5%;">
					<strong>
					Điều 2: Số lượng khách</strong>

					<p>- Số lượng: '.$hd-> SoCho.' Khách. (Gồm có: '.$hd-> SLNL.' người lớn, '.$hd-> SLTE.' trẻ em, '.$hd-> SLEB.' em bé)</p>

					<strong>Nếu bên A giảm quá số lượng khách như trên hợp đồng đã ký '.$hd-> Socho.' khách, bên A chịu 50% đơn giá mỗi khách giảm theo hợp đồng. Số lượng khách tăng được tính phát sinh theo đơn giá trên hợp đồng.</strong>

				</div>
				<div style="width:90%;  margin-left: 5%;">
					<strong>Điều 3: Thời gian thực hiện</strong>

						<li > Thời gian thực hiện: '.$hd-> chitiettour-> tour -> SoNgay.' ngày '.(($hd-> chitiettour-> tour -> SoNgay) - 1).' đêm, từ ngày '.date_format(new DateTime($hd-> chitiettour-> NgayKhoiHanh),'d-m-Y').' đến ngày '.date_format(new DateTime($hd-> chitiettour-> NgayKetThuc),'d-m-Y').'</li>

						<li > Điểm đón: cụ thể tại: Văn Phòng Travelers Chi Nhánh '.$hd -> chitiettour-> tour -> DiemKhoiHanh .'</li>

						<li > Liên hệ trưởng đoàn:  '.$hd-> chitiettour-> user -> TenNV .'  Tel: '.$hd-> chitiettour-> user -> Tel .'</li>

				</div>
				
				<div style="width:90%;  margin-left: 5%;">
					<strong>Điều 4: Giá trị hợp đồng</strong>

						<p>Giá cho 01 khách: '.number_format($hd-> chitiettour-> tour -> Gia) .' VNĐ. Tổng số khách theo hợp đồng:  '.$hd-> SoCho.' người</p>

						<p>Tổng giá trị hợp đồng: '.number_format($hd-> ThanhTien ).'VNĐ</p>

						<p>Bảo hiểm du lịch: Mức đền bù tối đa: 10.000.000 VNĐ/ người/ vụ.</p>

				
					<strong>Điều 5: Điều Khoản Thanh Toán</strong>

						<p>Tổng giá trị hợp đồng tạm tính nêu trên sẽ được bên B thanh toán cho bên A bằng tiền mặt hoặc chuyển khoản chia làm 2 đợt:</p>

						<p>Đợt 1: Bên B thanh toán số tiền 50% tổng giá trị hợp đồng bao gồm '.number_format(($hd-> ThanhTien)/2) .' VND đã ứng đợt 1 ngay sau khi hai bên ký hợp đồng chính thức.</p>

						<p>Đợt 2: Số tiền còn lại, các chi phí phát sinh (nếu có)  sẽ thanh toán sau 2 Ngày Thanh Toán Đợt 1 </p>

			
					<strong>Điều 6: Điều kiện phạt hủy</strong>
						<li> Hai bên cam kết thực hiện hợp đồng, nếu một trong hai bên có thay đổi, hủy bỏ phải báo trước cho bên kia 10 ngày trước khi khởi hành.</li>

						<li> Trong trường hợp báo huỷ trước 8 đến 10 ngày trước khi khởi hành, bên báo hủy phải chịu phạt 30% tổng giá trị hợp đồng; báo hủy trước 5 đến 7 ngày, thì phải chịu phạt 50% tổng giá trị hợp đồng; Báo hủy trước 2 đến 4 ngày thì phải chịu phạt 70% tổng giá trị hợp đồng; Báo hủy trong vòng 24h trước giờ khởi hành thì phải chịu phạt 100% tổng giá trị hợp đồng. Mọi thay đổi, báo hủy phải được thông báo bằng văn bản và được sự chấp thuận của bên kia.</li>

						<li> Trong trường hợp vì một lý do bất khả kháng nào đó (bão lụt, hoả hoạn, thiên tai, chiến tranh,...) hợp đồng không thể thực hiện thì các bên cùng nhau bàn bạc giải quyết trên tinh thần bình đẳng giữa hai bên.</li>

				
					<strong>Điều 7: Trách Nhiệm Các Bên</strong>
						<li> Bên A có trách nhiệm thông báo chi tiết và xác nhận về lượng khách kèm theo danh sách trích ngang, địa điểm, thời gian, và thông tin liên quan của đoàn khách trước 03 ngày khởi hành cho bên B. Bên B có trách nhiệm đưa đón, phục vụ đoàn khách của bên A đúng như trong lộ trình chi tiết của phụ lục kèm theo hợp đồng, bảo đảo chất lượng dịch vụ theo hợp đồng.</li>

						<li> Bên A thanh toán đầy đủ, đúng hạn cho bên B tổng giá trị hợp đồng theo phương thức đã nêu trên. Nếu phát sinh chi phí cho việc làm hay yêu cầu của bên A thì bên A phải thanh toán thêm khoản chi phí đó cho bên B.</li>

						<li> Trong quá trình thực hiện hợp đồng, mọi phát sinh tranh chấp đều được hai bên cùng nhau bàn bạc và giải quyết trên tinh thần bình đẳng hai bên đều có lợi.</li>

						<li>  Những phụ lục hợp đồng kèm theo có giá trị pháp lý như bản hợp đồng này.</li>

						<li> Hai bên cam kết thực hiện đúng những điều khoản như trong hợp đồng, bên nào thực hiện sai gây tổn hại về thời gian, vật chất cho bên kia thì phải chịu trách nhiệm bồi hoàn phần tổn hại đó cho bên kia theo quy định trước pháp luật.</li>

						<li> Hợp đồng này gồm có 03 trang và được lập 02 bản, mỗi bên giữ 01 bản có giá trị pháp lý như nhau và có hiệu lực kể từ ngày ký.</li>

				</div>
				<div style="float: left; width: 40%; height: 120px;  text-align: center; margin-top: 20px;">
					<strong>ĐẠI DIỆN BÊN A</strong>

				</div>
				<div style="float: left;width:40%;  height: 120px; text-align: center;margin-left: 100px;">
					<strong>ĐẠI DIỆN BÊN B</strong>


				</div>


			</body>
			</html>';
			}	
			$pdf->loadHTML($output,'utf-8');
    	return $pdf->stream();

    }
    public function InThang(Request $request,$ngay1 , $ngay2){
    	$pdf=\App::make('dompdf.wrapper');
    	$output='<!DOCTYPE html>
					<html>
					<head>
						<meta charset="utf-8">
						<title>Thống Kê Thu Chi Tháng</title>
						<style type="text/css">
							body {
					    		font-family: DejaVu Sans;
							}
							table, tr, td{
								border: 1px solid #000;
								padding: 1px;
								font-size:8px;

							}
							thead{
								background: #ffd8d8;
								
								
							}
							tbody tr:nth-child(even){
								background-color: #e5e5e5;
							}
							tbody{
								font-weight: normal;

							}
						</style>
					</head>
					<body>

					<div style="width: 80%; height: 2000px; margin: 0 auto;">
						<div style=" width: 100%; height: 120px;  text-align: center">
							<p>Công ty TNHH Du lịch – Dịch vụ - Thương Mại</p>
							<strong>TRAVELERS</strong>
							<p>*************</p>
						</div>
						
						<div style="width:100%;  height: 70px;  text-align: center">
							<strong>Thống Kê Thu Chi Tháng</strong>
							<p style="font-size:10px;">Từ Ngày: '. date_format(new DateTime($ngay1),'d-m-Y').' Đến Ngày: '.date_format(new DateTime($ngay2),'d-m-Y').'</p>
						</div>
						<div>
						<table style=" width: 100%;">
							<thead >
								<tr >
									<th>ID</th>
									<th>Tên Khách Hàng <br> Tên Đối Tác <br> Dịch Vụ</th>
									<th>Tour</th>
									<th>Loại Thu Chi</th>
									<th>Số Tiền </th>
									<th>Nội Dung</th>
									<th>Ngày Thanh Toán</th>
									<th>Người Thu</th>

								</tr>
							</thead>
							<tbody>';
							foreach (thuchi::whereBetween('NgayTT', [$ngay1, $ngay2])->get() as $tc) {
								# code...
							
						$output	.='<tr>
									<td>'.$tc -> id.'</td><td>';
								if($tc -> MaHD != null){
						$output	.=$tc -> hopdong -> khachhang -> TenKH.'(MaHD: '.$tc -> MaHD.')<br>'.$tc -> DichVu ;
								}
								elseif($tc -> MaDVTour != null){
						$output	.=$tc -> dichvutour -> doitac -> TenDoiTac.' <br> '.$tc -> DichVu;
								}
								else{
									$output	.=$tc -> DichVu;
								}
						$output	.='</td>';
						foreach (chitiettour::where('MaCTTour', $tc -> MaCTTour)->get() as $ct) {
						$output	.='<td> Mã Tour '.$ct -> MaTour.'-'.$ct -> MaCTTour.'<br>
										Tên Tour: '.$ct-> tour-> TenTour.'
						</td>';
							}

						$output	.='<td>';
							if($tc -> LoaiThuChi==1){
								$output	.='Thu';
							}
							else{
								$output	.='Chi';
							}
						$output	.='</td>';
						$output	.='<td>'.number_format($tc -> SoTien).'VNĐ</td>';
						$output	.='<td>'.$tc -> NoiDung.'</td>';
						$output	.='<td>'.date_format(new DateTime($tc -> NgayTT),'d-m-Y').'</td>';
						$output	.='<td>';
						foreach (user::where('MaNV',$tc-> MaNV)->get() as $nv ) {
							$output	.= $nv-> TenNV;
						}
						$output	.='</td>';
						$output .='</tr>';
								}
						$output	.=	'</tbody>
						</table>
					
						<div style="float: left;width:50%;  height: 120px;margin-top: 20px; font-size:10px;">

							<p>Tổng Chi: ';
							$tongchi=thuchi::whereBetween('NgayTT', [$ngay1, $ngay2])->where('LoaiThuChi', 2)->sum('SoTien');
							$output	.= number_format($tongchi).' VND</p>
							<p>Tổng Thu: ';
							$tongthu=thuchi::whereBetween('NgayTT', [$ngay1, $ngay2])->where('LoaiThuChi', 1)->sum('SoTien');
							$output	.=number_format($tongthu).' VND</p>
							<p>Lợi Nhuận: '.number_format($tongthu - $tongchi).' VND</p>



						</div>
						<div style="float: left;width:50%;  height: 120px; text-align: center;margin-top: 10px;font-size:10px;">
							<strong>Người Lập Bảng</strong>
							<br>
							<br>
							<br>
							<p>'.$request-> MaNV.'</p>
						</div>
						</div>
						<div  style="width:100%;" >
						
						</div>


					</body>
					</html>';
		$pdf->loadHTML($output,'utf-8');
    	return $pdf->stream();

    }
    public function InTour(Request $request,$MaCTTour){
    	$pdf=\App::make('dompdf.wrapper');
    	$output='<!DOCTYPE html>
					<html>
					<head>
						<meta charset="utf-8">
						<title>Thống Kê Thu Chi Tour</title>
						<style type="text/css">
							body {
					    		font-family: DejaVu Sans;
							}
							table, tr, td{
								border: 1px solid #000;
								padding: 1px;
								font-size:8px;

							}
							thead{
								background: #ffd8d8;
								
								
							}
							tbody tr:nth-child(even){
								background-color: #e5e5e5;
							}
							tbody{
								font-weight: normal;

							}
						</style>
					</head>
					<body>

					<div style="width: 80%; height: 2000px; margin: 0 auto;">
						<div style=" width: 100%; height: 120px;  text-align: center">
							<p>Công ty TNHH Du lịch – Dịch vụ - Thương Mại</p>
							<strong>TRAVELERS</strong>
							<p>*************</p>
						</div>
						
						<div style="width:100%;  height: 70px;  text-align: center">
							<strong>Thống Kê Thu Chi Tháng</strong>
							<p style="font-size:10px;">Mã Tour: ';
							foreach (chitiettour::where('MaCTTour', $MaCTTour)->get() as $cttour ) {
								$output .= $cttour -> MaTour.'-'.$cttour-> MaCTTour.' Tour: '. $cttour-> tour -> TenTour;
							}
							$output .=' </p>
						</div>
						<div>
						<table style=" width: 100%;">
							<thead >
								<tr >
									<th>ID</th>
									<th>Tên Khách Hàng <br> Tên Đối Tác <br> Dịch Vụ</th>
									<th>Tour</th>
									<th>Loại Thu Chi</th>
									<th>Số Tiền </th>
									<th>Nội Dung</th>
									<th>Ngày Thanh Toán</th>
									<th>Người Thu</th>

								</tr>
							</thead>
							<tbody>';
							foreach (thuchi::where('MaCTTour', $MaCTTour)->get() as $tc) {
								# code...
							
						$output	.='<tr>
									<td>'.$tc -> id.'</td><td>';
								if($tc -> MaHD != null){
						$output	.=$tc -> hopdong -> khachhang -> TenKH.'(MaHD: '.$tc -> MaHD.')<br>'.$tc -> DichVu ;
								}
								elseif($tc -> MaDVTour != null){
						$output	.=$tc -> dichvutour -> doitac -> TenDoiTac.' <br> '.$tc -> DichVu;
								}
								else{
									$output	.=$tc -> DichVu;
								}
						$output	.='</td>';
						foreach (chitiettour::where('MaCTTour', $tc -> MaCTTour)->get() as $ct) {
						$output	.='<td> Mã Tour '.$ct -> MaTour.'-'.$ct -> MaCTTour.'<br>
										Tên Tour: '.$ct-> tour-> TenTour.'
						</td>';
							}

						$output	.='<td>';
							if($tc -> LoaiThuChi==1){
								$output	.='Thu';
							}
							else{
								$output	.='Chi';
							}
						$output	.='</td>';
						$output	.='<td>'.number_format($tc -> SoTien).'VNĐ</td>';
						$output	.='<td>'.$tc -> NoiDung.'</td>';
						$output	.='<td>'.date_format(new DateTime($tc -> NgayTT),'d-m-Y').'</td>';
						$output	.='<td>';
						foreach (user::where('MaNV',$tc-> MaNV)->get() as $nv ) {
							$output	.= $nv-> TenNV;
						}
						$output	.='</td>';
						$output .='</tr>';
								}
						$output	.=	'</tbody>
						</table>
					
						<div style="float: left;width:50%;  height: 120px;margin-top: 20px; font-size:10px;">

							<p>Tổng Chi: ';
							$tongchi=thuchi::where('MaCTTour', $MaCTTour)->where('LoaiThuChi', 2)->sum('SoTien');
							$output	.= number_format($tongchi).' VND</p>
							<p>Tổng Thu: ';
							$tongthu=thuchi::where('MaCTTour', $MaCTTour)->where('LoaiThuChi', 1)->sum('SoTien');
							$output	.=number_format($tongthu).' VND</p>
							<p>Lợi Nhuận: '.number_format($tongthu - $tongchi).' VND</p>



						</div>
						<div style="float: left;width:50%;  height: 120px; text-align: center;margin-top: 10px;font-size:10px;">
							<strong>Người Lập Bảng</strong>
							<br>
							<br>
							<br>
							<p>'.$request-> MaNV.'</p>
						</div>
						</div>
						<div  style="width:100%;" >
						
						</div>


					</body>
					</html>';
		$pdf->loadHTML($output,'utf-8');
    	return $pdf->stream();

    }
    public function InNgay(Request $request, $date){
    	$pdf=\App::make('dompdf.wrapper');
    	$output='<!DOCTYPE html>
					<html>
					<head>
						<meta charset="utf-8">
						<title>Thống Kê  Thu Chi Ngày</title>
						<style type="text/css">
							body {
					    		font-family: DejaVu Sans;
							}
							table, tr, td{
								border: 1px solid #000;
								padding: 1px;
								font-size:8px;

							}
							thead{
								background: #ffd8d8;
								
								
							}
							tbody tr:nth-child(even){
								background-color: #e5e5e5;
							}
							tbody{
								font-weight: normal;

							}
						</style>
					</head>
					<body>

					<div style="width: 80%; height: 2000px; margin: 0 auto;">
						<div style=" width: 100%; height: 120px;  text-align: center">
							<p>Công ty TNHH Du lịch – Dịch vụ - Thương Mại</p>
							<strong>TRAVELERS</strong>
							<p>*************</p>
						</div>
						
						<div style="width:100%;  height: 70px;  text-align: center">
							<strong>Thống Kê Thu Chi Tháng</strong>
							<p style="font-size:10px;"> Ngày: '. date_format(new DateTime($date),'d-m-Y').'</p>
						</div>
						<div>
						<table style=" width: 100%;">
							<thead >
								<tr >
									<th>ID</th>
									<th>Tên Khách Hàng <br> Tên Đối Tác <br> Dịch Vụ</th>
									<th>Tour</th>
									<th>Loại Thu Chi</th>
									<th>Số Tiền </th>
									<th>Nội Dung</th>
									<th>Ngày Thanh Toán</th>
									<th>Người Thu</th>

								</tr>
							</thead>
							<tbody>';
							foreach (thuchi::where('NgayTT', $date)->get() as $tc) {
								# code...
							
						$output	.='<tr>
									<td>'.$tc -> id.'</td><td>';
								if($tc -> MaHD != null){
						$output	.=$tc -> hopdong -> khachhang -> TenKH.'(MaHD: '.$tc -> MaHD.')<br>'.$tc -> DichVu ;
								}
								elseif($tc -> MaDVTour != null){
						$output	.=$tc -> dichvutour -> doitac -> TenDoiTac.' <br> '.$tc -> DichVu;
								}
								else{
									$output	.=$tc -> DichVu;
								}
						$output	.='</td>';
						foreach (chitiettour::where('MaCTTour', $tc -> MaCTTour)->get() as $ct) {
						$output	.='<td> Mã Tour '.$ct -> MaTour.'-'.$ct -> MaCTTour.'<br>
										Tên Tour: '.$ct-> tour-> TenTour.'
						</td>';
							}

						$output	.='<td>';
							if($tc -> LoaiThuChi==1){
								$output	.='Thu';
							}
							else{
								$output	.='Chi';
							}
						$output	.='</td>';
						$output	.='<td>'.number_format($tc -> SoTien).'VNĐ</td>';
						$output	.='<td>'.$tc -> NoiDung.'</td>';
						$output	.='<td>'.date_format(new DateTime($tc -> NgayTT),'d-m-Y').'</td>';
						$output	.='<td>';
						foreach (user::where('MaNV',$tc-> MaNV)->get() as $nv ) {
							$output	.= $nv-> TenNV;
						}
						$output	.='</td>';
						$output .='</tr>';
								}
						$output	.=	'</tbody>
						</table>
					
						<div style="float: left;width:50%;  height: 120px;margin-top: 20px; font-size:10px;">

							<p>Tổng Chi: ';
							$tongchi=thuchi::where('NgayTT', $date)->where('LoaiThuChi', 2)->sum('SoTien');
							$output	.= number_format($tongchi).' VND</p>
							<p>Tổng Thu: ';
							$tongthu=thuchi::where('NgayTT', $date)->where('LoaiThuChi', 1)->sum('SoTien');
							$output	.=number_format($tongthu).' VND</p>
							<p>Lợi Nhuận: '.number_format($tongthu - $tongchi).' VND</p>



						</div>
						<div style="float: left;width:50%;  height: 120px; text-align: center;margin-top: 10px;font-size:10px;">
							<strong>Người Lập Bảng</strong>
							<br>
							<br>
							<br>
							<p>'.$request-> MaNV.'</p>
						</div>
						</div>
						<div  style="width:100%;" >
						
						</div>


					</body>
					</html>';
		$pdf->loadHTML($output,'utf-8');
    	return $pdf->stream();

    }
    public function DSKhachDi( $MaCTTour){
    	$pdf=\App::make('dompdf.wrapper');
    	$output='<!DOCTYPE html>
					<html>
					<head>
						<meta charset="utf-8">
						<title>Danh Sách Khách Đi Tour</title>
						<style type="text/css">
							body {
					    		font-family: DejaVu Sans;
							}
							table, tr, td{
								border: 1px solid #000;
								padding: 1px;
								font-size:8px;

							}
							thead{
								background: #ffd8d8;
								
								
							}
							tbody tr:nth-child(even){
								background-color: #e5e5e5;
							}
							tbody{
								font-weight: normal;

							}
						</style>
					</head>
					<body>

					<div style="width: 80%; height: 2000px; margin: 0 auto;">
						<div style=" width: 100%; height: 120px;  text-align: center">
							<p>Công ty TNHH Du lịch – Dịch vụ - Thương Mại</p>
							<strong>TRAVELERS</strong>
							<p>*************</p>
						</div>
						
						<div style="width:100%;  height: 70px;  text-align: center">
							<strong>DANH SACH KHÁCH ĐI TOUR</strong>
							';
							foreach (chitiettour::where('MaCTTour', $MaCTTour)->get() as $cttour ) {
								$output .= '<p style="font-size:10px;">Mã Tour: '.$cttour -> MaTour.'-'.$cttour-> MaCTTour.' Tour: '. $cttour-> tour -> TenTour.' <p>';
								$output .= '<p style="font-size:10px;">Check In: '.date_format(new DateTime($cttour -> NgayKhoiHanh),'d-m-Y').' Check Out: '. date_format(new DateTime($cttour -> NgayKhoiHanh),'d-m-Y').' <p>';
							}
							$output .=' 
						</div>
						<div>
						<table style=" width: 100%;">
							<thead >
								<tr >
									<th>Id</th>
									<th>Tên Khách </th>
									<th>Ngày Sinh</th>
									<th>Giới Tính</th>
									<th>Tel</th>
									<th>Địa Chỉ</th>
									<th>Passport</th>
									<th>Người Đặt <br> (Mã HD)</th>

								</tr>
							</thead>
							<tbody>';
							foreach (thongtinkhach::join('hopdong', 'thongtinkhach.MaHD', '=','hopdong.MaHD')->where('hopdong.MaCTTour', $MaCTTour)->where('hopdong.TrangThai', 1)->get() as $kh) {
								# code...
							
						$output	.='<tr>
									<td>'.$kh -> MaKhach.'</td>
									<td>'.$kh -> HoTen.'</td>
									<td>'.date_format(new DateTime($kh -> NgaySinh),'d-m-Y').'</td>
									<td>'.$kh -> GioiTinh.'</td>
									<td>'.$kh -> Tel.'</td>
									<td>'.$kh -> DiaChi.'</td>
									<td>'.$kh -> Passport.'</td>
									<td>'.$kh -> hopdong -> khachhang -> TenKH.'<br>('.$kh-> MaHD.')</td>';
						$output .='</tr>';
								}
						$output	.=	'</tbody>
						</table>
					
						
						
						</div>
						<div  style="width:100%;" >
						
						</div>


					</body>
					</html>';
		$pdf->loadHTML($output,'utf-8');
    	return $pdf->stream();

    }
    public function InLT( $LichTrinh){
    	$pdf=\App::make('dompdf.wrapper');
    	
    	
    	
		$file= public_path().'/upload/lichtrinh/'.$LichTrinh;
		$name= $LichTrinh;
		
    return Response::download($file, $name);

    }
   
   
}
