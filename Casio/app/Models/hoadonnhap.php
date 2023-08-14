<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class hoadonnhap extends Model
{
    protected $table = 'hoadonnhap';
    //khai báo biến chứa các thuộc tính của bảng
    protected $fillable = [
        'id',
        'TenHDN',
        'MaND',
        'MaNCC',
        'created_at',
        'updated_at',
    ];
}
