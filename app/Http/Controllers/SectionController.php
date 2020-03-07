<?php

namespace App\Http\Controllers;

use App\AllClass;
use App\Section;
use App\Teacher;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SectionController extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['class']=AllClass::all();
        $data['teacher']=Teacher::all();
        return view('admin.academics.section.add_section',$data);
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
            'name'  =>['required','string','max:255'],
            'teacher_id'=>['required','integer'],
            'class_id'=>['required','integer'],
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            $id=Section::insertGetId($request->except('_token','status'));
            Section::find($id)->update([
                'created_by'=>Auth::user()->id,
            ]);

            return back()->with('status','Section Added Sucessfully!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function show(Section $section)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function edit(Section $section,$id)
    {
        $data['section']=Section::find($id);
        $data['class']=AllClass::all();
        $data['teacher']=Teacher::all();
        return view('admin.academics.section.edit_section',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Section $section,$id)
    {
        $validator = Validator::make($request->all(),[
            'name'  =>['required','string','max:255'],
            'teacher_id'=>['required','integer'],
            'class_id'=>['required','integer'],
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            Section::find($id)->update($request->except('_token','status'));
            Section::find($id)->update([
                'modified_by'=>Auth::user()->id,
            ]);
            return redirect()->back()->with('status', 'Class Updated Successfully!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function destroy(Section $section,$id)
    {
        try {
            Section::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Section has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Section Deleted Successfully!');
    }
}
