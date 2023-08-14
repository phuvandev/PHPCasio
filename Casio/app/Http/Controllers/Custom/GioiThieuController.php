<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\gioithieu;

class GioiThieuController extends Controller
{
    public function gioithieu() {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();
        $gioithieu = gioithieu::get();
        return view('custom/gioithieu', compact('listmenu', 'listdanhmuc', 'gioithieu'));
    }
}
