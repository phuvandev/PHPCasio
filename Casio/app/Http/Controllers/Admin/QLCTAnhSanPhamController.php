<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\ctanhsanpham;
use App\Models\sanpham;

class QLCTAnhSanPhamController extends Controller
{
    public function qlctanhsanpham() {
        //lấy các thông tin ctanhsanpham và trả về view
        $ctanhsanpham = ctanhsanpham::join('sanpham', 'ctanhsanpham.MaSP', 'sanpham.id')
                                    ->select('ctanhsanpham.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                    ->orderBy('id', 'desc')
                                    ->paginate(5);
        return view('admin/ctanhsanpham/qlctanhsanpham', compact('ctanhsanpham'))->with('i', (request()->input('page', 1) -1) * 10);
    }

    public function qlctanhsanpham_create() {
        $sanpham = sanpham::pluck('TenSP', 'id')
                            ->sortByDesc('id');
        return view('admin/ctanhsanpham/qlctanhsanpham_create', compact('sanpham'));
    }

    public function qlctanhsanpham_update($id){
        $ctanhsanpham = ctanhsanpham::find($id);
        $sanpham = sanpham::pluck('TenSP', 'id')
                            ->sortByDesc('id');
        return view('admin/ctanhsanpham/qlctanhsanpham_update', compact('ctanhsanpham', 'sanpham'));
    }

    public function createCTAnhSanPham(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/ACT';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        ctanhsanpham::create($input);

        return redirect('qlctanhsanpham')->with('thongbao', 'Thêm chi tiết ảnh sản phẩm thành công!');
    }

    public function updateCTAnhSanPham(Request $request, $id) //thực thi sửa
    {   
        $ctanhsanpham = ctanhsanpham::find($id);
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/ACT';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        else{
            unset($input['Anh']);
        }

        $ctanhsanpham -> update($input);

        return redirect('qlctanhsanpham')->with('thongbao', 'Sửa chi tiết ảnh sản phẩm thành công!'); 
    }

    public function deleteCTAnhSanPham($id)
    {
        $ctanhsanpham= ctanhsanpham::findOrFail($id);
        $ctanhsanpham->delete();
        return redirect('qlctanhsanpham')->with('thongbao', 'Xoá chi tiết ảnh sản phẩm thành công!');
    }
}
