<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\hoadonnhap;
use App\Models\cthoadonnhap;
use App\Models\nhacungcap;

use App\Models\sanpham;

class QLHoaDonNhapController extends Controller
{
//----Gọi giao diện----
    public function qlhoadonnhap() {  //lấy các thông tin hoadonnhap và trả về view
        $hoadonnhap = hoadonnhap::join('users', 'hoadonnhap.MaND', '=', 'users.id')
                                ->join('nhacungcap', 'hoadonnhap.MaNCC', '=', 'nhacungcap.id')
                                ->select('hoadonnhap.*', 'users.name', 'nhacungcap.TenNCC')
                                ->orderBy('id', 'desc')
                                ->paginate(10);
        return view('admin/hoadonnhap/qlhoadonnhap', compact('hoadonnhap'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlhoadonnhap_create() //gọi lên giao diện
    {   
        $nhacungcap = nhacungcap::orderByDesc('id')
                                ->pluck('TenNCC', 'id');
        return view('admin/hoadonnhap/qlhoadonnhap_create', compact('nhacungcap')); 
    }
    public function qlhoadonnhap_update($id)//gọi lên giao diện
    {   
        $hoadonnhap = hoadonnhap::find($id);
        $nhacungcap = nhacungcap::orderByDesc('id')
                                ->pluck('TenNCC', 'id');

        return view('admin/hoadonnhap/qlhoadonnhap_update', compact('hoadonnhap', 'nhacungcap')); //compact: trả về 1 đối tượng tên là menu
    }
    public function qlhoadonnhap_detail($id){
        $hoadonnhap = hoadonnhap::find($id);
        $cthoadonnhap = cthoadonnhap::join('sanpham', 'cthoadonnhap.MaSP', '=', 'sanpham.id')
                                    ->select('cthoadonnhap.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                    ->where('MaHDN', $id)
                                    ->paginate(5);
        return view('admin/hoadonnhap/qlhoadonnhap_detail', compact('hoadonnhap', 'cthoadonnhap'));
    }


//----Thực thi----
    public function createHoaDonNhap(Request $request) { //thực thi tạo mới
        $hoadonnhap = new hoadonnhap();

        $hoadonnhap->TenHDN = $request->input('TenHDN');
        $hoadonnhap->MaND = $request->input('MaND');
        $hoadonnhap->MaNCC = $request->input('MaNCC');

        $hoadonnhap->save();
        return redirect('qlhoadonnhap')->with('thongbao', 'Thêm hóa đơn nhập thành công!');
    }
    public function updateHoaDonNhap(Request $request, $id) //thực thi sửa
    {   
        $hoadonnhap = hoadonnhap::find($id);

        $hoadonnhap->TenHDN = $request->input('TenHDN');
        $hoadonnhap->MaND = $request->input('MaND');
        $hoadonnhap->MaNCC = $request->input('MaNCC');

        $hoadonnhap->save();
        return redirect('qlhoadonnhap')->with('thongbao', 'Sửa hóa đơn nhập thành công!'); 
    }
    
    public function deleteHoaDonNhap($id)
    {
        $hoadonnhap = hoadonnhap::findOrFail($id);
        $hoadonnhap -> delete();
        return redirect('qlhoadonnhap')->with('thongbao', 'Xoá hóa đơn nhập thành công!');
    }

//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//-------------------------QUẢN LÝ CT HÓA ĐƠN NHẬP--------------------------------
//----Gọi giao diện----
    public function qlcthoadonnhap() { 
        $cthoadonnhap = cthoadonnhap::join('sanpham', 'cthoadonnhap.MaSP', '=', 'sanpham.id')
                                ->select('cthoadonnhap.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                ->orderBy('id', 'desc')
                                ->paginate(5);
        return view('admin/hoadonnhap/qlcthoadonnhap', compact('cthoadonnhap'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlcthoadonnhap_create() //gọi lên giao diện
    {   
        $hoadonnhap = hoadonnhap::orderByDesc('id')
                                ->pluck('TenHDN', 'id');
        $sanpham = sanpham::orderByDesc('id')
                                ->pluck('TenSP', 'id');
        return view('admin/hoadonnhap/qlcthoadonnhap_create', compact('hoadonnhap', 'sanpham')); 
    }
    public function qlcthoadonnhap_update($id)//gọi lên giao diện
    {   
        $cthoadonnhap = cthoadonnhap::find($id);
        $hoadonnhap = hoadonnhap::orderByDesc('id')
                                ->pluck('TenHDN', 'id');
        $sanpham = sanpham::orderByDesc('id')
                                ->pluck('TenSP', 'id');
        return view('admin/hoadonnhap/qlcthoadonnhap_update', compact('cthoadonnhap', 'hoadonnhap', 'sanpham')); //compact: trả về 1 đối tượng tên là menu
    }
    
//----Thực thi----
    public function createCTHoaDonNhap(Request $request) { 
        $cthoadonnhap = new cthoadonnhap();

        $cthoadonnhap->SoLuong = $request->input('SoLuong');
        $cthoadonnhap->DonGiaNhap = $request->input('DonGiaNhap');
        $cthoadonnhap->MaHDN = $request->input('MaHDN');
        $cthoadonnhap->MaSP = $request->input('MaSP');

        $cthoadonnhap->save();
        return redirect('qlcthoadonnhap')->with('thongbao', 'Thêm chi tiết hóa đơn nhập thành công!');
    }
    public function updateCTHoaDonNhap(Request $request, $id) //thực thi sửa
    {   
        $cthoadonnhap = cthoadonnhap::find($id);

        $cthoadonnhap->SoLuong = $request->input('SoLuong');
        $cthoadonnhap->DonGiaNhap = $request->input('DonGiaNhap');
        $cthoadonnhap->MaHDN = $request->input('MaHDN');
        $cthoadonnhap->MaSP = $request->input('MaSP');

        $cthoadonnhap->save();
        return redirect('qlcthoadonnhap')->with('thongbao', 'Sửa chi tiết hóa đơn nhập thành công!'); 
    }
    
    public function deleteCTHoaDonNhap($id)
    {
        $cthoadonnhap = cthoadonnhap::findOrFail($id);
        $cthoadonnhap -> delete();
        return redirect('qlcthoadonnhap')->with('thongbao', 'Xoá chi tiết hóa đơn nhập thành công!');
    }
};
