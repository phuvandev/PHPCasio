<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\thongsokythuat;
use App\Models\sanpham;

class QLThongSoKyThuatController extends Controller
{
    public function qlthongsokythuat() {  //lấy các thông tin thongsokythuat và trả về view
        $thongsokythuat = thongsokythuat::join('sanpham', 'thongsokythuat.MaSP', 'sanpham.id')
                                        ->select('thongsokythuat.*', 'sanpham.TenSP', 'sanpham.AnhDaiDien')
                                        ->orderBy('id', 'desc')
                                        ->paginate(12);
                                
        return view('admin/thongsokythuat/qlthongsokythuat', compact('thongsokythuat'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlthongsokythuat_create() //gọi lên giao diện
    {   
        $sanpham = sanpham::pluck('TenSP', 'id')
                            ->sortByDesc('id');
        return view('admin/thongsokythuat/qlthongsokythuat_create', compact('sanpham')); //compact: trả về 1 đối tượng tên là thongsokythuat
    }
    public function qlthongsokythuat_update($id)//gọi lên giao diện
    {   
        $thongsokythuat = thongsokythuat::find($id);
        $sanpham = sanpham::pluck('TenSP', 'id')
                            ->sortByDesc('id');
        return view('admin/thongsokythuat/qlthongsokythuat_update', compact('thongsokythuat', 'sanpham')); //compact: trả về 1 đối tượng tên là menu
    }



    public function createThongSoKyThuat(Request $request) { //thực thi tạo mới
        $thongsokythuat = new thongsokythuat();

        $thongsokythuat->TenTS = $request->input('TenTS');
        $thongsokythuat->MoTa = $request->input('MoTa');
        $thongsokythuat->MaSP = $request->input('MaSP');

        $thongsokythuat->save();
        return redirect('qlthongsokythuat')->with('thongbao', 'Thêm thông số kỹ thuật thành công!');
    }
    public function updateThongSoKyThuat(Request $request, $id) //thực thi sửa
    {   
        $thongsokythuat = thongsokythuat::find($id);

        $thongsokythuat->TenTS = $request->input('TenTS');
        $thongsokythuat->MoTa = $request->input('MoTa');
        $thongsokythuat->MaSP = $request->input('MaSP');

        $thongsokythuat->save();
        return redirect('qlthongsokythuat')->with('thongbao', 'Sửa thông số kỹ thuật thành công!'); 
    }
    
    public function deleteThongSoKyThuat($id)
    {
        $thongsokythuat= thongsokythuat::findOrFail($id);
        $thongsokythuat -> delete();
        return redirect('qlthongsokythuat')->with('thongbao', 'Xoá thông số kỹ thuật thành công!');
    }
}
