@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >add student advanced admission</span>
                          <a  href="{{ route('advanced.index') }}"  class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('advanced.store') }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <h5 class="col-md-12 alert alert-secondary">Basic information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Academic Year<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="academic_year_id" name="academic_year_id"  class="form-control @error('academic_year_id') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        @foreach($academic_year as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('academic_year_id') == $value->id) {{'selected'}} @endif>{{ $value->session_year }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('academic_year_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Name<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input  placeholder="Name" id="name" value="{{ old('name') }}" name="name"  class="form-control @error('name') is-invalid @enderror"  type="text" >
                                    <input  name="user_id"  class="form-control"  type="hidden" >
                                    <input  name="student_id"  class="form-control"  type="hidden" >
                                </div>
                                @error('name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">admission no<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Admission No" value="{{ old('admission_no') }}" id="admission_no" name="admission_no"  class="form-control @error('admission_no') is-invalid @enderror"  type="text" >
                                </div>
                                @error('admission_no')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">admission date<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input  name="admission_date"  value="{{ old('admission_date') }}" class="form-control @error('responsibility') is-invalid @enderror"  type="date" >
                                </div>
                                @error('admission_date')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Date of birth<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input  id="dob" name="dob"  value="{{ old('dob') }}" class="form-control @error('dob') is-invalid @enderror"  type="date" >
                                </div>
                                @error('dob')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">gender<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="gender" name="gender"  class="form-control @error('gender') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        <option value="1"@if(old('gender') == 1) {{'selected'}} @endif>Male</option>
                                        <option value="2"@if(old('gender') == 2) {{'selected'}} @endif>FeMale</option>
                                    </select>
                                </div>
                                @error('gender')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">blood group</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="blood_group" name="blood_group"  class="form-control">
                                        <option value="">===Select===</option>
                                        <option value="a_positive"@if(old('blood_group') == "a_positive") {{'selected'}} @endif>A+</option>
                                        <option value="a_negative"@if(old('blood_group') == "a_negative") {{'selected'}} @endif>A-</option>
                                        <option value="b_positive"@if(old('blood_group') == "b_positive") {{'selected'}} @endif>B+</option>
                                        <option value="b_negative"@if(old('blood_group') == "b_negative") {{'selected'}} @endif>B-</option>
                                        <option value="o_positive"@if(old('blood_group') == "o_positive") {{'selected'}} @endif>O+</option>
                                        <option value="o_negative"@if(old('blood_group') == "o_negative") {{'selected'}} @endif>O-</option>
                                        <option value="ab_positive"@if(old('blood_group') == "ab_positive") {{'selected'}} @endif>AB+</option>
                                        <option value="ab_negative"@if(old('blood_group') == "ab_negative") {{'selected'}} @endif>AB-</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">religion</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Religion" value="{{ old('religion') }}" id="religion" name="religion"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Contact information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">guardian<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="guardian_id" name="guardian_id"  class="form-control @error('guardian_id') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        @foreach($guardian as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('guardian_id') == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('guardian_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">relation with guardian</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="relation_with" name="relation_with"  class="form-control">
                                        <option value="">===Select===</option>
                                        <option value="Father"@if(old('relation_with') == "Father") {{'selected'}} @endif>Father</option>
                                        <option value="Mother"@if(old('relation_with') == "Mother") {{'selected'}} @endif>Mother</option>
                                        <option value="Sister"@if(old('relation_with') == "Sister") {{'selected'}} @endif>Sister</option>
                                        <option value="Brother"@if(old('relation_with') == "Brother") {{'selected'}} @endif>Brother</option>
                                        <option value="Uncle"@if(old('relation_with') == "Uncle") {{'selected'}} @endif>Uncle</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">phone<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="phone" name="phone"  value="{{ old('phone') }}" class="form-control @error('phone') is-invalid @enderror"  type="text" >
                                </div>
                                @error('phone')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">national id</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="National Id"  name="national_id"  value="{{ old('national_id') }}" class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">present address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Present Address" value="{{ old('present_address') }}" id="present_address" name="present_address"  class="form-control"  rows="2"></textarea>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label style="text-transform:uppercase">permanent address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Permanent Address" value="{{ old('permanent_address') }}" id="permanent_address" name="permanent_address"  class="form-control"  rows="2"></textarea>
                                </div>
                            </div>
                            <br><br><br><br>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Academic Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">class<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select placeholder="Class Name" value="{{ old('class_id') }}" name="class_id"  class="form-control @error('class_id') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        @foreach($class as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('class_id') == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('class_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Section<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select placeholder="Section" value="{{ old('section_id') }}" id="section_id" name="section_id"  class="form-control @error('section_id') is-invalid @enderror">
                                        <option value="">===Select one===</option>
                                        @foreach($section as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('section_id') == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('section_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">group</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="group" name="group"  class="form-control">
                                        <option value="">===Select===</option>
                                        <option value="Science"@if(old('group') == "Science") {{'selected'}} @endif>Science</option>
                                        <option value="Arts"@if(old('group') == "Arts") {{'selected'}} @endif>Arts</option>
                                        <option value="Commerce"@if(old('group') == "Commerce") {{'selected'}} @endif>Commerce</option>
                                    </select>
                                </div>
                                @error('salary_grade_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Roll No<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Roll No" type="text"  value="{{ old('roll_no') }}" name="roll_no"  class="form-control @error('roll_no') is-invalid @enderror">
                                </div>
                                @error('roll_no')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Registration No</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Registration No" type="text"  value="{{ old('registration_no') }}" name="registration_no"  class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">role<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="role_id" name="role_id"  class="form-control @error('role_id') is-invalid @enderror">
{{--                                        <option value="">===Select===</option>--}}
                                        @foreach($role as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('role_id') == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('role_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">discount</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="discount_id" name="discount_id"  class="form-control">
                                        <option value="">===Select===</option>
                                        @foreach($discount as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('discount_id') == $value->id) {{'selected'}} @endif>{{ '['.$value->title.']-'.$value->amount.'%' }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <div class="input-group">
                                    <label style="text-transform:uppercase">Second Language</label>
                                    <div class="">
                                        <input  placeholder="Second Language" class="form-control"  value="{{ old('second_language') }}" name="second_language"   type="text">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Previous School Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">previous school</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Previous Cchool" value="{{ old('previous_school') }}"  name="previous_school"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">previous class</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="previous_class" name="previous_class"  class="form-control">
                                        <option value="1">===Select===</option>
                                        @foreach($class as $key=>$value)
                                            <option value="{{ $value->id }}"@if(old('previous_class') == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">transfer certificate</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Transfer Certificate" value="{{ old('transfer_certificate') }}" id="transfer_certificate" name="transfer_certificate"  class="form-control"  type="file" >
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Father Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">father name</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Name" value="{{ old('father_name') }}"  name="father_name"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">father phone</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Phone" value="{{ old('father_phone') }}"  name="father_phone"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Father Education</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Education" value="{{ old('father_education') }}" name="father_education"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase"> Father Profession</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Profession" value="{{ old('father_profession') }}"  name="father_profession"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Father Designation</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Designation" value="{{ old('father_designation') }}" name="father_designation"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Father Photo</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Photo" value="{{ old('father_photo') }}"  name="father_photo"  class="form-control"  type="file" >
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Mother Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Mother name</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Name" value="{{ old('mother_name') }}"  name="mother_name"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Mother phone</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Phone" value="{{ old('mother_phone') }}"  name="mother_phone"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Mother Education</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Education" value="{{ old('mother_education') }}" name="mother_education"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase"> Mother Profession</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Father Profession" value="{{ old('mother_profession') }}"  name="mother_profession"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Mother Designation</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Mother Designation" value="{{ old('mother_designation') }}" name="mother_designation"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Mother Photo</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Mother Photo" value="{{ old('mother_photo') }}"  name="mother_photo"  class="form-control"  type="file" >
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Other Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">email<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Email" type="text"  value="{{ old('email') }}" name="email"  class="form-control @error('email') is-invalid @enderror">
                                </div>
                                @error('email')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Password<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Password" type="password"  value="{{ old('password') }}" name="password"  class="form-control @error('password') is-invalid @enderror">
                                </div>
                                @error('password')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <label style="text-transform:uppercase">health condition</label>
                                    <div class="">
                                        <input  class="form-control" placeholder="Health Condition" value="{{ old('health_condition') }}" name="health_condition"  id="health_condition" type="text" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <label style="text-transform:uppercase">Student photo</label>
                                    <div class="">
                                        <input  class="form-control"  value="{{ old('photo') }}" name="photo"  id="photo" type="file" title = "upload">
                                    </div>
                                </div>
                            </div>
                            <br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">other info</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="Other Info" name="other_info"  class="form-control" rows="2">{{ old('other_info') }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 " style="text-align: right;">
                                <label></label>
                            </div>
                            <div class="col-md-4" style="margin-top:10px">
                                <button type="submit" class="btn btn-success" >Add <i class="fas fa-location-arrow"></i></button>
                                <button type="reset" class="btn btn-danger" >RESET <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                    </form>
                    <br>
                    <br>
                    <br>

                </div>
            </div>
        </div>
    </div>
@endsection
