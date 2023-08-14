<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\nhacungcap;

class QLNhaCungCapController extends Controller
{
    public function qlnhacungcap() {
        //lấy các thông tin nhacungcap và trả về view
        $nhacungcap = nhacungcap::orderBy('id', 'desc')
                                ->paginate(10);
        return view('admin/nhacungcap/qlnhacungcap', compact('nhacungcap'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlnhacungcap_create() {
        return view('admin/nhacungcap/qlnhacungcap_create');
    }
    public function createNhaCungCap(Request $request) { 
        $nhacungcap = new nhacungcap();
        $nhacungcap->TenNCC = $request->input('TenNCC');
        $nhacungcap->DiaChi = $request->input('DiaChi');
        $nhacungcap->SDT = $request->input('SDT');

        $nhacungcap->save();
        return redirect('qlnhacungcap')->with('thongbao', 'Thêm nhà cung cấp thành công!');
    }
    public function qlnhacungcap_update($id){
        $nhacungcap = nhacungcap::find($id);
        return view('admin/nhacungcap/qlnhacungcap_update', compact('nhacungcap'));
    }
    public function updateNhaCungCap(Request $request, $id) //thực thi sửa
    {   
        $nhacungcap = nhacungcap::find($id);
        $nhacungcap->TenNCC = $request->input('TenNCC');
        $nhacungcap->DiaChi = $request->input('DiaChi');
        $nhacungcap->SDT = $request->input('SDT');

        $nhacungcap->save();

        return redirect('qlnhacungcap')->with('thongbao', 'Sửa nhà cung cấp thành công!'); 
    }
    public function deleteNhaCungCap($id)
    {
        $nhacungcap = nhacungcap::findOrFail($id);
        $nhacungcap -> delete();
        return redirect('qlnhacungcap')->with('thongbao', 'Xoá nhà cung cấp thành công!');
    }

}
