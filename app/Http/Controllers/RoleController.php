<?php

namespace App\Http\Controllers;

use App\Role;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Auth;
use Str;
class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_role=Role::all();
        return view('admin.role.role',compact('user_role'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.role.add_role');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//    return $request->all();
        $this->validate($request, [
            'name'  => ['required'],
            'note'  => ['required'],
        ]);
        Role::insert([
            "slug"    => Str::lower($request->name),
            "name"    => $request->name,
            "note"    => $request->note,
            'is_default'=>0,
            'created_by'=>Auth::user()->id,
            'modified_by'=>Auth::user()->id,
            'created_at'=>Carbon:: now(),
        ]);

        return back()->with('status','Role Added Sucessfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(Role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit($id,Role $role)
    {
        $edit_user_role = Role::find($id);

        return view('admin.role.edit_role', compact('edit_user_role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role,$id)
    {
        $this->validate($request, [
            'name'  => ['required'],
            'note'  => ['required','string','max:255'],
        ]);
        Role::where('id', $id)->update([
            "name"    => $request->name,
            "note"    => $request->note,
            'created_by'=>Auth::user()->id,
            'modified_by'=>Auth::user()->id,
            'updated_at'=>Carbon:: now(),
        ]);
        return redirect()->back()->with('status', 'Role Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role,$id)
    {
        Role::where('id','=',$id)->delete();
        return back()->with('status','Role Deleted Sucessfully!');
    }
}
