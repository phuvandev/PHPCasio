<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cttintuc extends Model
{
    protected $table = 'cttintuc';
    protected $fillable = [
        'id',
        'Anh',
        'NoiDung',
        'MaTT',
        'created_at',
        'updated_at',
    ];
    
    public function tintuc() {
        return $this->belongsTo(tintuc::class, 'id');
    }
}
