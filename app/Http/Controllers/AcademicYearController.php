<?php

namespace App\Http\Controllers;

use App\AcademicYear;
use Carbon\Carbon;
use Auth;
use Exception;
use Illuminate\Http\Request;

class AcademicYearController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $year=AcademicYear::all();
        return view('admin.academic_year.year',compact('year'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.academic_year.add_year');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'session_year'  => ['required'],
        ]);

        $year_month= explode(' ',$request->session_year);
        $start_year= $year_month[1];
        $end_year= $year_month[4];

        AcademicYear::insert([
            "session_year"  => $request->session_year,
            'start_year'    => $start_year,
            'end_year'      => $end_year,
            "note"          => $request->note,
            'created_by'    => Auth::user()->id,
            'modified_by'   => Auth::user()->id,
            'created_at'    => Carbon:: now(),
        ]);

        return redirect()->back()->with('status','Academic Year Added Sucessfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AcademicYear  $aceademicYear
     * @return \Illuminate\Http\Response
     */
    public function show(AcademicYear $aceademicYear)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AcademicYear  $aceademicYear
     * @return \Illuminate\Http\Response
     */
    public function edit($id, AcademicYear $aceademicYear)
    {
        $edit_year = AcademicYear::find($id);

        return view('admin.academic_year.edit_year', compact('edit_year'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AcademicYear  $aceademicYear
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
//        $year_month= explode(' ',$request->session_year);
//        $start_year= $year_month[1];
//        $end_year= $year_month[4];
        $this->validate($request, [
            'session_year'  => ['required'],
        ]);
        AcademicYear::where('id', $id)->update([
            "session_year"    => $request->session_year,
//            'start_year'=>$start_year,
//            'end_year'=>$end_year,
            "note"    => $request->note,
            'is_running'=>1,
            'status'=>1,
            'created_by'=>Auth::user()->id,
            'modified_by'=>Auth::user()->id,
            'updated_at'=>Carbon:: now(),
        ]);
        return redirect()->back()->with('status', 'Year Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AcademicYear  $aceademicYear
     * @return \Illuminate\Http\Response
     */
    public function destroy(AcademicYear $aceademicYear, $id)
    {
        try {
            AcademicYear::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('The Academic Year has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Academic Year Deleted Successfully!');
        }
        public function AcademicYearActivity($id)
        {
            AcademicYear::where('is_running',1)->update([
                'is_running'=>0,
            ]);
            AcademicYear::where('id',$id)->update([
                'is_running'=>1,
            ]);
            return back();
        }
}
