<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Enrollment extends Model
{
    protected $table = 'f1_enrollments';
    protected $guarded=[''];
    public function student()
    {
        return $this->belongsTo('App\Student');
    }
    public function class()
    {
        return $this->belongsTo('App\AllClass');
    }
    public function section()
    {
        return $this->belongsTo('App\Section');
    }
    public function academicYear()
    {
        return $this->belongsTo('App\AcademicYear');
    }
}
