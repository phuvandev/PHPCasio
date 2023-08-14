<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use Auth;

class AuthController extends Controller
{
    public function home() {
        return view('custom/index');
    }

    public function dangnhap() {
        return view('custom/dangnhap');
    }
    public function dangky(){
        return view('custom/dangky');
    }

    public function signup(Request $request) { 
        $nguoidung = new User();
        $nguoidung->username = $request->input('username');
        $nguoidung->password = bcrypt($request->input('password'));
        $nguoidung->email = $request->input('email');
        $nguoidung->name = $request->input('name');
        $nguoidung->dob = "1970/1/1";
        $nguoidung->gender = true;
        $nguoidung->address = $request->input('address');
        $nguoidung->phone = $request->input('phone');
        $nguoidung->role = "Khách hàng";

        $nguoidung->save();

        return redirect('dangnhap');
    }

    public function login(Request $request) { 
        if(Auth::attempt(['username'=>$request->username,'password'=>$request->password])){
            if(Auth::user()->role == "Khách hàng"){
                session()->put('login_time', now());
                return redirect()->route('home')->with('thongbao', 'Chào mừng ' . Auth::user()->name .' !');
            }
            if(Auth::user()->role == "Quản trị" || Auth::user()->role == "Nhân viên"){
                session()->put('login_time', now());
                return redirect()->route('admin')->with('thongbao', 'Chào mừng ' . Auth::user()->name .' đã quay trở lại!');
            }
        }
        else {
            return redirect()->back()->with('thongbao', 'Thông tin đăng nhập không chính xác!');
        }
    }

    public function dangxuat()
    {
        Auth::logout();
        return redirect('dangnhap');
    }
}
