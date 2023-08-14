<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class khachhang extends Model
{
    protected $table = 'khachhang';

    protected $fillable = [
        'id',
        'TenKH',
        'DiaChi',
        'SDT',
        'Email',
        'created_at',
        'updated_at',
    ];
}
