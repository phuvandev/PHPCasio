<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class nhacungcap extends Model
{
    protected $table = 'nhacungcap';
    protected $fillable = [
        'id',
        'TenNCC',
        'DiaChi',
        'SDT',
        'created_at',
        'updated_at',
    ];
}
