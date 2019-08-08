<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ThuChiNVController extends Controller
{
    public function ThuChiTour(){

    	return view('employee.qlThuChi.ThuChiTour');
    }
    public function ThuChiNgay(){

    	return view('employee.qlThuChi.ThuChiNgay');
    }
    public function ThuChiThang(){

    	return view('employee.qlThuChi.ThuChiThang');
    }
}
