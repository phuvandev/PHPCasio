<?php

namespace App\Http\Controllers\Custom;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\menu;
use App\Models\dongsanpham;
use App\Models\tintuc;
use App\Models\cttintuc;
use App\Models\User;

class TinTucController extends Controller
{
    public function tintuc() {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();
        $listtintuc = tintuc::select('tintuc.id', 'tintuc.AnhDaiDien', 'tintuc.TieuDe', 'tintuc.MoTa', 'tintuc.created_at')
                    ->orderBy('created_at', 'desc')
                    ->paginate(4);

        return view('custom/tintuc', compact('listmenu', 'listdanhmuc', 'listtintuc'))->with('i', (request()->input('page', 1) -1) * 10);
    }
    public function cttintuc($id) {
        $listmenu = menu::all();
        $listdanhmuc = dongsanpham::get();

        $tintuc = tintuc::join('users', 'users.id', '=', 'tintuc.MaND')
                    ->where('tintuc.id', '=', $id)
                    ->select('tintuc.*', 'users.name')
                    ->first();
        
        $cttintuc = $tintuc->cttintuc()->get();

        $listtintuc_new = tintuc::select('tintuc.*')
                        ->orderBy('created_at', 'desc')
                        ->get();
        return view('custom/cttintuc', compact('listmenu', 'listdanhmuc', 'tintuc', 'cttintuc', 'listtintuc_new'));
    }
}
