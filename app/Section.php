<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $table = 'e1_sections';
    protected $guarded=[''];
    public function class()
    {
        return $this->belongsTo('App\AllClass');
    }
    public function enrollment()
    {
        return $this->hasMany('App\Enrollment');
    }
}
