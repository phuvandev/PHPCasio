<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ctanhsanpham extends Model
{
    protected $table = 'ctanhsanpham';
    protected $fillable = [
        'id',
        'Anh',
        'MaSP',
        'created_at',
        'updated_at',
    ];

    public function sanpham() {
        return $this->belongsTo(sanpham::class, 'id');
    }
}
