<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});

//--------------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------------//
Route::controller(App\Http\Controllers\Custom\HomeController::class)->group(function () {
    Route::get('/error404', 'error404')->name('error404');
    Route::get('/', 'home')->name('home');
    
    Route::get('/taikhoan', 'taikhoan')->name('taikhoan')->middleware('KhachHangRole');

    Route::get('/timkiem', 'timkiem')->name('timkiem');
});
Route::controller(App\Http\Controllers\Custom\DatHangController::class)->group(function () {
    Route::get('/giohang', 'giohang')->name('giohang');
    Route::get('/thanhtoan', 'thanhtoan')->name('thanhtoan');//sang trang thanh toán
    Route::post('/dathang', 'dathang')->name('dathang'); //thêm vào đơn hàng

    Route::get('/themvaogiohang/{ma}', 'themvaogiohang')->name('themvaogiohang');
    Route::get('/themvaogiohangchitiet/{ma}', 'themvaogiohangchitiet')->name('themvaogiohangchitiet');
    Route::get('/giamsoluong/{ma}', 'giamsoluong')->name('giamsoluong');
    Route::get('/tangsoluong/{ma}', 'tangsoluong')->name('tangsoluong');
    Route::get('/xoasanphamgiohang/{ma}', 'xoasanphamgiohang')->name('xoasanphamgiohang');
    Route::get('/xoatatca', 'xoatatca')->name('xoatatca');
});



Route::controller(App\Http\Controllers\Custom\GioiThieuController::class)->group(function () {
    Route::get('/gioithieu', 'gioithieu')->name('gioithieu');
});
Route::controller(App\Http\Controllers\Custom\TinTucController::class)->group(function () {
    Route::get('/tintuc', 'tintuc')->name('tintuc');
    Route::get('/cttintuc/{id}', 'cttintuc')->name('cttintuc');
});
Route::controller(App\Http\Controllers\Custom\LienHeController::class)->group(function () {
    Route::get('/lienhe', 'lienhe')->name('lienhe');
});
Route::controller(App\Http\Controllers\Custom\DongSanPhamController::class)->group(function () {
    Route::get('/dongsanpham/{id}', 'dongsanpham')->name('dongsanpham');
});
Route::controller(App\Http\Controllers\Custom\SanPhamController::class)->group(function () {
    Route::get('/sanpham/{id}', 'sanpham')->name('sanpham');
});





