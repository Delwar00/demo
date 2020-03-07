<?php

namespace App\Http\Controllers;

use App\Enrollment;
use App\Guardian;
use App\Role;
use App\Student;
use App\User;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class GuardianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['guardian']=Guardian::all();
        return view('admin.academics.guardian.guardian',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['role']=Role::where('id',3)->get();
        return view('admin.academics.guardian.add_guardian',$data);
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
            'phone'      =>['required'],
            'profession'    =>['required'],
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
                'last_logged_in'=>1,
                'created_by'=>Auth::user()->id,
                'modified_by'=>Auth::user()->id,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'created_at' => Carbon:: now(),
            ]);
            Guardian::insert([
                'name'=>$request->name,
                'user_id'=>$user_id,
                'phone'=>$request->phone,
                'profession'=>$request->profession,
                'present_address'=>$request->present_address,
                'permanent_address'=>$request->permanent_address,
                'national_id'=>$request->national_id,
                'other_info'=>$request->other_info,
                'photo'=>$request->photo,
                'created_by' => Auth::user()->id,
                'modified_by' => Auth::user()->id,
                'created_at' => Carbon:: now(),
            ]);
            return back()->with('status', 'Guardian Added Sucessfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Guardian  $guardian
     * @return \Illuminate\Http\Response
     */
    public function show(Guardian $guardian,$id)
    {
        $data['guardian']=Guardian::find($id);
        $data['role']=Role::where('id',3)->get();
        return view('admin.academics.guardian.view_guardian');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Guardian  $guardian
     * @return \Illuminate\Http\Response
     */
    public function edit(Guardian $guardian, $id)
    {
        $data['guardian']=Guardian::find($id);
        $data['role']=Role::where('id',3)->get();
        return view('admin.academics.guardian.edit_guardian',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Guardian  $guardian
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Guardian $guardian, $id)
    {
        $user_id = Guardian::find($id)->user->id;
        $validator = Validator::make($request->all(), [
            'name'              =>['required','string','max:255','min:3'],
            'phone'      =>['required'],
            'profession'    =>['required'],
            'role_id'           =>['required','integer'],
            'email'      =>['required'],
            'password'      =>['required'],
        ]);

//        return $request->all();

        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            Guardian::where('id',$id)->update([
                'name'=>$request->name,
                'user_id'=>$user_id,
                'phone'=>$request->phone,
                'profession'=>$request->profession,
                'present_address'=>$request->present_address,
                'permanent_address'=>$request->permanent_address,
                'national_id'=>$request->national_id,
                'other_info'=>$request->other_info,
                'photo'=>$request->photo,
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
            return back()->with('status', 'Guardian Updated Sucessfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Guardian  $guardian
     * @return \Illuminate\Http\Response
     */
    public function destroy(Guardian $guardian)
    {
        //
    }
}
