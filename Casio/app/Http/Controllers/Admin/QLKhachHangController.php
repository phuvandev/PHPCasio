<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\khachhang;

class QLKhachHangController extends Controller
{
    public function qlkhachhang() {
        $khachhang = khachhang::orderBy('id', 'desc')
                                ->paginate(10);
        return view('admin/khachhang/qlkhachhang', compact('khachhang'))->with('i', (request()->input('page', 1) -1) * 10);
    }
}
