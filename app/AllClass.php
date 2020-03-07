<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AllClass extends Model
{
    protected $table = 'd1_classes';

    protected $guarded=[''];

    public function teacher()
    {
        return $this->belongsTo('App\Teacher');
    }
    public function section()
    {
        return $this->hasMany('App\Section');
    }
    public function enrollment()
    {
        return $this->hasMany('App\Enrollment');
    }
//    public function studentName()
//    {
//        return $this->hasMany('App\Student');
//    }
}
