<?php

    //Teacher
    Route::get('/teacher', 'TeacherController@index')->name('teacher.index');
    Route::get('/add/teacher',  'TeacherController@create')->name('teacher.add');
    Route::post('/store/teacher', 'TeacherController@store')->name('teacher.store');
    Route::get('/show/teacher/{id}', 'TeacherController@show')->name('teacher.show');
    Route::get('/edit/teacher/{id}','TeacherController@edit')->name('teacher.edit');
    Route::post('/update/teacher/{id}', 'TeacherController@update')->name('teacher.update');
    Route::get('/destroy/teacher/{id}', 'TeacherController@destroy')->name('teacher.destroy');

    //Class
    Route::get('/class', 'AllClassController@index')->name('class.index');
    Route::get('/add/class',  'AllClassController@create')->name('class.add');
    Route::post('/store/class', 'AllClassController@store')->name('class.store');
    Route::get('/show/class/{id}', 'AllClassController@show')->name('class.show');
    Route::get('/edit/class/{id}','AllClassController@edit')->name('class.edit');
    Route::post('/update/class/{id}', 'AllClassController@update')->name('class.update');
    Route::get('/destroy/class/{id}', 'AllClassController@destroy')->name('class.destroy');

    //Section
    Route::get('/section', 'SectionController@index')->name('section.index');
    Route::get('/add/section',  'SectionController@create')->name('section.add');
    Route::post('/store/section', 'SectionController@store')->name('section.store');
    Route::get('/edit/section/{id}','SectionController@edit')->name('section.edit');
    Route::post('/update/section/{id}', 'SectionController@update')->name('section.update');
    Route::get('/destroy/section/{id}', 'SectionController@destroy')->name('section.destroy');

    //Student
    Route::get('/student', 'StudentController@index')->name('student.index');
    Route::get('/add/student',  'StudentController@create')->name('student.add');
    Route::post('/store/student', 'StudentController@store')->name('student.store');
    Route::get('/show/student/{id}', 'StudentController@show')->name('student.show');
    Route::get('/edit/student/{id}','StudentController@edit')->name('student.edit');
    Route::post('/update/student/{id}', 'StudentController@update')->name('student.update');
    Route::get('/destroy/student/{id}', 'StudentController@destroy')->name('student.destroy');

    //Guardian
    Route::get('/guardian', 'GuardianController@index')->name('guardian.index');
    Route::get('/add/guardian',  'GuardianController@create')->name('guardian.add');
    Route::post('/store/guardian', 'GuardianController@store')->name('guardian.store');
    Route::get('/show/guardian/{id}', 'GuardianController@show')->name('guardian.show');
    Route::get('/edit/guardian/{id}','GuardianController@edit')->name('guardian.edit');
    Route::post('/update/guardian/{id}', 'GuardianController@update')->name('guardian.update');
    Route::get('/destroy/guardian/{id}', 'GuardianController@destroy')->name('guardian.destroy');

    //Advanced Student Admission
    Route::get('/student/advanced', 'AdvancedAdmissionController@index')->name('advanced.index');
    Route::get('/add/student/advanced',  'AdvancedAdmissionController@create')->name('advanced.add');
    Route::post('/store/student/advanced', 'AdvancedAdmissionController@store')->name('advanced.store');
    Route::get('/show/student/advanced/{id}', 'AdvancedAdmissionController@show')->name('advanced.show');
    Route::get('/edit/student/advanced/{id}','AdvancedAdmissionController@edit')->name('advanced.edit');
    Route::post('/update/student/advanced/{id}', 'AdvancedAdmissionController@update')->name('advanced.update');
    Route::get('/destroy/student/advanced/{id}', 'AdvancedAdmissionController@destroy')->name('advanced.destroy');
?>
