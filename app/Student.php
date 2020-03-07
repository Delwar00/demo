<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'd1_students';

    public function enrollment()
    {
        return $this->hasOne('App\Enrollment');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function guardian()
    {
        return $this->belongsTo('App\Guardian');
    }
//    public function className()
//    {
//        return $this->belongsTo('App\AllClass');
//    }
}
