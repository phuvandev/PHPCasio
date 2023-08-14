<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tintuc extends Model
{
    protected $table = 'tintuc';
    protected $fillable = [
        'id',
        'AnhDaiDien',
        'TieuDe',
        'MoTa',
        'MaND',
        'created_at',
        'updated_at',
    ];


    public function cttintuc() {
        return $this->hasMany(cttintuc::class, 'MaTT');
    }
}
