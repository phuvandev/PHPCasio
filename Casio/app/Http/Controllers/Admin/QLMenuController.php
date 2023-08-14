<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;

class QLMenuController extends Controller
{
    public function qlmenu() {  //lấy các thông tin menu và trả về view
        $menu = menu::orderBy('id', 'desc')->paginate(10);
        return view('admin/menu/qlmenu', compact('menu'))->with('i', (request()->input('page', 1) -1) * 10);
    }

    public function qlmenu_create() //gọi lên giao diện
    {   
        return view('admin/menu/qlmenu_create');
    }

    public function createMenu(Request $request) { //thực thi tạo mới
        $menu = new menu();
        $menu->TenMenu = $request->input('TenMenu');
        $menu->STT = $request->input('STT');
        $menu->Link = $request->input('Link');
        // $menu->TrangThai = $request->input('TrangThai') ? 1 : 0;
        $menu->save();
        return redirect('qlmenu')->with('thongbao', 'Thêm menu thành công!');
    }

    public function qlmenu_update($id)//gọi lên giao diện
    {   
        $menu = menu::find($id);
        return view('admin/menu/qlmenu_update', compact('menu')); //compact: trả về 1 đối tượng tên là menu
    }

    public function updateMenu(Request $request, $id) //thực thi sửa
    {   
        $menu = menu::find($id);
        $menu->TenMenu = $request->input('TenMenu');
        $menu->STT = $request->input('STT');
        $menu->Link = $request->input('Link');
        // chuyển đổi giá trị thành kiểu dữ liệu bit
        // $menu->TrangThai = intval($request->input('TrangThai')); 
        $menu->save();
        // $menu -> update($request->all());
        //redirect về function đầu
        return redirect('qlmenu')->with('thongbao', 'Sửa menu thành công!'); 
    }
    
    public function deleteMenu($id)
    {
        $menu= menu::findOrFail($id);
        $menu -> delete();
        return redirect('qlmenu')->with('thongbao', 'Xoá menu thành công!');
    }
}