//***********ADMIN***************ADMIN*************ADMIN*****************//
//------------------------TRANG CHỦ ADMIN-----------------------------------------
Route::controller(App\Http\Controllers\Admin\AdminController::class)->middleware('NhanVienRole')->group(function () {
    Route::get('/admin', 'admin')->name('admin');
});
//----------------------------QUẢN LÝ MENU-----------------------------------
Route::controller(App\Http\Controllers\Admin\QLMenuController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlmenu', 'qlmenu')->name('qlmenu');
    Route::get('/qlmenu_create', 'qlmenu_create')->name('qlmenuCreate'); //gọi ra giao diện
    Route::get('/qlmenu_update/{id}', 'qlmenu_update')->name('qlmenuUpdate'); //gọi ra giao diện

    Route::post('/createMenu', 'createMenu')->name('createMenu');
    Route::put('/updateMenu/{id}', 'updateMenu')->name('updateMenu');
    Route::delete('/deleteMenu/{id}', 'deleteMenu')->name('deleteMenu');
});
//----------------------------QUẢN LÝ SLIDE-----------------------------------
Route::controller(App\Http\Controllers\Admin\QLSlideController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlslide', 'qlslide')->name('qlslide');
    Route::get('/qlslide_create', 'qlslide_create')->name('qlslideCreate');
    Route::get('/qlslide_update/{id}', 'qlslide_update')->name('qlslideUpdate'); //gọi ra giao diện

    Route::post('/createSlide', 'createSlide')->name('createSlide');
    Route::put('/updateSlide/{id}', 'updateSlide')->name('updateSlide');
    Route::delete('/deleteSlide/{id}', 'deleteSlide')->name('deleteSlide');
});
//----------------------------QUẢN LÝ GIỚI THIỆU-----------------------------------
Route::controller(App\Http\Controllers\Admin\QLGioiThieuController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlgioithieu', 'qlgioithieu')->name('qlgioithieu');
    Route::get('/qlgioithieu_create', 'qlgioithieu_create')->name('qlgioithieuCreate');
    Route::get('/qlgioithieu_update/{id}', 'qlgioithieu_update')->name('qlgioithieuUpdate'); //gọi ra giao diện

    Route::post('/createGioiThieu', 'createGioiThieu')->name('createGioiThieu');
    Route::put('/updateGioiThieu/{id}', 'updateGioiThieu')->name('updateGioiThieu');
    Route::delete('/deleteGioiThieu/{id}', 'deleteGioiThieu')->name('deleteGioiThieu');
});
//----------------------------QUẢN LÝ LIÊN HỆ--------------------------------------
Route::controller(App\Http\Controllers\Admin\QLLienHeController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qllienhe', 'qllienhe')->name('qllienhe');
    Route::get('/qllienhe_create', 'qllienhe_create')->name('qllienheCreate');
    Route::get('/qllienhe_update/{id}', 'qllienhe_update')->name('qllienheUpdate'); //gọi ra giao diện

    Route::post('/createLienHe', 'createLienHe')->name('createLienHe');
    Route::put('/updateLienHe/{id}', 'updateLienHe')->name('updateLienHe');
    Route::delete('/deleteLienHe/{id}', 'deleteLienHe')->name('deleteLienHe');
});
//-------------------------------TIN TỨC----------------------------------------------
Route::controller(App\Http\Controllers\Admin\QLTinTucController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qltintuc', 'qltintuc')->name('qltintuc');
    Route::get('/qltintuc_create', 'qltintuc_create')->name('qltintucCreate');
    Route::get('/qltintuc_update/{id}', 'qltintuc_update')->name('qltintucUpdate'); //gọi ra giao diện
    Route::get('/qltintuc_detail/{id}', 'qltintuc_detail')->name('qltintucDetail'); 

    Route::post('/createTinTuc', 'createTinTuc')->name('createTinTuc');
    Route::put('/updateTinTuc/{id}', 'updateTinTuc')->name('updateTinTuc');
    Route::delete('/deleteTinTuc/{id}', 'deleteTinTuc')->name('deleteTinTuc');
});
//-------------------------CHI TIẾT TIN TỨC----------------------------------------------
Route::controller(App\Http\Controllers\Admin\QLCTTinTucController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlcttintuc', 'qlcttintuc')->name('qlcttintuc');
    Route::get('/qlcttintuc_create', 'qlcttintuc_create')->name('qlcttintucCreate');
    Route::get('/qlcttintuc_update/{id}', 'qlcttintuc_update')->name('qlcttintucUpdate'); //gọi ra giao diện

    Route::post('/createCTTinTuc', 'createCTTinTuc')->name('createCTTinTuc');
    Route::put('/updateCTTinTuc/{id}', 'updateCTTinTuc')->name('updateCTTinTuc');
    Route::delete('/deleteCTTinTuc/{id}', 'deleteCTTinTuc')->name('deleteCTTinTuc');
});
//----------------------QUẢN LÝ DÒNG SẢN PHẨM--------------------------------------
Route::controller(App\Http\Controllers\Admin\QLDongSanPhamController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qldongsanpham', 'qldongsanpham')->name('qldongsanpham');
    Route::get('/qldongsanpham_create', 'qldongsanpham_create')->name('qldongsanphamCreate');
    Route::get('/qldongsanpham_update/{id}', 'qldongsanpham_update')->name('qldongsanphamUpdate'); //gọi ra giao diện

    Route::post('/createDongSanPham', 'createDongSanPham')->name('createDongSanPham');
    Route::put('/updateDongSanPham/{id}', 'updateDongSanPham')->name('updateDongSanPham');
    Route::delete('/deleteDongSanPham/{id}', 'deleteDongSanPham')->name('deleteDongSanPham');
//-------------------QUẢN LÝ CHI TIẾT ẢNH DÒNG SẢN PHẨM----------------------------------
    Route::get('/qlctanhdongsanpham', 'qlctanhdongsanpham')->name('qlctanhdongsanpham');
    Route::get('/qlctanhdongsanpham_create', 'qlctanhdongsanpham_create')->name('qlctanhdongsanphamCreate');
    Route::get('/qlctanhdongsanpham_update/{id}', 'qlctanhdongsanpham_update')->name('qlctanhdongsanphamUpdate'); //gọi ra giao diện

    Route::post('/createCTAnhDongSanPham', 'createCTAnhDongSanPham')->name('createCTAnhDongSanPham');
    Route::put('/updateCTAnhDongSanPham/{id}', 'updateCTAnhDongSanPham')->name('updateCTAnhDongSanPham');
    Route::delete('/deleteCTAnhDongSanPham/{id}', 'deleteCTAnhDongSanPham')->name('deleteCTAnhDongSanPham');
});

