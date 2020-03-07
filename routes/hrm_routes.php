<?php

    //manage Designation
    Route::get('/manage/designation', 'DesignationController@index')->name('designation.index');
    Route::get('/add/manage/designation',  'DesignationController@create')->name('designation.add');
    Route::post('/store/manage/designation', 'DesignationController@store')->name('designation.store');
    Route::get('/edit/manage/designation/{id}','DesignationController@edit')->name('designation.edit');
    Route::post('/update/manage/designation/{id}', 'DesignationController@update')->name('designation.update');
    Route::get('/destroy/manage/designation/{id}', 'DesignationController@destroy')->name('designation.destroy');

    //Manage Employee
    Route::get('/manage/employee', 'EmployeeController@index')->name('employee.index');
    Route::get('/add/manage/employee',  'EmployeeController@create')->name('employee.add');
    Route::post('/store/manage/employee', 'EmployeeController@store')->name('employee.store');
    Route::get('/edit/manage/employee/{id}','EmployeeController@edit')->name('employee.edit');
    Route::post('/update/manage/employee/{id}', 'EmployeeController@update')->name('employee.update');
    Route::get('/destroy/manage/employee/{id}', 'EmployeeController@destroy')->name('employee.destroy');

    //Manage Salary Grade
    Route::get('/salary/grade', 'SalaryGradeController@index')->name('salaryGrade.index');
    Route::get('/add/salary/grade',  'SalaryGradeController@create')->name('salaryGrade.add');
    Route::post('/store/salary/grade', 'SalaryGradeController@store')->name('salaryGrade.store');
    Route::get('/edit/salary/grade/view{id}','SalaryGradeController@show')->name('salaryGrade.show');
    Route::get('/edit/salary/grade/{id}','SalaryGradeController@edit')->name('salaryGrade.edit');
    Route::post('/update/salary/grade/{id}', 'SalaryGradeController@update')->name('salaryGrade.update');
    Route::get('/destroy/salary/grade/{id}', 'SalaryGradeController@destroy')->name('salaryGrade.destroy');

?>
