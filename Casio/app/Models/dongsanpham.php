<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dongsanpham extends Model
{
    protected $table = 'dongsanpham';
    protected $fillable = [
        'id',
        'TenDSP',
        'AnhDaiDien',
        'MoTa',
        'MaMenu',
        'created_at',
        'updated_at',
    ];
}
