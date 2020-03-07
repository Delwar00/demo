<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    //
    protected $table = 'c1_employees';
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function designation()
    {
        return $this->belongsTo('App\Designation');
    }
}
