<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    protected $table = 'sanpham';
    protected $fillable = [
        'id',
        'TenSP',
        'AnhDaiDien',
        'GiaBan',
        'MoTa',
        'MaDSP',
        'created_at',
        'updated_at',
    ];

    //phương thức trong eloquent orm
    public function ctanhsanpham() {
        return $this->hasMany(ctanhsanpham::class, 'MaSP');
    }

    public function thongsokythuat() {
        return $this->hasMany(thongsokythuat::class, 'MaSP');
    }
}
