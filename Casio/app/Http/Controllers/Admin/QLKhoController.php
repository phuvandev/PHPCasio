<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\kho;
use App\Models\ctkho;
use App\Models\sanpham;

class QLKhoController extends Controller
{
    public function qlkho() {  //lấy các thông tin kho và trả về view
        $kho = kho::orderBy('id', 'desc')
                                ->paginate(10);
        return view('admin/kho/qlkho', compact('kho'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlkho_create() //gọi lên giao diện
    {   
        return view('admin/kho/qlkho_create'); 
    }
    public function qlkho_update($id)//gọi lên giao diện
    {   
        $kho = kho::find($id);
        return view('admin/kho/qlkho_update', compact('kho')); //compact: trả về 1 đối tượng tên là menu
    }
    public function qlkho_detail($id){
        $kho = kho::find($id);
        $ctkho = ctkho::join('sanpham', 'ctkho.MaSP', '=', 'sanpham.id')
                            ->select('ctkho.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                            ->where('MaKho', $id)
                            ->paginate(10);
        return view('admin/kho/qlkho_detail', compact('kho', 'ctkho'));
    }


    public function createKho(Request $request) { //thực thi tạo mới
        $kho = new kho();

        $kho->TenKho = $request->input('TenKho');
        $kho->DiaChi = $request->input('DiaChi');

        $kho->save();
        return redirect('qlkho')->with('thongbao', 'Thêm kho thành công!');
    }
    public function updateKho(Request $request, $id) //thực thi sửa
    {   
        $kho = kho::find($id);

        $kho->TenKho = $request->input('TenKho');
        $kho->DiaChi = $request->input('DiaChi');

        $kho->save();
        return redirect('qlkho')->with('thongbao', 'Sửa kho thành công!'); 
    }
    
    public function deleteKho($id)
    {
        $kho = kho::findOrFail($id);
        $kho -> delete();
        return redirect('qlkho')->with('thongbao', 'Xoá kho thành công!');
    }



//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//-------------------------QUẢN LÝ CT KHO--------------------------------
//----Gọi giao diện----
    public function qlctkho() { 
        $ctkho = ctkho::join('sanpham', 'ctkho.MaSP', '=', 'sanpham.id')
                                ->select('ctkho.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                ->orderBy('id', 'desc')
                                ->paginate(10);
        return view('admin/kho/qlctkho', compact('ctkho'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlctkho_create() //gọi lên giao diện
    {   
        $kho = kho::orderByDesc('id')
                    ->pluck('TenKho', 'id');
        $sanpham = sanpham::orderByDesc('id')
                    ->pluck('TenSP', 'id');
        return view('admin/kho/qlctkho_create', compact('kho', 'sanpham')); 
    }
    public function qlctkho_update($id)//gọi lên giao diện
    {   
        $ctkho = ctkho::find($id);
        $kho = kho::orderByDesc('id')
                    ->pluck('TenKho', 'id');
        $sanpham = sanpham::orderByDesc('id')
                    ->pluck('TenSP', 'id');
        return view('admin/kho/qlctkho_update', compact('ctkho', 'kho', 'sanpham')); //compact: trả về 1 đối tượng tên là menu
    }

//----Thực thi----
    public function createCTKho(Request $request) { 
        $ctkho = new ctkho();

        $ctkho->SoLuong = $request->input('SoLuong');
        $ctkho->MaKho = $request->input('MaKho');
        $ctkho->MaSP = $request->input('MaSP');

        $ctkho->save();
        return redirect('qlctkho')->with('thongbao', 'Thêm chi tiết kho thành công!');
    }
    public function updateCTKho(Request $request, $id) //thực thi sửa
    {   
        $ctkho = ctkho::find($id);

        $ctkho->SoLuong = $request->input('SoLuong');
        $ctkho->MaKho = $request->input('MaKho');
        $ctkho->MaSP = $request->input('MaSP');

        $ctkho->save();
        return redirect('qlctkho')->with('thongbao', 'Sửa chi tiết kho thành công!'); 
    }

    public function deleteCTKho($id)
    {
        $ctkho = ctkho::findOrFail($id);
        $ctkho -> delete();
        return redirect('qlctkho')->with('thongbao', 'Xoá chi tiết kho thành công!');
    }
}
