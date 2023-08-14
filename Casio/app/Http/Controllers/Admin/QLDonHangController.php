<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\donhang;
use App\Models\ctdonhang;

class QLDonHangController extends Controller
{
    public function qldonhang() {  //lấy các thông tin donhang và trả về view
        $donhang = donhang::join('khachhang', 'donhang.MaKH', '=', 'khachhang.id')
                            ->select('donhang.*', 'khachhang.TenKH')
                            ->orderBy('id', 'desc')
                            ->paginate(20);
        return view('admin/donhang/qldonhang', compact('donhang'))->with('i', (request()->input('page', 1) -1) * 10);
    }

    public function qldonhang_detail($id){
        $donhang = donhang::join('khachhang', 'donhang.MaKH', '=', 'khachhang.id')
                            ->select('donhang.*', 'khachhang.TenKH', 'khachhang.DiaChi', 'khachhang.SDT', 'khachhang.Email')
                            ->find($id);
        $ctdonhang = ctdonhang::join('sanpham', 'ctdonhang.MaSP', '=', 'sanpham.id')
                                ->select('ctdonhang.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                ->where('MaDH', $id)->get();
        //Tính thành tiền và tổng tiền:
        $total = 0;
        foreach($ctdonhang as $c) {
            $tt = $c->GiaMua * $c->SoLuong;
            $c->ThanhTien = $tt;

            $total += $c->ThanhTien;
            $c->TongTien = $total;
        }
        return view('admin/donhang/qldonhang_detail', compact('donhang', 'ctdonhang'));
    }

    //thao tác duyệt:
    public function checkDonHang($id)
    {
        $donhang = donhang::findOrFail($id);
        $donhang->TrangThai = 1;
        $donhang->NguoiDuyet = auth()->user()->name;
        $donhang -> save();
        return redirect('qldonhang')->with('thongbao', 'Duyệt đơn hàng thành công!');
    }

//---------------------------TÌM KIẾM ĐƠN HÀNG-------------------------------
    public function searchDonHang(Request $request) { 
        $searchTerm = $request->input('key');
        $totalSearch = donhang::join('khachhang', 'donhang.MaKH', '=', 'khachhang.id')
                        ->select('donhang.*', 'khachhang.TenKH')
                        ->where('TenKH', 'like', '%'.$searchTerm.'%')
                        ->orderBy('id', 'desc')
                        ->paginate(10);
                     
        return view('admin/donhang/qldonhang_search', compact('searchTerm', 'totalSearch'))->with('i', (request()->input('page', 1) -1) * 10);
    }
}
