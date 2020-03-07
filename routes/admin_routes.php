<?php
    //user role
    Route::get('/role', 'RoleController@index')->name('role.index');
    Route::get('/add/role',  'RoleController@create')->name('role.add');
    Route::post('/store/role', 'RoleController@store')->name('role.store');
    Route::get('/edit/role/{id}','RoleController@edit')->name('role.edit');
    Route::post('/update/role/{id}', 'RoleController@update')->name('role.update');
    Route::get('/destroy/role/{id}', 'RoleController@destroy')->name('role.destroy');

    //Aceademic year
    Route::get('/academic/year', 'AcademicYearController@index')->name('year.index');
    Route::get('/add/academic/year',  'AcademicYearController@create')->name('year.add');
    Route::post('/store/academic/year', 'AcademicYearController@store')->name('year.store');
    Route::get('/active/academic/year/{id}','AcademicYearController@AcademicYearActivity')->name('AcademicYearActive');
    Route::get('/edit/academic/year/{id}','AcademicYearController@edit')->name('year.edit');
    Route::post('/update/academic/year/{id}', 'AcademicYearController@update')->name('year.update');
    Route::get('/destroy/academic/year/{id}', 'AcademicYearController@destroy')->name('year.destroy');

    //Reset User password
    Route::get('/reset/password', 'ResetPasswordController@index')->name('reset.index');
    Route::get('/add/reset/password',  'ResetPasswordController@create')->name('reset.add');
    Route::post('/store/reset/password', 'ResetPasswordController@store')->name('reset.store');
    Route::get('/edit/reset/password/{id}','ResetPasswordController@edit')->name('reset.edit');
    Route::post('/update/reset/password/{id}', 'ResetPasswordController@update')->name('reset.update');
    Route::get('/destroy/reset/password/{id}', 'ResetPasswordController@destroy')->name('reset.destroy');
    Route::post('/user/list', 'ResetPasswordController@userList')->name('user.list');

    //Activity log
    Route::get('/activity/log', 'ActivityLogController@index')->name('activity.index');
    Route::get('/add/activity/log',  'ActivityLogController@create')->name('activity.add');
    Route::post('/store/activity/log', 'ActivityLogController@store')->name('activity.store');
    Route::get('/edit/activity/log/{id}','ActivityLogController@edit')->name('activity.edit');
    Route::post('/update/activity/log/{id}', 'ActivityLogController@update')->name('activity.update');
    Route::get('/destroy/activity/log/{id}', 'ActivityLogController@destroy')->name('activity.destroy');

?>
