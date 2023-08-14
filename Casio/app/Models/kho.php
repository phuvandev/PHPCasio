<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class kho extends Model
{
    protected $table = 'kho';
    //khai báo biến chứa các thuộc tính của bảng
    protected $fillable = [
        'id',
        'TenKho',
        'DiaChi',
        'created_at',
        'updated_at',
    ];
}
