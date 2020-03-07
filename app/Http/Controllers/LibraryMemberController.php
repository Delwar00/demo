<?php

namespace App\Http\Controllers;

use App\AllClass;
use App\LibraryMember;
use Illuminate\Http\Request;

class LibraryMemberController extends Controller
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
//        $data['member']=LibraryMember::where('status',1)->get();

        $data['class_info']=AllClass::join('e1_sections','d1_classes.id','e1_sections.class_id')
            ->select('e1_sections.name as sName','d1_classes.name as cName')
            ->get();
        return view('admin.logistics.library_member.member',$data);
    }
    public function nonMemberList()
    {
//        $data['non_member']=LibraryMember::where('status',0)->get();
        $data['class_info']=AllClass::join('e1_sections','d1_classes.id','e1_sections.class_id')
            ->select('e1_sections.name as sName','d1_classes.name as cName')
            ->get();
        return view('admin.logistics.library_member.non_member',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\LibraryMember  $libraryMember
     * @return \Illuminate\Http\Response
     */
    public function show(LibraryMember $libraryMember)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\LibraryMember  $libraryMember
     * @return \Illuminate\Http\Response
     */
    public function edit(LibraryMember $libraryMember)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\LibraryMember  $libraryMember
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, LibraryMember $libraryMember)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\LibraryMember  $libraryMember
     * @return \Illuminate\Http\Response
     */
    public function destroy(LibraryMember $libraryMember)
    {
        //
    }
}
