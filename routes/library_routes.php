<?php

    //Teacher
    Route::get('/library/book', 'BookController@index')->name('book.index');
    Route::get('/add/library/book',  'BookController@create')->name('book.add');
    Route::post('/library/store/book', 'BookController@store')->name('book.store');
    Route::get('/library/edit/book/{id}','BookController@edit')->name('book.edit');
    Route::post('/library/update/book/{id}', 'BookController@update')->name('book.update');
    Route::get('/library/destroy/book/{id}', 'BookController@destroy')->name('book.destroy');
    //Library Memeber
    Route::get('/library/member', 'LibraryMemberController@index')->name('member.index');
    Route::get('/library/non/member', 'LibraryMemberController@nonMemberList')->name('member.nonMemberList');
//    Route::get('/add/library/member',  'LibraryMemberController@create')->name('member.add');
//    Route::post('/library/store/member', 'LibraryMemberController@store')->name('member.store');
//    Route::get('/library/edit/member/{id}','LibraryMemberController@edit')->name('member.edit');
//    Route::post('/library/update/member/{id}', 'LibraryMemberController@update')->name('member.update');
    Route::get('/library/destroy/member/{id}', 'LibraryMemberController@destroy')->name('member.destroy');
    //Book issue
    Route::get('/library/book/issue', 'BookIssueController@index')->name('issue.index');
    Route::get('/add/library/book/issue',  'BookIssueController@create')->name('issue.add');
    Route::post('/library/store/book/issue', 'BookIssueController@store')->name('issue.store');
    Route::get('/library/edit/book/issue/{id}','BookIssueController@edit')->name('issue.edit');
    Route::post('/library/update/book/issue/{id}', 'BookIssueController@update')->name('issue.update');
    Route::get('/library/destroy/book/issue/{id}', 'BookIssueController@destroy')->name('issue.destroy');

?>
