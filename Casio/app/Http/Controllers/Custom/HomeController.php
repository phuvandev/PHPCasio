<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\slide;
use App\Models\sanpham;

class HomeController extends Controller
{
    
    public function error404(){
        return view('custom/error404');
    }
    
    public function home() {
        $listmenu = menu::all();

        $listdanhmuc = dongsanpham::get();

        $listdongsanpham = dongsanpham::limit(5)->get();
        
        $listslide = slide::all();
        

        $sanpham_hotest = sanpham::join('dongsanpham', 'sanpham.MaDSP', '=', 'dongsanpham.id')
                    ->leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->leftjoin('ctdonhang', 'ctdonhang.MaSP', '=', 'sanpham.id')
                    ->select('sanpham.*', 'dongsanpham.TenDSP', 'giamgia.PhanTram', DB::raw('SUM(ctdonhang.SoLuong) as TongSoLuong'))
                    ->groupBy('sanpham.id','sanpham.TenSP', 'sanpham.AnhDaiDien', 'sanpham.GiaBan', 'sanpham.MoTa', 'sanpham.MaDSP', 'sanpham.created_at', 'sanpham.updated_at', 'dongsanpham.TenDSP', 'giamgia.PhanTram')
                    ->orderBy('TongSoLuong', 'desc')
                    ->first();
        if ($sanpham_hotest) {
            $giaSauGiam = $sanpham_hotest->GiaBan * (1 - $sanpham_hotest->PhanTram / 100);
            $sanpham_hotest->GiaSauGiam = $giaSauGiam;
        }


        $sanpham_new = sanpham::limit(15)
                    ->leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->select('sanpham.*', 'giamgia.PhanTram')
                    ->orderBy('created_at', 'desc')
                    ->get();
        // Tính giá sau khi giảm giá
        foreach ($sanpham_new as $sn) {
            $giaSauGiam = $sn->GiaBan * (1 - $sn->PhanTram / 100);
            $sn->GiaSauGiam = $giaSauGiam;
        }

        $sanpham_hot = sanpham::limit(15)
                    ->leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->join('ctdonhang', 'ctdonhang.MaSP', '=', 'sanpham.id')
                    ->select('sanpham.*', 'giamgia.PhanTram', DB::raw('SUM(ctdonhang.SoLuong) as TongSoLuong'))
                    ->groupBy('sanpham.id','sanpham.TenSP', 'sanpham.AnhDaiDien', 'sanpham.GiaBan', 'sanpham.MoTa', 'sanpham.MaDSP', 'sanpham.created_at', 'sanpham.updated_at', 'giamgia.PhanTram')
                    ->orderBy('TongSoLuong', 'desc')
                    ->get();
        foreach ($sanpham_hot as $sh) {
            $giaSauGiam = $sh->GiaBan * (1 - $sh->PhanTram / 100);
            $sh->GiaSauGiam = $giaSauGiam;
        }

        //Sản phẩm giảm giá 
        $sanpham_sale = sanpham::limit(15)
                    ->leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                    ->select('sanpham.*', 'giamgia.PhanTram')
                    ->orderBy('giamgia.PhanTram', 'desc')
                    ->get();
        foreach ($sanpham_sale as $ss) {
            $giaSauGiam = $ss->GiaBan * (1 - $ss->PhanTram / 100);
            $ss->GiaSauGiam = $giaSauGiam;
        }

        return view('custom/index', compact('listmenu', 'listdanhmuc', 'listdongsanpham', 'listslide', 'sanpham_hotest', 'sanpham_new', 'sanpham_hot', 'sanpham_sale'));
    }
//-----------------TRANG THÔNG TIN TÀI KHOẢN--------------------------------
    public function taikhoan() {
        $listmenu = menu::all();

        $listdanhmuc = dongsanpham::get();

        return view('custom/taikhoan', compact('listmenu', 'listdanhmuc'));
    }

    public function timkiem(Request $request) {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();

        if($request->input('key') == "") {
            return view('custom/error404');
        }
        else {
            $searchTerm = $request->input('key');
            $totalSearch = sanpham::leftjoin('giamgia', 'giamgia.MaSP', '=', 'sanpham.id')
                ->select('sanpham.*', 'giamgia.PhanTram')
                ->where('TenSP', 'like', '%'.$searchTerm.'%')
                ->orderBy('created_at', 'desc')
                ->paginate(10);
        foreach ($totalSearch as $t) {
            $giaSauGiam = $t->GiaBan * (1 - $t->PhanTram / 100);
            $t->GiaSauGiam = $giaSauGiam;
        }

        return view('custom/timkiem', compact('listmenu', 'listdanhmuc', 'searchTerm', 'totalSearch'))->with('i', (request()->input('page', 1) -1) * 10);

        } 
    }
}