//----------------------QUẢN LÝ SẢN PHẨM--------------------------------------
Route::controller(App\Http\Controllers\Admin\QLSanPhamController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlsanpham', 'qlsanpham')->name('qlsanpham');
    Route::get('/qlsanpham_create', 'qlsanpham_create')->name('qlsanphamCreate');
    Route::get('/qlsanpham_update/{id}', 'qlsanpham_update')->name('qlsanphamUpdate'); //gọi ra giao diện
    Route::get('/thongsokythuat/{id}', 'thongsokythuat')->name('thongsokythuat'); 
    Route::get('/ctanhsanpham/{id}', 'ctanhsanpham')->name('ctanhsanpham'); 
    
    Route::post('/createSanPham', 'createSanPham')->name('createSanPham');
    Route::put('/updateSanPham/{id}', 'updateSanPham')->name('updateSanPham');
    Route::delete('/deleteSanPham/{id}', 'deleteSanPham')->name('deleteSanPham');
    Route::get('/searchSanPham', 'searchSanPham')->name('searchSanPham');
});
//----------------------QUẢN LÝ THÔNG SỐ KỸ THUẬT--------------------------------------
Route::controller(App\Http\Controllers\Admin\QLThongSoKyThuatController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlthongsokythuat', 'qlthongsokythuat')->name('qlthongsokythuat');
    Route::get('/qlthongsokythuat_create', 'qlthongsokythuat_create')->name('qlthongsokythuatCreate');
    Route::get('/qlthongsokythuat_update/{id}', 'qlthongsokythuat_update')->name('qlthongsokythuatUpdate'); //gọi ra giao diện

    Route::post('/createThongSoKyThuat', 'createThongSoKyThuat')->name('createThongSoKyThuat');
    Route::put('/updateThongSoKyThuat/{id}', 'updateThongSoKyThuat')->name('updateThongSoKyThuat');
    Route::delete('/deleteThongSoKyThuat/{id}', 'deleteThongSoKyThuat')->name('deleteThongSoKyThuat');
});
//----------------------QUẢN LÝ CHI TIẾT ẢNH SẢN PHẨM--------------------------------------
Route::controller(App\Http\Controllers\Admin\QLCTAnhSanPhamController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlctanhsanpham', 'qlctanhsanpham')->name('qlctanhsanpham');
    Route::get('/qlctanhsanpham_create', 'qlctanhsanpham_create')->name('qlctanhsanphamCreate');
    Route::get('/qlctanhsanpham_update/{id}', 'qlctanhsanpham_update')->name('qlctanhsanphamUpdate'); //gọi ra giao diện

    Route::post('/createCTAnhSanPham', 'createCTAnhSanPham')->name('createCTAnhSanPham');
    Route::put('/updateCTAnhSanPham/{id}', 'updateCTAnhSanPham')->name('updateCTAnhSanPham');
    Route::delete('/deleteCTAnhSanPham/{id}', 'deleteCTAnhSanPham')->name('deleteCTAnhSanPham');
});
//------------------------QUẢN LÝ GIẢM GIÁ-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLGiamGiaController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlgiamgia', 'qlgiamgia')->name('qlgiamgia');
    Route::get('/qlgiamgia_create', 'qlgiamgia_create')->name('qlgiamgiaCreate');
    Route::get('/qlgiamgia_update/{id}', 'qlgiamgia_update')->name('qlgiamgiaUpdate'); //gọi ra giao diện

    Route::post('/createGiamGia', 'createGiamGia')->name('createGiamGia');
    Route::put('/updateGiamGia/{id}', 'updateGiamGia')->name('updateGiamGia');
    Route::delete('/deleteGiamGia/{id}', 'deleteGiamGia')->name('deleteGiamGia');
});
//------------------------QUẢN LÝ NHÀ CUNG CẤP-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLNhaCungCapController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlnhacungcap', 'qlnhacungcap')->name('qlnhacungcap');
    Route::get('/qlnhacungcap_create', 'qlnhacungcap_create')->name('qlnhacungcapCreate');
    Route::get('/qlnhacungcap_update/{id}', 'qlnhacungcap_update')->name('qlnhacungcapUpdate'); //gọi ra giao diện

    Route::post('/createNhaCungCap', 'createNhaCungCap')->name('createNhaCungCap');
    Route::put('/updateNhaCungCap/{id}', 'updateNhaCungCap')->name('updateNhaCungCap');
    Route::delete('/deleteNhaCungCap/{id}', 'deleteNhaCungCap')->name('deleteNhaCungCap');
});
//------------------------QUẢN LÝ NHÀ CUNG CẤP-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLNhaCungCapController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlnhacungcap', 'qlnhacungcap')->name('qlnhacungcap');
    Route::get('/qlnhacungcap_create', 'qlnhacungcap_create')->name('qlnhacungcapCreate');
    Route::get('/qlnhacungcap_update/{id}', 'qlnhacungcap_update')->name('qlnhacungcapUpdate'); //gọi ra giao diện

    Route::post('/createNhaCungCap', 'createNhaCungCap')->name('createNhaCungCap');
    Route::put('/updateNhaCungCap/{id}', 'updateNhaCungCap')->name('updateNhaCungCap');
    Route::delete('/deleteNhaCungCap/{id}', 'deleteNhaCungCap')->name('deleteNhaCungCap');
});
//------------------------QUẢN LÝ NGƯỜI DÙNG-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLNguoiDungController::class)->middleware('QuanTriRole')->group(function() {
    Route::get('/qlnguoidung', 'qlnguoidung')->name('qlnguoidung');
    Route::get('/qlnguoidung_create', 'qlnguoidung_create')->name('qlnguoidungCreate');
    Route::get('/qlnguoidung_update/{id}', 'qlnguoidung_update')->name('qlnguoidungUpdate'); //gọi ra giao diện

    Route::get('/detailNguoiDung/{id}', 'detailNguoiDung')->name('detailNguoiDung');
    Route::post('/createNguoiDung', 'createNguoiDung')->name('createNguoiDung');
    Route::put('/updateNguoiDung/{id}', 'updateNguoiDung')->name('updateNguoiDung');
    Route::delete('/deleteNguoiDung/{id}', 'deleteNguoiDung')->name('deleteNguoiDung');
});
//------------------------QUẢN LÝ KHÁCH HÀNG ĐẶT MUA-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLKhachHangController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlkhachhang', 'qlkhachhang')->name('qlkhachhang');
});
//------------------------QUẢN LÝ HÓA ĐƠN NHẬP-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLHoaDonNhapController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlhoadonnhap', 'qlhoadonnhap')->name('qlhoadonnhap');
    Route::get('/qlhoadonnhap_create', 'qlhoadonnhap_create')->name('qlhoadonnhapCreate');
    Route::get('/qlhoadonnhap_update/{id}', 'qlhoadonnhap_update')->name('qlhoadonnhapUpdate'); //gọi ra giao diện
    Route::get('/qlhoadonnhap_detail/{id}', 'qlhoadonnhap_detail')->name('qlhoadonnhapDetail'); 

    Route::post('/createHoaDonNhap', 'createHoaDonNhap')->name('createHoaDonNhap');
    Route::put('/updateHoaDonNhap/{id}', 'updateHoaDonNhap')->name('updateHoaDonNhap');
    Route::delete('/deleteHoaDonNhap/{id}', 'deleteHoaDonNhap')->name('deleteHoaDonNhap');
