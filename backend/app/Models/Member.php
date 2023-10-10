<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $fillable = [
        'personid',
        'iduser', // Add this line
        'user',
        'clue',
        'enabled',
        'date',
        'idrol',
        'creation_date',
        'modification_date',
        'usercreation',
        'usermodification',
    ];

    public function person()
    {
        return $this->belongsTo(Person::class, 'personid');
    }

    public function role()
    {
        return $this->belongsTo(Role::class, 'idrol');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'iduser');
    }
}
