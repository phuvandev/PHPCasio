<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DateTime;

use App\Models\giamgia;
use App\Models\sanpham;

class QLGiamGiaController extends Controller
{
    public function qlgiamgia() {
        $giamgia = giamgia::join('sanpham', 'sanpham.id', '=', 'giamgia.MaSP')
                            ->select('giamgia.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                            ->orderBy('id', 'desc')
                            ->paginate(10);
        return view('admin/giamgia/qlgiamgia', compact('giamgia'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlgiamgia_create() {
        $sanpham = sanpham::pluck('TenSP', 'id');
        return view('admin/giamgia/qlgiamgia_create', compact('sanpham'));
    }
    public function qlgiamgia_update($id){
        $giamgia = giamgia::find($id);
        $sanpham = sanpham::pluck('TenSP', 'id');

        return view('admin/giamgia/qlgiamgia_update', compact('giamgia', 'sanpham'));
    }



    public function createGiamGia(Request $request) { 
        $giamgia = new giamgia();

        //lấy ra ngày hiện tại: $giamgia->NgayBD = DateTime::createFromFormat('d/m/Y', $request->input('NgayBD'))->format('Y-m-d');
        $giamgia->PhanTram = $request->input('PhanTram');
        $giamgia->ThoiGianBD = $request->input('ThoiGianBD');
        $giamgia->ThoiGianKT = $request->input('ThoiGianKT');
        $giamgia->MaSP = $request->input('MaSP');

        //------------ kiểm tra tgian kết thúc-------------
        $tgbd = new DateTime($giamgia->ThoiGianBD);
        $tgkt = new DateTime($giamgia->ThoiGianKT);
        if ($tgkt <= $tgbd) {
            return redirect()->back()->with('mess', 'Tgian kết thúc phải lớn hơn Tgian bắt đầu! Vui lòng chọn Tgian hợp lệ...');
        }
        //------------------------------------------------
        
        $giamgia->save();
        return redirect('qlgiamgia')->with('thongbao', 'Thêm giảm giá thành công!');
    }
    
    public function updateGiamGia(Request $request, $id) //thực thi sửa
    {   
        $giamgia = giamgia::find($id);

        $giamgia->PhanTram = $request->input('PhanTram');
        $giamgia->ThoiGianBD = $request->input('ThoiGianBD');
        $giamgia->ThoiGianKT = $request->input('ThoiGianKT');
        $giamgia->MaSP = $request->input('MaSP');

        //------------ kiểm tra ngày kết thúc-------------
        $tgbd = new DateTime($giamgia->ThoiGianBD);
        $tgkt = new DateTime($giamgia->ThoiGianKT);
        if ($tgkt <= $tgbd) {
            return redirect()->back()->with('mess', 'Tgian kết thúc phải lớn hơn Tgian bắt đầu! Vui lòng chọn Tgian hợp lệ...');
        }
        //------------------------------------------------
        $giamgia->save();

        return redirect('qlgiamgia')->with('thongbao', 'Sửa giảm giá thành công!'); 
    }
    public function deleteGiamGia($id)
    {
        $giamgia = giamgia::findOrFail($id);
        $giamgia -> delete();
        return redirect('qlgiamgia')->with('thongbao', 'Xoá giảm giá thành công!');
    }
}
