<?php

namespace App\Http\Controllers;

use App\Designation;
use App\Employee;
use App\Grade;
use App\Role;
use App\SalaryGrade;
use App\User;
use Auth;
use Exception;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SalaryGradeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $salary_grade=SalaryGrade::all();
        return view('admin.hrm.salary_grade.salary_grade',compact('salary_grade'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.hrm.salary_grade.add_salary_grade');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'grade_name'        =>['required','string','max:255','min:3','unique:a1_salary_grades'],
            'basic_salary'      =>['required'],
            'hourly_rate'       =>['required'],
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            SalaryGrade::insert([
                "grade_name" => $request->grade_name,
                'basic_salary' => $request->basic_salary,
                'house_rent' => $request->house_rent,
                'transport' => $request->transport,
                'medical' => $request->medical,
                'over_time_hourly_rate' => $request->over_time_hourly_rate,
                'provident_fund' => $request->provident_fund,
                'hourly_rate' => $request->hourly_rate,
                'total_allowance' => $request->total_allowance,
                'total_deduction' => $request->total_deduction,
                'gross_salary' => $request->gross_salary,
                'net_salary' => $request->net_salary,
                'note' => $request->note,
                'user_agent'=>1,
                'activity'=>'demo',
                'status' => 1,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'created_at' => Carbon:: now(),
            ]);
            return back()->with('status', 'Salary Grade Added Sucessfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SalaryGrade  $salaryGrade
     * @return \Illuminate\Http\Response
     */
    public function show(SalaryGrade $salaryGrade,$id)
    {
        $salary_grade_view = SalaryGrade::find($id);
        return view('admin.hrm.salary_grade.view_salary_grade',compact('salary_grade_view'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SalaryGrade  $salaryGrade
     * @return \Illuminate\Http\Response
     */
    public function edit(SalaryGrade $salaryGrade,$id)
    {
        $edit_salary_grade = SalaryGrade::find($id);
        return view('admin.hrm.salary_grade.edit_salary_grade', compact('edit_salary_grade'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SalaryGrade  $salaryGrade
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SalaryGrade $salaryGrade,$id)
    {
        $validator = Validator::make($request->all(), [
            'grade_name'              =>['required','string','max:255','min:3'],
            'basic_salary'      =>['required'],
            'hourly_rate'       =>['required'],
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            SalaryGrade::where('id',$id)->update([
                "grade_name" => $request->grade_name,
                'basic_salary' => $request->basic_salary,
                'house_rent' => $request->house_rent,
                'transport' => $request->transport,
                'medical' => $request->medical,
                'over_time_hourly_rate' => $request->over_time_hourly_rate,
                'provident_fund' => $request->provident_fund,
                'hourly_rate' => $request->hourly_rate,
                'total_allowance' => $request->total_allowance,
                'total_deduction' => $request->total_deduction,
                'gross_salary' => $request->gross_salary,
                'net_salary' => $request->net_salary,
                'note' => $request->note,
                'user_agent'=>1,
                'activity'=>'demo',
                'status' => 1,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'updated_at' => Carbon:: now(),
            ]);
            return back()->with('status', 'Salary Grade Updated Sucessfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SalaryGrade  $salaryGrade
     * @return \Illuminate\Http\Response
     */
    public function destroy(SalaryGrade $salaryGrade,$id)
    {
        try {
            SalaryGrade::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Salary Grade has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Salary Grade Deleted Successfully!');
    }
}
