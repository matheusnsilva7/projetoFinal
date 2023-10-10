<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use HasFactory;

    protected $fillable = [
        'pageid',
        'idrol',
        'description',
        'user_creation',
        'user_modification',
    ];
    public function role()
    {
        return $this->belongsTo(Role::class, 'idrol');
    }
    public function page()
    {
        return $this->belongsTo(Page::class, 'pageid');
    }
}
