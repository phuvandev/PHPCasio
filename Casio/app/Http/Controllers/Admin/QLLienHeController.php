<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\lienhe;

class QLLienHeController extends Controller
{
    public function qllienhe() {
        //lấy các thông tin lienhe và trả về view
        $lienhe = lienhe::orderBy('id', 'desc')->orderBy('id', 'desc')->paginate(12);
        return view('admin/lienhe/qllienhe', compact('lienhe'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qllienhe_create() {
        return view('admin/lienhe/qllienhe_create');
    }
    public function qllienhe_update($id){
        $lienhe = lienhe::find($id);
        return view('admin/lienhe/qllienhe_update', compact('lienhe'));
    }



    public function createLienHe(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/GTLH';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        lienhe::create($input);
        
        return redirect('qllienhe')->with('thongbao', 'Thêm liên hệ thành công!');
    }
    
    public function updateLienHe(Request $request, $id) //thực thi sửa
    {   
        $lienhe = lienhe::find($id);
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

        $lienhe -> update($input);

        return redirect('qllienhe')->with('thongbao', 'Sửa liên hệ thành công!'); 
    }
    
    public function deleteLienHe($id)
    {
        $lienhe = lienhe::findOrFail($id);
        $lienhe -> delete();
        return redirect('qllienhe')->with('thongbao', 'Xoá liên hệ thành công!');
    }
}
