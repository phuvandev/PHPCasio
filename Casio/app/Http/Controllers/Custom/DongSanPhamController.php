<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\sanpham;

class DongSanPhamController extends Controller
{
    public function dongsanpham($id) {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();
        $dongsanpham = dongsanpham::join('ctanhdongsanpham', 'ctanhdongsanpham.MaDSP', '=', 'dongsanpham.id')
                    ->where('dongsanpham.id', '=', $id)
                    ->select('dongsanpham.*', 'ctanhdongsanpham.Anh')
                    ->first();
        //đk mã dsp(sp) = id
        $listsanpham = sanpham::leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->select('sanpham.*', 'giamgia.PhanTram')
                    ->where('MaDSP', '=', $id)
                    ->orderBy('created_at', 'desc')
                    ->paginate(12);
        foreach ($listsanpham as $l) {
            $giaSauGiam = $l->GiaBan * (1 - $l->PhanTram / 100);
            $l->GiaSauGiam = $giaSauGiam;
        }                
        return view('custom/dongsanpham', compact('listmenu', 'listdanhmuc', 'dongsanpham', 'listsanpham'))->with('i', (request()->input('page', 1) -1) * 10);
    }
}
