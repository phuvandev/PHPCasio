<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\lienhe;

class LienHeController extends Controller
{
    public function lienhe() {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();
        $lienhe = lienhe::get();
        return view('custom/lienhe', compact('listmenu', 'listdanhmuc','lienhe'));
    }
}
