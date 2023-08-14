<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class slide extends Model
{
    //lớp admin_slide sẽ truy vấn đến bảng có tên là slide trong CSDL
    protected $table = 'slide';

    protected $fillable = [
        'id',
        'Anh',
        'Link',
        'created_at',
        'updated_at',
    ];
}
