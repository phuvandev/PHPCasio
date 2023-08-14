<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\tintuc;
use App\Models\User;
use App\Models\cttintuc;

class QLTinTucController extends Controller
{
    public function qltintuc() {
        $tintuc = tintuc::join('users', 'tintuc.MaND', '=', 'users.id')
                ->select('tintuc.*', 'users.name')
                ->orderBy('id', 'desc')
                ->paginate(10);
        return view('admin/tintuc/qltintuc', compact('tintuc'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qltintuc_create() {
        $nguoidung = User::pluck('name', 'id');
        return view('admin/tintuc/qltintuc_create', compact('nguoidung'));
    }
    public function qltintuc_update($id){
        $tintuc = tintuc::find($id);
        $nguoidung = User::pluck('name', 'id');
        return view('admin/tintuc/qltintuc_update', compact('tintuc', 'nguoidung'));
    }
    public function qltintuc_detail($id){
        $tintuc = tintuc::find($id);
        $cttintuc = cttintuc::where('MaTT', $id)->get();
        return view('admin/tintuc/qltintuc_detail', compact('tintuc', 'cttintuc'));
    }


    public function createTinTuc(Request $request) { 
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/TT';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        tintuc::create($input);
        return redirect('qltintuc')->with('thongbao', 'Thêm tin tức thành công!');
    }
    
    public function updateTinTuc(Request $request, $id) //thực thi sửa
    {   
        $tintuc = tintuc::find($id);
        $input = $request->all();

        if($AnhDaiDien = $request->file('AnhDaiDien')){
            $destinationPath = 'assets/custom/Anh/TT';
            $profileImage = date('YmdHis') . "." . $AnhDaiDien->getClientOriginalExtension();
            $AnhDaiDien->move($destinationPath, $profileImage);
            $input['AnhDaiDien'] = "$profileImage";
        }
        else{
            unset($input['AnhDaiDien']);
        }

        $tintuc->update($input);

        return redirect('qltintuc')->with('thongbao', 'Sửa tin tức thành công!'); 
    }

    public function deleteTinTuc($id)
    {
        $tintuc = tintuc::findOrFail($id);
        $tintuc -> delete();
        return redirect('qltintuc')->with('thongbao', 'Xoá tin tức thành công!');
    }
}
