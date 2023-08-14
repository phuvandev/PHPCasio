<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

use Auth;

class QuanTriRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(Auth::check() && Auth::user()->role == "Quản trị"){
            return $next($request);
        }
        else{
            if(Auth::check() && Auth::user()->role == "Nhân viên"){
                return redirect()->route('admin')->with('thongbao', 'Bạn không được quyền truy cập trang này!');
            }
            else {
                return redirect()->route('dangnhap');
            }
            
        }
    }
}
