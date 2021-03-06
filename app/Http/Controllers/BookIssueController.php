<?php

namespace App\Http\Controllers;

use App\Book;
use App\BookIssue;
use App\LibraryMember;
use Illuminate\Http\Request;

class BookIssueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['issue']=BookIssue::all();
        return view('admin.logistics.book_issue.issue',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['book']=Book::all();
        $data['library_member']=LibraryMember::all();
        return view('admin.logistics.book_issue.add_issue',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\BookIssue  $bookIssue
     * @return \Illuminate\Http\Response
     */
    public function show(BookIssue $bookIssue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\BookIssue  $bookIssue
     * @return \Illuminate\Http\Response
     */
    public function edit(BookIssue $bookIssue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\BookIssue  $bookIssue
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BookIssue $bookIssue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\BookIssue  $bookIssue
     * @return \Illuminate\Http\Response
     */
    public function destroy(BookIssue $bookIssue)
    {
        //
    }
}
