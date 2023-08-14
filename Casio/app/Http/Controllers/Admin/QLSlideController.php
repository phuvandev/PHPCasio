<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\slide;

class QLSlideController extends Controller
{
    public function qlslide() {
        //lấy các thông tin slide và trả về view
        $slide = slide::orderBy('id', 'desc')->paginate(10);
        return view('admin/slide/qlslide', compact('slide'))->with('i', (request()->input('page', 1) -1) * 10);
    }

    public function qlslide_create() {
        return view('admin/slide/qlslide_create');
    }

    public function qlslide_update($id){
        $slide = slide::find($id);
        return view('admin/slide/qlslide_update', compact('slide'));
    }

    public function createSlide(Request $request) { 
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/Slide';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        slide::create($input);

        return redirect('qlslide')->with('thongbao', 'Thêm slide thành công!');
    }

    public function updateSlide(Request $request, $id) //thực thi sửa
    {   
        $slide = slide::find($id);
        $input = $request->all();

        if($Anh = $request->file('Anh')){
            $destinationPath = 'assets/custom/Anh/Slide';
            $profileImage = date('YmdHis') . "." . $Anh->getClientOriginalExtension();
            $Anh->move($destinationPath, $profileImage);
            $input['Anh'] = "$profileImage";
        }
        else{
            unset($input['Anh']);
        }

        $slide -> update($input);

        return redirect('qlslide')->with('thongbao', 'Sửa slide thành công!'); 
    }

    public function deleteSlide($id)
    {
        $slide= slide::findOrFail($id);
        $slide->delete();
        return redirect('qlslide')->with('thongbao', 'Xoá slide thành công!');
    }
}
