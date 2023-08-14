<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\gioithieu;

class QLGioiThieuController extends Controller
{
    public function qlgioithieu() {
        //lấy các thông tin gioithieu và trả về view
        $gioithieu = gioithieu::orderBy('id', 'desc')->paginate(10);
        return view('admin/gioithieu/qlgioithieu', compact('gioithieu'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlgioithieu_create() {
        return view('admin/gioithieu/qlgioithieu_create');
    }
    public function qlgioithieu_update($id){
        $gioithieu = gioithieu::find($id);
        return view('admin/gioithieu/qlgioithieu_update', compact('gioithieu'));
    }

    public function createGioiThieu(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/GTLH';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        gioithieu::create($input);

        return redirect('qlgioithieu')->with('thongbao', 'Thêm giới thiệu thành công!');
    }
    
    public function updateGioiThieu(Request $request, $id) //thực thi sửa
    {   
        $gioithieu = gioithieu::find($id);
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/GTLH';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        else{
            unset($input['Anh']);
        }

        $gioithieu -> update($input);

        return redirect('qlgioithieu')->with('thongbao', 'Sửa giới thiệu thành công!'); 
    }
    public function deleteGioiThieu($id)
    {
        $gioithieu= gioithieu::findOrFail($id);
        $gioithieu -> delete();
        return redirect('qlgioithieu')->with('thongbao', 'Xoá giới thiệu thành công!');
    }
}