//------------------------QUẢN LÝ CT HÓA ĐƠN NHẬP---------------------------------------
    Route::get('/qlcthoadonnhap', 'qlcthoadonnhap')->name('qlcthoadonnhap');
    Route::get('/qlcthoadonnhap_create', 'qlcthoadonnhap_create')->name('qlcthoadonnhapCreate');
    Route::get('/qlcthoadonnhap_update/{id}', 'qlcthoadonnhap_update')->name('qlcthoadonnhapUpdate'); //gọi ra giao diện

    Route::post('/createCTHoaDonNhap', 'createCTHoaDonNhap')->name('createCTHoaDonNhap');
    Route::put('/updateCTHoaDonNhap/{id}', 'updateCTHoaDonNhap')->name('updateCTHoaDonNhap');
    Route::delete('/deleteCTHoaDonNhap/{id}', 'deleteCTHoaDonNhap')->name('deleteCTHoaDonNhap');
});

//------------------------QUẢN LÝ KHO-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLKhoController::class)->middleware('NhanVienRole')->group(function() {
    Route::get('/qlkho', 'qlkho')->name('qlkho');
    Route::get('/qlkho_create', 'qlkho_create')->name('qlkhoCreate');
    Route::get('/qlkho_update/{id}', 'qlkho_update')->name('qlkhoUpdate'); //gọi ra giao diện
    Route::get('/qlkho_detail/{id}', 'qlkho_detail')->name('qlkhoDetail'); 

    Route::post('/createKho', 'createKho')->name('createKho');
    Route::put('/updateKho/{id}', 'updateKho')->name('updateKho');
    Route::delete('/deleteKho/{id}', 'deleteKho')->name('deleteKho');
