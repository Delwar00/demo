<?php

namespace App\Http\Controllers;

use App\AllClass;
use App\Designation;
use App\Section;
use App\Teacher;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AllClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
//
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $class=AllClass::all();
        return view('admin.academics.class.class',compact('class'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['teacher']=Teacher::all();
        return view('admin.academics.class.add_class',$data);
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
            'name'  =>['required','string','max:255','min:3'],
            'teacher_id'=>['required','integer'],
            'numeric_name'=>['required'],
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            $id = AllClass::insertGetId($request->except('_token','status'));
            AllClass::find($id)->update([
                'created_by'=>Auth::user()->id,
            ]);

            return back()->with('status','Class Added Sucessfully!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AllClass  $allClass
     * @return \Illuminate\Http\Response
     */
    public function show(AllClass $allClass,$id)
    {
//        $data['class']=AllClass::find($id);
        $data['class_info']=AllClass::join('e1_sections','d1_classes.id','e1_sections.class_id')
            ->join('c1_teachers','e1_sections.teacher_id','c1_teachers.id')
            ->select('e1_sections.name as sName','e1_sections.id as sId','d1_classes.name as cName','e1_sections.note as cNote','c1_teachers.name as tName')
            ->where('e1_sections.class_id',$id)
            ->get();
//        return $data['class_info']=AllClass::find($id)->section;
        return view('admin.academics.section.view',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AllClass  $allClass
     * @return \Illuminate\Http\Response
     */
    public function edit(AllClass $allClass,$id)
    {
        $data['class_info']=AllClass::find($id);
        $data['teacher']=Teacher::all();
        return view('admin.academics.class.edit_class',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AllClass  $allClass
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AllClass $allClass,$id)
    {
        $validator = Validator::make($request->all(),[
            'name'  =>['required','string','max:255','min:3'],
            'teacher_id'=>['required','integer'],
            'numeric_name'=>['required'],
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            AllClass::find($id)->update($request->except('_token','status'));
            AllClass::find($id)->update([
                'modified_by'=>Auth::user()->id,
            ]);
            return redirect()->back()->with('status', 'Class Updated Successfully!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AllClass  $allClass
     * @return \Illuminate\Http\Response
     */
    public function destroy(AllClass $allClass,$id)
    {
        try {
            AllClass::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Class has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Class Deleted Successfully!');
    }
}
