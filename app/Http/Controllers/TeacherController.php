<?php

namespace App\Http\Controllers;

use App\Designation;
use App\Employee;
use App\Role;
use App\SalaryGrade;
use App\Teacher;
use App\User;
use Auth;
use Exception;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teacher=Teacher::all();
        return view('admin.academics.teacher.teacher',compact('teacher'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['grade']=SalaryGrade::all();
        $data['role']=Role::where('id',5)->get();
        return view('admin.academics.teacher.add_teacher',$data);
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
            'responsibility'    =>['required'],
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
            Teacher::insert([
                "name" => $request->name,
                'national_id' => $request->national_id,
                'responsibility' => $request->responsibility,
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



            return back()->with('status', 'Teacher Added Sucessfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function show(Teacher $teacher,$id)
    {
        $data['teacher'] = Teacher::find($id);
//        $data['designation'] = Designation::all();
//        $data['grade']=SalaryGrade::all();
//        $data['role']=Role::where('id',5)->get();
//        $data['user_info'] = Teacher::find($id)->user;
        return view('admin.academics.teacher.view_teacher',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function edit(Teacher $teacher,$id)
    {
        $data['designation'] = Designation::all();
        $data['grade']=SalaryGrade::all();
        $data['role']=Role::where('id',5)->get();
        $data['edit_teacher'] = Teacher::find($id);
        $data['user_info'] = Teacher::find($id)->user;
        return view('admin.academics.teacher.edit_teacher',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Teacher $teacher,$id)
    {
        $user_id = Teacher::find($id)->user->id;
        $validator = Validator::make($request->all(), [
            'name'              =>['required','string','max:255','min:3'],
            'national_id'       =>['required','integer'],
//            ,'unique:c1_employees'
            'responsibility'    =>['required'],
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
            Teacher::where('id',$id)->update([
                "name" => $request->name,
                'national_id' => $request->national_id,
                'responsibility' => $request->responsibility,
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

            return back()->with('status', 'Teacher Updated Sucessfully.');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function destroy(Teacher $teacher,$id)
    {
        //return $id;
        try {
            Teacher::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Teacher has Child/Childs. You must DELETE the Child/Childs first!')
                ->wit('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Teacher Deleted Successfully!');
    }
}