//------------------------QUẢN LÝ CT KHO-----------------------------------------
    Route::get('/qlctkho', 'qlctkho')->name('qlctkho');
    Route::get('/qlctkho_create', 'qlctkho_create')->name('qlctkhoCreate');
    Route::get('/qlctkho_update/{id}', 'qlctkho_update')->name('qlctkhoUpdate'); //gọi ra giao diện

    Route::post('/createCTKho', 'createCTKho')->name('createCTKho');
    Route::put('/updateCTKho/{id}', 'updateCTKho')->name('updateCTKho');
    Route::delete('/deleteCTKho/{id}', 'deleteCTKho')->name('deleteCTKho');
});

//------------------------QUẢN LÝ ĐƠN HÀNG-----------------------------------------
Route::controller(App\Http\Controllers\Admin\QLDonHangController::class)->middleware('NhanVienRole')->group(function () {
    Route::get('/qldonhang', 'qldonhang')->name('qldonhang');

    Route::get('/qldonhang_detail/{id}', 'qldonhang_detail')->name('qldonhangDetail'); 
    Route::put('/checkDonHang/{id}', 'checkDonHang')->name('checkDonHang');
    Route::get('/searchDonHang', 'searchDonHang')->name('searchDonHang');
});


//------------------------ĐĂNG NHẬP< ĐĂNG KÝ-----------------------------------------
Route::controller(App\Http\Controllers\AuthController::class)->group(function () {
    Route::get('/dangnhap', 'dangnhap')->name('dangnhap');
    Route::get('/dangky', 'dangky')->name('dangky');
    Route::get('/dangxuat', 'dangxuat')->name('dangxuat');

    Route::post('/signup', 'signup')->name('signup');
    Route::post('/login', 'login')->name('login');
});