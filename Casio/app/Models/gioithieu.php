<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class gioithieu extends Model
{
    protected $table = 'gioithieu';

    protected $fillable = [
        'id',
        'TieuDe',
        'Anh',
        'MoTa',
        'created_at',
        'updated_at',
    ];
}
