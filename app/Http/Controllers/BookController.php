<?php

namespace App\Http\Controllers;

use App\AllClass;
use App\Book;
use Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['book']=Book::all();
        return view('admin.logistics.library.book',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('admin.logistics.library.add_book');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'title'  =>['required','string','max:255'],
            'custom_id'=>['required'],
            'qty'=>['required','integer'],
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
             $id = Book::insertGetId($request->except('_token','status'));
            Book::find($id)->update([
                'created_by'=>Auth::user()->id,
            ]);

            return back()->with('status','Book Added Sucessfully!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $book,$id)
    {
        $data['book']=Book::find($id);
        return view('admin.logistics.library.edit_book',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book,$id)
    {
        $validator = Validator::make($request->all(),[
            'title'  =>['required','string','max:255'],
            'qty'=>['required','integer'],
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            Book::find($id)->update($request->except('_token','status'));
            Book::find($id)->update([
                'modified_by'=>Auth::user()->id,
            ]);
            return redirect()->back()->with('status', 'Book Updated Successfully!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book,$id)
    {
        Book::where('id',$id)->delete();

        return back()->with('status', 'Book Deleted Successfully!');
    }
}
