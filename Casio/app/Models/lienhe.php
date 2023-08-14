<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class lienhe extends Model
{
    protected $table = 'lienhe';

    protected $fillable = [
        'id',
        'TieuDe',
        'TieuMuc',
        'Anh',
        'MoTa',
        'created_at',
        'updated_at',
    ];
}
