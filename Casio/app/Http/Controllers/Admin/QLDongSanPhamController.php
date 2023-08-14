<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\dongsanpham;
use App\Models\menu;
use App\Models\ctanhdongsanpham;

class QLDongSanPhamController extends Controller
{
    public function qldongsanpham() {
        //lấy các thông tin dongsanpham và trả về view
        $dongsanpham = dongsanpham::join('menu', 'dongsanpham.MaMenu', '=', 'menu.id')
                                    ->select('dongsanpham.*', 'menu.TenMenu')
                                    ->orderBy('id', 'desc')
                                    ->paginate(10);
        
        return view('admin/dongsanpham/qldongsanpham', compact('dongsanpham'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qldongsanpham_create() {
        $menu = menu::pluck('TenMenu', 'id');

        return view('admin/dongsanpham/qldongsanpham_create', compact('menu'));
    }
    public function qldongsanpham_update($id){
        $dongsanpham = dongsanpham::find($id);

        $menu = menu::pluck('TenMenu', 'id');

        return view('admin/dongsanpham/qldongsanpham_update', compact('dongsanpham', 'menu'));
    }


    public function createDongSanPham(Request $request) { 
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/DSP';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        dongsanpham::create($input);

        return redirect('qldongsanpham')->with('thongbao', 'Thêm dòng sản phẩm thành công!');
    }
    
    public function updateDongSanPham(Request $request, $id) //thực thi sửa
    {   
        $dongsanpham = dongsanpham::find($id);
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/DSP';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        else{
            unset($input['AnhDaiDien']);
        }

        $dongsanpham -> update($input);

        return redirect('qldongsanpham')->with('thongbao', 'Sửa dòng sản phẩm thành công!'); 
    }
    public function deleteDongSanPham($id)
    {
        $dongsanpham = dongsanpham::findOrFail($id);
        $dongsanpham->delete();
        return redirect('qldongsanpham')->with('thongbao', 'Xoá dòng sản phẩm thành công!');
    }





//-------------------------QUẢN LÝ CHI TIẾT ẢNH DSP-------------------------
    public function qlctanhdongsanpham() {
        //lấy các thông tin ctanhdongsanpham và trả về view
        $ctanhdongsanpham = ctanhdongsanpham::join('dongsanpham', 'ctanhdongsanpham.MaDSP', 'dongsanpham.id')
                                    ->select('ctanhdongsanpham.*', 'dongsanpham.TenDSP')
                                    ->orderBy('id', 'desc')
                                    ->paginate(10);
        return view('admin/dongsanpham/qlctanhdongsanpham', compact('ctanhdongsanpham'))->with('i', (request()->input('page', 1) -1) * 10);
    }

    public function qlctanhdongsanpham_create() {
        $dongsanpham = dongsanpham::pluck('TenDSP', 'id')
                            ->sortByDesc('id');
        return view('admin/dongsanpham/qlctanhdongsanpham_create', compact('dongsanpham'));
    }

    public function qlctanhdongsanpham_update($id){
        $ctanhdongsanpham = ctanhdongsanpham::find($id);
        $dongsanpham = dongsanpham::pluck('TenDSP', 'id')
                            ->sortByDesc('id');
        return view('admin/dongsanpham/qlctanhdongsanpham_update', compact('ctanhdongsanpham', 'dongsanpham'));
    }

    public function createCTAnhDongSanPham(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/DSP';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        ctanhdongsanpham::create($input);

        return redirect('qlctanhdongsanpham')->with('thongbao', 'Thêm chi tiết ảnh dòng sản phẩm thành công!');
    }

    public function updateCTAnhDongSanPham(Request $request, $id) //thực thi sửa
    {   
        $ctanhdongsanpham = ctanhdongsanpham::find($id);
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/DSP';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        else{
            unset($input['Anh']);
        }

        $ctanhdongsanpham -> update($input);

        return redirect('qlctanhdongsanpham')->with('thongbao', 'Sửa chi tiết ảnh dòng sản phẩm thành công!'); 
    }

    public function deleteCTAnhDongSanPham($id)
    {
        $ctanhdongsanpham= ctanhdongsanpham::findOrFail($id);
        $ctanhdongsanpham->delete();
        return redirect('qlctanhdongsanpham')->with('thongbao', 'Xoá chi tiết ảnh dòng sản phẩm thành công!');
    }
}
