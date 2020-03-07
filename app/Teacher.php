<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $table = 'c1_teachers';

    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function class()
    {
        return $this->hasMany('App\AllClass');
    }

}
