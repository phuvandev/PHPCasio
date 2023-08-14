<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class giamgia extends Model
{
    protected $table = 'giamgia';
    //khai báo biến chứa các thuộc tính của bảng
    protected $fillable = [
        'id',
        'PhanTram',
        'ThoiGianBD',
        'ThoiGianKT',
        'MaSP',
        'created_at',
        'updated_at',
    ];
}
