<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ctkho extends Model
{
    protected $table = 'ctkho';
    protected $fillable = [
        'id',
        'SoLuong',
        'MaKho',
        'MaSP',
        'created_at',
        'updated_at',
    ];
}
