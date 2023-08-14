<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class thongsokythuat extends Model
{
    protected $table = 'thongsokythuat';
    protected $fillable = [
        'id',
        'TenTS',
        'MoTa',
        'MaSP',
        'created_at',
        'updated_at',
    ];

    public function sanpham() {
        return $this->belongsTo(sanpham::class, 'id');
    }
}
