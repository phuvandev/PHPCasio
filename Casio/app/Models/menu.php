<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class menu extends Model
{
    protected $table = 'menu';

    protected $fillable = [
        'id',
        'TenMenu',
        'STT',
        'Link',
        'created_at',
        'updated_at',
    ];
}
