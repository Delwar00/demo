<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Designation extends Model
{
    protected $table = 'a1_designations';
    protected $guarded=[''];
    public function employee()
    {
        return $this->hasMany('App\Employee');
    }
}
