<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cthoadonnhap extends Model
{
    protected $table = 'cthoadonnhap';
    protected $fillable = [
        'id',
        'SoLuong',
        'DonGiaNhap',
        'MaHDN',
        'MaSP',
        'created_at',
        'updated_at',
    ];
}
