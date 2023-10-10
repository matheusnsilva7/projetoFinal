<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
    use HasFactory;

    protected $table = 'logs';

    protected $fillable = [
        'binnacle',
        'iduser',
        'date',
        'hour',
        'ip',
        'SW',
        'browser',
        'user',
    ];
    public function user()
    {
        return $this->belongsTo(Person::class, 'iduser');
    }
}
