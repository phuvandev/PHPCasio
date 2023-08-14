<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class donhang extends Model
{
    protected $table = 'donhang';
    protected $fillable = [
        'id',
        'MaKH',
        'TrangThai',
        'NguoiDuyet',
        'created_at',
        'updated_at',
    ];
}
