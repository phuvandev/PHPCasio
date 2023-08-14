<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\sanpham;
use App\Models\dongsanpham;
use App\Models\thongsokythuat;
use App\Models\ctanhsanpham;

class QLSanPhamController extends Controller
{
    public function qlsanpham() {
        //lấy các thông tin sanpham và trả về view
        $sanpham = sanpham::join('dongsanpham', 'sanpham.MaDSP', '=', 'dongsanpham.id')
                            ->leftjoin('giamgia', 'giamgia.MaSP', 'sanpham.id')
                            ->select('sanpham.*', 'dongsanpham.TenDSP', 'giamgia.PhanTram')
                            ->orderBy('id', 'desc')
                            ->paginate(15);

        foreach ($sanpham as $sp) {
            if($sp->PhanTram != 0) {
                $gsg = $sp->GiaBan * (1 - $sp->PhanTram / 100);
                $sp->GiaSauGiam = $gsg;
            } 
        }
                            
        return view('admin/sanpham/qlsanpham', compact('sanpham'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlsanpham_create() {
        $dongsanpham = dongsanpham::pluck('TenDSP', 'id');
        return view('admin/sanpham/qlsanpham_create', compact('dongsanpham'));
    }
    public function qlsanpham_update($id){
        $sanpham = sanpham::find($id);
        $dongsanpham = dongsanpham::pluck('TenDSP', 'id');
        return view('admin/sanpham/qlsanpham_update', compact('sanpham', 'dongsanpham'));
    }
    public function thongsokythuat($id) {
        $sanpham = sanpham::find($id);
        $thongsokythuat = thongsokythuat::where('MaSP', $id)->get();
        return view('admin/sanpham/thongsokythuat', compact('sanpham','thongsokythuat'));
    }
    public function ctanhsanpham($id){
        $sanpham = sanpham::find($id);
        $ctanhsanpham = ctanhsanpham::where('MaSP', $id)->get();
        return view('admin/sanpham/ctanhsanpham', compact('sanpham', 'ctanhsanpham'));
    }



    public function createSanPham(Request $request) { 
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/SP';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        sanpham::create($input);

        return redirect('qlsanpham')->with('thongbao', 'Thêm sản phẩm thành công!');
    }
    
    public function updateSanPham(Request $request, $id) //thực thi sửa
    {   
        $sanpham = sanpham::find($id);
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/SP';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        else{
            unset($input['AnhDaiDien']);
        }

        $sanpham->update($input);

        return redirect('qlsanpham')->with('thongbao', 'Sửa sản phẩm thành công!'); 
    }
    public function deleteSanPham($id)
    {
        $sanpham = sanpham::findOrFail($id);
        $sanpham -> delete();
        return redirect('qlsanpham')->with('thongbao', 'Xoá sản phẩm thành công!');
    }

//---------------------------TÌM KIẾM SẢN PHẨM-------------------------------
    
    public function searchSanPham(Request $request) { 
        $searchTerm = $request->input('key');
        $totalSearch = sanpham::join('dongsanpham', 'sanpham.MaDSP', '=', 'dongsanpham.id')
                        ->leftjoin('giamgia', 'giamgia.MaSP', 'sanpham.id')
                        ->select('sanpham.*', 'dongsanpham.TenDSP', 'giamgia.PhanTram')
                        ->where('TenSP', 'like', '%'.$searchTerm.'%')
                        ->orderBy('id', 'desc')
                        ->paginate(10);
        foreach ($totalSearch as $t) {
            if($t->PhanTram != 0) {
                $gsg = $t->GiaBan * (1 - $t->PhanTram / 100);
                $t->GiaSauGiam = $gsg;
            } 
        }                    
        return view('admin/sanpham/qlsanpham_search', compact('searchTerm', 'totalSearch'))->with('i', (request()->input('page', 1) -1) * 10);
    }
}
