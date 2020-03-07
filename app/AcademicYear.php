<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AcademicYear extends Model
{
    protected $table = 'a1_academic_years';

    public function enrollment()
    {
        return $this->hasOne('App\Enrollment');
    }
}
