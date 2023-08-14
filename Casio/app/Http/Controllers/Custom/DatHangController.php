<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Session;
use Auth;
use Illuminate\Support\Facades\Validator;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\sanpham;

use App\Models\khachhang;
use App\Models\donhang;
use App\Models\ctdonhang;


class DatHangController extends Controller
{
    //------------------------TRANG GIỎ HÀNG-------------------------------------
    public function giohang(){
        $listmenu = menu::all();

        $listdanhmuc = dongsanpham::get();

        return view('custom/giohang', compact('listmenu', 'listdanhmuc'));
    }

//------------------------------------------------------------------------------
    public function themvaogiohang($id){   
        $sanpham = sanpham::where('sanpham.id', '=', $id)
                            ->leftjoin('giamgia', 'sanpham.id', '=', 'giamgia.MaSP')
                            ->select('sanpham.*', 'giamgia.PhanTram')
                            ->first();
        if ($sanpham) {
            $giaSauGiam = $sanpham->GiaBan * (1 - $sanpham->PhanTram / 100);
            $sanpham->GiaSauGiam = $giaSauGiam;
        }

        $cart = session()->get('giohang', []);

        if(isset($cart[$id])) //tồn tại thì tăng sl
        {
            $cart[$id]['soluong']++;
        }
        else //thêm vào 1 sp
        {
            $cart[$id] = [
                "id" => $id,
                "tensp" => $sanpham -> TenSP,
                "anhdaidien" => $sanpham -> AnhDaiDien,
                "giaban" => $sanpham -> GiaBan,
                "soluong" => 1
            ];
        } 
        session()->put('giohang', $cart); //lưu
        return redirect()->back();
    }
//----------------THÊM VÀO GIỎ HÀNG TRANG CHI TIẾT----------------------
    public function themvaogiohangchitiet(Request $request, $id){   
        $sanpham = sanpham::where('sanpham.id', '=', $id)
                            ->leftjoin('giamgia', 'sanpham.id', '=', 'giamgia.MaSP')
                            ->select('sanpham.*', 'giamgia.PhanTram')
                            ->first();
        if ($sanpham) {
            $giaSauGiam = $sanpham->GiaBan * (1 - $sanpham->PhanTram / 100);
            $sanpham->GiaSauGiam = $giaSauGiam;
        }

        $cart = session()->get('giohang', []);

        if(isset($cart[$id])) //nếu đã tồn tại thì tăng thêm sl
        {
            $cart[$id]['soluong'] += $request->number ;
        }
        else //thêm vào 1 sp
        {
            $cart[$id] = [
                "id" => $id,
                "tensp" => $sanpham -> TenSP,
                "anhdaidien" => $sanpham -> AnhDaiDien,
                "giaban" => $sanpham -> GiaBan,
                "soluong" => $request -> number,
            ];
        } 
        session()->put('giohang', $cart);
        return redirect()->back();
    }
//------------------GIẢM SỐ LƯỢNG------------------------------
    public function giamsoluong($id){
        $sanpham = session()->get('giohang.' . $id);
        $sanpham['soluong']--;
        if($sanpham['soluong'] == 0)
        {
            session()->pull('giohang.' . $id); //xóa đi session
        } else {
            session()->put('giohang.' . $id, $sanpham);
        }
        return redirect()->back();
    }
//------------------TĂNG SỐ LƯỢNG------------------------------
    public function tangsoluong($id){
        $sanpham = session()->get('giohang.' . $id);
        $sanpham['soluong']++;
        session()->put('giohang.' . $id, $sanpham);
        return redirect()->back();
    }
////------------------XÓA SẢN PHẨM------------------------------
    public function xoasanphamgiohang($id){
        session()->pull('giohang.' . $id);
        return redirect()->back();
    }
//------------------XÓA TẤT CẢ----------------------------------
    public function xoatatca(){
        Session::forget('giohang');
        return redirect()->back();
    }
//-----------------SANG TRANG THANH TOÁN--------------------------------
    public function thanhtoan()
    {
        $listmenu = menu::all();

        $listdanhmuc = dongsanpham::get();
        // if(!session()->has('giohang') || count(session('giohang')) == 0) {
        //     return redirect()->back()->with('thongbao', 'Giỏ hàng chưa có sản phẩm nào!!!');
        // } else {

        if(Auth::check()){
            return view('custom/thanhtoan', compact('listmenu', 'listdanhmuc'));
        }
        else{
            return redirect()->back()->with('thongbao', 'Vui lòng đăng nhập trước khi mua hàng!!!');
        }
    }
//----------------------ĐẶT HÀNG---------------------------------------
    public function dathang(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'TenKH' => 'required',
            'DiaChi' => 'required',
            'SDT' => 'required',
            'Email' => 'required|email', 
            'apply' => 'required',
        ], [
            'Email.required' => 'Vui lòng nhập địa chỉ email',
            'Email.email' => 'Địa chỉ email không hợp lệ',
        ]);
        
        if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->with('thongbao', 'Vui lòng không để trống thông tin!');
        }

        //tạo khách hàng
        khachhang::create($request->all());
        $khachhangmoi = khachhang::orderBy('id', 'desc')->first()->id;

        $donhang = new donhang();
        $donhang->MaKH = $khachhangmoi;
        $donhang->TrangThai = false;
        $donhang->save();       
        $donhangmoi = donhang::orderBy('id', 'desc')->first()->id;
        
        //tạo đơn hàng
        $giohang = session()->get('giohang');
        foreach ($giohang as $ctdh) {
            $ctdonhang = new ctdonhang();
            $ctdonhang->MaDH = $donhangmoi;
            $ctdonhang->MaSP = $ctdh['id'];
            $ctdonhang->SoLuong = $ctdh['soluong'];
            $ctdonhang->GiaMua = $ctdh['giaban'];
            $ctdonhang->save();
        }

        //Xóa session
        Session::forget('giohang');
        return redirect()->route('home')->with('thongbao', 'Đặt hàng thành công! Cảm ơn bạn đã sử dụng dịch vụ...');
    }
}
