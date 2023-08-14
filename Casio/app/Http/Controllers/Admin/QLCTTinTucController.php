<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\cttintuc;
use App\Models\tintuc;

class QLCTTinTucController extends Controller
{
    public function qlcttintuc() {
        //lấy các thông tin cttintuc và trả về view
        $cttintuc = cttintuc::orderBy('id', 'desc')->paginate(5);
        return view('admin/cttintuc/qlcttintuc', compact('cttintuc'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlcttintuc_create() {
        $tintuc = tintuc::pluck('TieuDe', 'id')
                        ->reverse();
        return view('admin/cttintuc/qlcttintuc_create', compact('tintuc'));
    }
    public function qlcttintuc_update($id){
        $cttintuc = cttintuc::find($id);
        $tintuc = tintuc::pluck('TieuDe', 'id')
                        ->reverse();
        return view('admin/cttintuc/qlcttintuc_update', compact('cttintuc', 'tintuc'));
    }

    public function createCTTinTuc(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/TT';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        cttintuc::create($input);

        return redirect('qlcttintuc')->with('thongbao', 'Thêm chi tiết tin tức thành công!');
    }
    
    public function updateCTTinTuc(Request $request, $id) //thực thi sửa
    {   
        $cttintuc = cttintuc::find($id);
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/TT';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        else{
            unset($input['Anh']);
        }

        $cttintuc -> update($input);

        return redirect('qlcttintuc')->with('thongbao', 'Sửa chi tiết tin tức thành công!'); 
    }
    public function deleteCTTinTuc($id)
    {
        $cttintuc = cttintuc::findOrFail($id);
        $cttintuc -> delete();
        return redirect('qlcttintuc')->with('thongbao', 'Xoá chi tiết tin tức thành công!');
    }
}
