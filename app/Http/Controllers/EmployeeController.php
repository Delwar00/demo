<?php

namespace App\Http\Controllers;

use App\AcademicYear;
use App\Designation;
use App\Employee;
use App\Grade;
use App\Role;
use App\SalaryGrade;
use App\User;
use Carbon\Carbon;
use Auth;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employee = Employee::all();
//        $employee = Employee::all()->first();
//        $employee_designation = $employee->designation;
//        $employee_user = $employee->user;
//         $employee=Employee::join('a1_designations','c1_employees.designation_id','a1_designations.id')
//             ->join('b1_users','c1_employees.user_id','b1_users.id')
//             ->select('a1_designations.name as designationName','b1_users.email as userEmail','c1_employees.*')
//             ->get();

        return view('admin.hrm.manage_employee.employee',compact('employee'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $designation=Designation::all();
        $grade=SalaryGrade::all();
        $role=Role::get();

        return view('admin.hrm.manage_employee.add_employee',compact('designation','grade','role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $unique_id=uniqid();
        $validator = Validator::make($request->all(), [
            'name'              =>['required','string','max:255','min:3'],
            'national_id'       =>['required','integer'],
//            ,'unique:c1_employees'
            'designation_id'    =>['required','integer'],
            'phone'             =>['required'],
            'gender'            =>['required'],
            'dob'               =>['required'],
            'email'             =>['required'],
            'password'          =>['required'],
            'salary_grade_id'   =>['required','integer'],
            'salary_type'       =>['required'],
            'role_id'           =>['required','integer'],
            'joining_date'      =>['required'],
        ]);

//        return $request->all();

        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            $user_id= User::insertGetId([
                'finger_print'=>1,
                'unique_id'=>$unique_id,
                'role_id'=>$request->role_id,
                'reset_key'=>1,
                'status'=>1,
                'last_logged_in'=>1,
//                'email'=>'avdvcxdf@gmail.com',
                'created_by'=>Auth::user()->id,
                'modified_by'=>Auth::user()->id,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'created_at' => Carbon:: now(),
            ]);
             Employee::insert([
                "name" => $request->name,
                'national_id' => $request->national_id,
                'designation_id' => $request->designation_id,
                'phone' => $request->phone,
                'gender' => $request->gender,
                'blood_group' => $request->blood_group,
                'religion' => $request->religion,
                'dob' => $request->dob,
                'present_address' => $request->present_address,
                'permanent_address' => $request->permanent_address,
                'salary_grade_id' => $request->salary_grade_id,
                'salary_type' => $request->salary_type,
                'user_id' => $user_id,
                'joining_date' => $request->joining_date,
//                'resume'=>$request->resume,
                'is_view_on_web' => $request->is_view_on_web,
                'facebook_url' => $request->facebook_url,
                'linkedin_url' => $request->linkedin_url,
                'twitter_url' => $request->twitter_url,
                'google_plus_url' => $request->google_plus_url,
                'instagram_url' => $request->instagram_url,
                'pinterest_url' => $request->pinterest_url,
                'youtube_url' => $request->youtube_url,
                'other_info' => $request->other_info,
//                'photo'=>$request->photo,
                'status' => 1,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'created_at' => Carbon:: now(),
            ]);



            return back()->with('status', 'Employee Added Sucessfully.');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee,$id)
    {
        $edit_employee = Employee::find($id);
        $designation = Designation::all();
        $grade=SalaryGrade::all();
        $role=Role::all();
        return view('admin.hrm.manage_employee.edit_employee', compact('edit_employee','designation','grade','role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee,$id)
    {
        $user_id = Employee::find($id)->user->id;
        $validator = Validator::make($request->all(), [
            'name'              =>['required','string','max:255','min:3'],
            'national_id'       =>['required','integer'],
            'designation_id'    =>['required','integer'],
            'phone'             =>['required'],
            'gender'            =>['required'],
            'dob'               =>['required'],
            'email'             =>['required'],
            'password'          =>['required'],
            'salary_grade_id'   =>['required','integer'],
            'salary_type'       =>['required'],
            'role_id'           =>['required','integer'],
            'joining_date'      =>['required'],
        ]);

//        return $request->name();

        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            Employee::where('id',$id)->update([
                "name" => $request->name,
                'national_id' => $request->national_id,
                'designation_id' => $request->designation_id,
                'phone' => $request->phone,
                'gender' => $request->gender,
                'blood_group' => $request->blood_group,
                'religion' => $request->religion,
                'dob' => $request->dob,
                'present_address' => $request->present_address,
                'permanent_address' => $request->permanent_address,
                'salary_grade_id' => $request->salary_grade_id,
                'salary_type' => $request->salary_type,
                'joining_date' => $request->joining_date,
//                'resume'=>$request->resume,
                'is_view_on_web' => $request->is_view_on_web,
                'facebook_url' => $request->facebook_url,
                'linkedin_url' => $request->linkedin_url,
                'twitter_url' => $request->twitter_url,
                'google_plus_url' => $request->google_plus_url,
                'instagram_url' => $request->instagram_url,
                'pinterest_url' => $request->pinterest_url,
                'youtube_url' => $request->youtube_url,
                'other_info' => $request->other_info,
//                'photo'=>$request->photo,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'updated_at' => Carbon:: now(),
            ]);

            User::find($user_id)->update([
                'role_id'=>$request->role_id,
                'created_by'=>Auth::user()->id,
                'modified_by'=>Auth::user()->id,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'updated_at' => Carbon:: now(),
            ]);

            return back()->with('status', 'Employee Updated Sucessfully.');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee,$id)
    {
        try {
            Employee::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Employee has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Employee Deleted Successfully!');
    }
}
