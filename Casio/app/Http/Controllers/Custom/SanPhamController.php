<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\sanpham;
use App\Models\ctanhsanpham;
use App\Models\thongsokythuat;

class SanPhamController extends Controller
{
    public function sanpham($id) {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();
        $sanpham = sanpham::join('dongsanpham', 'dongsanpham.id', '=', 'sanpham.MaDSP')
                    ->leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->where('sanpham.id', '=', $id)
                    ->select('sanpham.*', 'dongsanpham.TenDSP', 'giamgia.PhanTram')
                    ->first();
        
        if($sanpham->PhanTram != 0) {
            $gsg = $sanpham->GiaBan * (1 - $sanpham->PhanTram / 100);
            $sanpham->GiaSauGiam = $gsg;
        }
        else {
            $sanpham->GiaSauGiam = $sanpham->GiaBan;
        }

        $listctanhsanpham = $sanpham->ctanhsanpham()->get();
        $listthongsokythuat = $sanpham->thongsokythuat()->get();


        //Sản phẩm tương tự
        $sanpham_similar = sanpham::leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                            ->select('sanpham.*', 'giamgia.PhanTram')
                            ->orderBy('created_at', 'desc')
                            ->where('MaDSP', '=', $sanpham->MaDSP)
                            ->limit(20)
                            ->get();
        foreach($sanpham_similar as $sps)
            if($sps->PhanTram != 0) {
                $gsg = $sps->GiaBan * (1 - $sps->PhanTram / 100);
                $sps->GiaSauGiam = $gsg;
            }
            else {
                $sps->GiaSauGiam = $sps->GiaBan;
            }
        return view('custom/sanpham', compact('listmenu', 'listdanhmuc', 'sanpham', 'listctanhsanpham', 'listthongsokythuat', 'sanpham_similar'));
    }
}
