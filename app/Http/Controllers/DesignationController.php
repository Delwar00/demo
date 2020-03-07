<?php

namespace App\Http\Controllers;

use App\Designation;
use App\Role;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class DesignationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $designation=Designation::all();
        return view('admin.hrm.manage_designation.designation',compact('designation'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.hrm.manage_designation.add_designation');
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
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            $id = Designation::insertGetId($request->except('_token','status'));
            Designation::find($id)->update([
                'created_by'=>Auth::user()->id,
            ]);

            return back()->with('status','Designation Added Sucessfully!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Designation  $designation
     * @return \Illuminate\Http\Response
     */
    public function show(Designation $designation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Designation  $designation
     * @return \Illuminate\Http\Response
     */
    public function edit(Designation $designation,$id)
    {
        $edit_designation = Designation::find($id);

        return view('admin.hrm.manage_designation.edit_designation', compact('edit_designation'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Designation  $designation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Designation $designation,$id)
    {
        $validator = Validator::make($request->all(),[
            'name'  =>['required','string','max:255','min:3'],
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            Designation::find($id)->update($request->except('_token','status'));
            Designation::find($id)->update([
                'modified_by'=>Auth::user()->id,
            ]);
            return redirect()->back()->with('status', 'Designation Updated Successfully!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Designation  $designation
     * @return \Illuminate\Http\Response
     */
    public function destroy(Designation $designation,$id)
    {
        Designation::where('id','=',$id)->delete();
        return back()->with('status','Designation Deleted Sucessfully!');
    }
}
