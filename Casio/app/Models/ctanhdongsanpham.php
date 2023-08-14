<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ctanhdongsanpham extends Model
{
    protected $table = 'ctanhdongsanpham';
    protected $fillable = [
        'id',
        'Anh',
        'MaDSP',
        'created_at',
        'updated_at',
    ];
}
