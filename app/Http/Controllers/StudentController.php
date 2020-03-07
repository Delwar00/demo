<?php

namespace App\Http\Controllers;

use App\AllClass;
use App\Discount;
use App\Enrollment;
use App\Guardian;
use App\Role;
use App\Section;
use App\Student;
use App\Teacher;
use Auth;
use Exception;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['enrollment']=Enrollment::all();
        $data['student']=Student::all();
       // return $data['user_info'] =User::all();
//        $data['student']=Enrollment::join('d1_students','f1_enrollments.student_id','d1_students.id')
//            ->get();
        return view('admin.academics.student.student',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['guardian']=Guardian::all();
        $data['student']=Student::all();
        $data['class']=AllClass::all();
        $data['section']=Section::all();
        $data['discount']=Discount::all();
        $data['role']=Role::where('id',4)->get();
        return view('admin.academics.student.add_student',$data);
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
            'admission_no'      =>['required'],
            'admission_date'    =>['required'],
            'dob'               =>['required'],
            'gender'            =>['required'],
            'guardian_id'       =>['required'],
            'phone'             =>['required'],
            'class_id'          =>['required'],
            'section_id'        =>['required','integer'],
            'roll_no'           =>['required'],
            'role_id'           =>['required','integer'],
            'email'      =>['required'],
            'password'      =>['required'],
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
                'created_by'=>Auth::user()->id,
                'modified_by'=>Auth::user()->id,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'created_at' => Carbon:: now(),
            ]);
            $student_id=Student::insertGetId([
                'name'=>$request->name,
                'user_id'=>$user_id,
                'admission_no'=>$request->admission_no,
                'admission_date'=>$request->admission_date,
                'dob'=>$request->dob,
                'gender'=>$request->gender,
                'blood_group'=>$request->blood_group,
                'religion'=>$request->religion,
                'guardian_id'=>$request->guardian_id,
                'relation_with'=>$request->relation_with,
                'phone'=>$request->phone,
                'national_id'=>$request->national_id,
                'present_address'=>$request->present_address,
                'permanent_address'=>$request->permanent_address,
                'group'=>$request->group,
                'registration_no'=>$request->registration_no,
                'discount_id'=>$request->discount_id,
                'second_language'=>$request->second_language,
                'previous_school'=>$request->previous_school,
                'previous_class'=>$request->previous_class,
                'transfer_certificate'=>$request->transfer_certificate,
                'father_name'=>$request->father_name,
                'father_phone'=>$request->father_phone,
                'father_education'=>$request->father_education,
                'father_profession'=>$request->father_profession,
                'father_designation'=>$request->father_designation,
                'father_photo'=>$request->father_photo,
                'mother_name'=>$request->mother_name,
                'mother_phone'=>$request->mother_phone,
                'mother_education'=>$request->mother_education,
                'mother_profession'=>$request->mother_profession,
                'mother_designation'=>$request->mother_designation,
                'mother_photo'=>$request->mother_photo,
                'health_condition'=>$request->health_condition,
                'photo'=>$request->photo,
                'other_info' => $request->other_info,
                'status' => 1,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'created_at' => Carbon:: now(),
            ]);
            Enrollment::insert([
                'class_id'=>$request->class_id,
                'student_id'=>$student_id,
                'section_id'=>$request->section_id,
                'roll_no'=>$request->roll_no,
                'student_type' => 1,
                'created_at' => Carbon:: now(),
            ]);
            return back()->with('status', 'Student Added Sucessfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student,$id)
    {
        $data['student']=Student::find($id);
//        $data['guardian']=Guardian::all();
        $data['discount']=Discount::all();
//        $data['role']=Role::all();
        $data['user_info'] = Student::find($id)->user;
        $data['enrollment'] = Student::find($id)->enrollment;
        $data['role']=Student::find($id)->user->role;
        $data['class_info']=Student::find($id)->enrollment->class;
        $data['section']=Student::find($id)->enrollment->section;
        $data['guardian']=Student::find($id)->guardian;

        return view('admin.academics.student.view_student',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student,$id)
    {
        $data['student']=Student::find($id);
        $data['guardian']=Guardian::all();
        $data['class']=AllClass::all();
        $data['section']=Section::all();
        $data['discount']=Discount::all();
//        $data['role']=Role::all();
        $data['user_info'] = Student::find($id)->user;
        $data['enrollment'] = Student::find($id)->enrollment;
        $data['role']=Student::find($id)->user->role;

//        $data['section']=Student::find($id)->enrollment->section;
        return view('admin.academics.student.edit_student',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student,$id)
    {
        $user_id = Student::find($id)->user->id;
        $enrollment_id= Student::find($id)->enrollment->id;
        $enrollment_student_id= Student::find($id)->enrollment->student_id;
        $validator = Validator::make($request->all(), [
            'name'              =>['required','string','max:255','min:3'],
            'admission_no'      =>['required'],
            'admission_date'    =>['required'],
            'dob'               =>['required'],
            'gender'            =>['required'],
            'guardian_id'       =>['required'],
            'phone'             =>['required'],
            'class_id'          =>['required','integer'],
            'section_id'        =>['required','integer'],
            'roll_no'           =>['required'],
            'role_id'           =>['required','integer'],
            'email'      =>['required'],
            'password'      =>['required'],
        ]);

//        return $request->name();

        if ($validator->fails()) {
            return back()->withErrors($validator->errors());
        } else {
            Student::where('id',$id)->update([
                'name'=>$request->name,
                'user_id'=>$user_id,
                'admission_no'=>$request->admission_no,
                'admission_date'=>$request->admission_date,
                'dob'=>$request->dob,
                'gender'=>$request->gender,
                'blood_group'=>$request->blood_group,
                'religion'=>$request->religion,
                'guardian_id'=>$request->guardian_id,
                'relation_with'=>$request->relation_with,
                'phone'=>$request->phone,
                'national_id'=>$request->national_id,
                'present_address'=>$request->present_address,
                'permanent_address'=>$request->permanent_address,
                'group'=>$request->group,
                'registration_no'=>$request->registration_no,
                'discount_id'=>$request->discount_id,
                'second_language'=>$request->second_language,
                'previous_school'=>$request->previous_school,
                'previous_class'=>$request->previous_class,
                'transfer_certificate'=>$request->transfer_certificate,
                'father_name'=>$request->father_name,
                'father_phone'=>$request->father_phone,
                'father_education'=>$request->father_education,
                'father_profession'=>$request->father_profession,
                'father_designation'=>$request->father_designation,
                'father_photo'=>$request->father_photo,
                'mother_name'=>$request->mother_name,
                'mother_phone'=>$request->mother_phone,
                'mother_education'=>$request->mother_education,
                'mother_profession'=>$request->mother_profession,
                'mother_designation'=>$request->mother_designation,
                'mother_photo'=>$request->mother_photo,
                'health_condition'=>$request->health_condition,
                'photo'=>$request->photo,
                'other_info' => $request->other_info,
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
            Enrollment::find($enrollment_id)->update([
                'class_id'=>$request->class_id,
                'student_id'=>$enrollment_student_id,
                'section_id'=>$request->section_id,
                'roll_no'=>$request->roll_no,
                'updated_at' => Carbon:: now(),
            ]);


            return back()->with('status', 'Student Updated Sucessfully.');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student,$id)
    {
//        return $id;
        try {
            Enrollment::find($id)->delete();
        } catch (Exception $e) {
            return back()->withError('Student has Child/Childs. You must DELETE the Child/Childs first!')
                ->with('server_error','Server Error Message :: '.$e->getMessage());
        }

        return back()->with('status', 'Student Deleted Successfully!');
    }
}
