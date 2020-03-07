<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guardian extends Model
{
    protected $table = 'c1_guardians';

    public function student()
    {
        return $this->hasMany('App\Student');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
