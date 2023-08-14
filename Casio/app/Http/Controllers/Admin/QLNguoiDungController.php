<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DateTime;

use App\Models\User;

class QLNguoiDungController extends Controller
{
    public function qlnguoidung() {
        $nguoidung = User::orderBy('id', 'desc')
                    ->paginate(20);
        return view('admin/nguoidung/qlnguoidung', compact('nguoidung'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function qlnguoidung_create() {
        return view('admin/nguoidung/qlnguoidung_create');
    }
    public function qlnguoidung_update($id){
        $nguoidung = User::find($id);
        return view('admin/nguoidung/qlnguoidung_update', compact('nguoidung'));
    }



    public function detailNguoiDung($id) {
        $nguoidung = User::find($id);
        
        return view('admin.nguoidung.qlnguoidung_detail', compact('nguoidung'));
    }
    public function createNguoiDung(Request $request) { 
        $nguoidung = new User();

        $nguoidung->username = $request->input('username');
        $nguoidung->password = bcrypt($request->input('password'));
        $nguoidung->email = $request->input('email');
        $nguoidung->name = $request->input('name');
        $nguoidung->dob = $request->input('dob');
        $nguoidung->gender = $request->input('gender') ? 1 : 0;
        $nguoidung->address = $request->input('address');
        $nguoidung->phone = $request->input('phone');
        $nguoidung->role = $request->input('role');

        // Kiểm tra tài khoản không trùng với dữ liệu đã có trong CSDL
        $checkUsername = User::where('username', $nguoidung->username)->first();
        if ($checkUsername) {
            return redirect()->back()->with('messError', 'Tài khoản đã tồn tại! Vui lòng nhập tài khoản khác...');
        }

        // Kiểm tra định dạng email
        if (!filter_var($nguoidung->email, FILTER_VALIDATE_EMAIL)) {
            return redirect()->back()->with('messError', 'Email không hợp lệ! Vui lòng nhập địa chỉ email hợp lệ.');
        }
        // Format email thành ký tự thường
        $nguoidung->email = strtolower($nguoidung->email);

        //------------ kiểm tra ngày sinh-------------
        $ngayMin = DateTime::createFromFormat('d/m/Y', '01/01/1900');
        $ngayMax = new DateTime();
        $ngayMax->modify('-17 year'); //năm sinh
        $ngaySinh = new DateTime($nguoidung->dob);
        if ($ngaySinh < $ngayMin || $ngaySinh > $ngayMax) {
            return redirect()->back()->with('messError', 'Vui lòng chọn ngày sinh hợp lệ...');
        }
        //------------------------------------------------
        $sdt = $nguoidung->phone;
        // Kiểm tra số điện thoại phải là số và không được rỗng
        if (!is_numeric($sdt) || empty($sdt)) {
            return redirect()->back()->with('messError', 'Số điện thoại không hợp lệ! Vui lòng nhập số điện thoại là số.');
        }
        // Kiểm tra số điện thoại có đủ 10 chữ số không
        if (strlen($sdt) != 10) {
            return redirect()->back()->with('messError', 'Số điện thoại không hợp lệ! Vui lòng nhập số điện thoại đủ 10 chữ số.');
        }
        //------------------------------------------------
        $nguoidung->save();
        return redirect('qlnguoidung')->with('thongbao', 'Thêm người dùng thành công!');
    }
    
    public function updateNguoiDung(Request $request, $id) //thực thi sửa
    {   
        $nguoidung = User::find($id);

        $nguoidung->username = $request->input('username');
        $nguoidung->password = bcrypt($request->input('password'));
        $nguoidung->email = $request->input('email');
        $nguoidung->name = $request->input('name');
        $nguoidung->dob = $request->input('dob');
        $nguoidung->gender = intval($request->input('gender'));
        $nguoidung->address = $request->input('address');
        $nguoidung->phone = $request->input('phone');
        $nguoidung->role = $request->input('role');

        // Kiểm tra định dạng email
        if (!filter_var($nguoidung->email, FILTER_VALIDATE_EMAIL)) {
            return redirect()->back()->with('messError', 'Email không hợp lệ! Vui lòng nhập địa chỉ email hợp lệ.');
        }
        // Format email thành ký tự thường: đồng nhất và dễ dàng so sánh
        $nguoidung->email = strtolower($nguoidung->email);

        //------------ kiểm tra ngày sinh-------------
        $ngayMin = DateTime::createFromFormat('d/m/Y', '01/01/1900');
        $ngayMax = new DateTime();
        $ngayMax->modify('-1 day');
        $ngaySinh = new DateTime($nguoidung->dob);
        if ($ngaySinh < $ngayMin || $ngaySinh > $ngayMax) {
            return redirect()->back()->with('messError', 'Vui lòng chọn ngày sinh hợp lệ...');
        }
        //------------------------------------------------
        $sdt = $nguoidung->phone;
        // Kiểm tra số điện thoại phải là số và không được rỗng
        if (!is_numeric($sdt) || empty($sdt)) {
            return redirect()->back()->with('messError', 'Số điện thoại không hợp lệ! Vui lòng nhập số điện thoại là số.');
        }
        // Kiểm tra số điện thoại có đủ 10 chữ số không
        if (strlen($sdt) != 10) {
            return redirect()->back()->with('messError', 'Số điện thoại không hợp lệ! Vui lòng nhập số điện thoại đủ 10 chữ số.');
        }
        //------------------------------------------------
        
        $nguoidung->save();

        return redirect('qlnguoidung')->with('thongbao', 'Sửa người dùng thành công!'); 
    }
    public function deleteNguoiDung($id)
    {
        $nguoidung = User::findOrFail($id);
        $nguoidung -> delete();
        return redirect('qlnguoidung')->with('thongbao', 'Xoá người dùng thành công!');
    }
}
