@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >edit  teacher</span>
                          <a  href="{{ route('teacher.index') }}" class="back btn btn-info pull-right" style="float:right" >
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('teacher.update',$edit_teacher->id) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <h5 class="col-md-12 alert alert-secondary">Basic information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Name<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Name" id="name" name="name" value="{{ $edit_teacher->name }}" class="form-control @error('name') is-invalid @enderror"  type="text" >
                                </div>
                                @error('name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">national id</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="National ID" id="national_id" name="national_id" value="{{ $edit_teacher->national_id }}" class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">responsibility<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Responsibility" id="responsibility" value="{{ $edit_teacher->responsibility }}" name="responsibility"  value="{{ old('responsibility') }}" class="form-control @error('responsibility') is-invalid @enderror"  type="text" >
                                </div>
                                @error('responsibility')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">phone<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Phone" id="phone" name="phone" value="{{ $edit_teacher->phone }}" class="form-control @error('phone') is-invalid @enderror"  type="text" >
                                </div>
                                @error('phone')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">gender<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="gender" name="gender"  class="form-control @error('gender') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        <option value="1"@if($edit_teacher->gender == 1) {{'selected'}} @endif>Male</option>
                                        <option value="2"@if($edit_teacher->gender == 2) {{'selected'}} @endif>FeMale</option>
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
                                        <option value="a_positive"@if($edit_teacher->blood_group == "a_positive") {{'selected'}} @endif>A+</option>
                                        <option value="a_negative"@if($edit_teacher->blood_group == "a_negative") {{'selected'}} @endif>A-</option>
                                        <option value="b_positive"@if($edit_teacher->blood_group == "b_positive") {{'selected'}} @endif>B+</option>
                                        <option value="b_negative"@if($edit_teacher->blood_group == "b_negative") {{'selected'}} @endif>B-</option>
                                        <option value="o_positive"@if($edit_teacher->blood_group == "o_positive") {{'selected'}} @endif>O+</option>
                                        <option value="o_negative"@if($edit_teacher->blood_group == "o_negative") {{'selected'}} @endif>O-</option>
                                        <option value="ab_positive"@if($edit_teacher->blood_group == "ab_positive") {{'selected'}} @endif>AB+</option>
                                        <option value="ab_negative"@if($edit_teacher->blood_group == "ab_negative") {{'selected'}} @endif>AB-</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">religion</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Religion" id="religion" name="religion" value="{{ $edit_teacher->religion }}" class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Dob<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Dob" id="dob" name="dob" value="{{ $edit_teacher->dob }}" class="form-control @error('dob') is-invalid @enderror"  type="date" >
                                </div>
                                @error('dob')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">present address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Present Address" id="present_address" name="present_address"  class="form-control"  rows="2">{{ $edit_teacher->present_address }}</textarea>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label style="text-transform:uppercase">permanent address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Permanent Address" id="permanent_address" name="permanent_address"  class="form-control"  rows="2">{{ $edit_teacher->permanent_address }}</textarea>
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Academic Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">email<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                     <input placeholder="Email" id="email" name="email" value="{{ $user_info->email }}" class="form-control @error('email') is-invalid @enderror"  type="text" >
                                </div>
                                @error('email')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">password<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Password"   id="password" name="password"  class="form-control @error('password') is-invalid @enderror"  type="text" >
                                </div>
                                @error('password')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">salary grade <span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="salary_grade_id" name="salary_grade_id"  class="form-control @error('salary_grade_id') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        @foreach($grade as $key=>$value)
                                            <option value="{{ $value->id }}"@if($edit_teacher->salary_grade_id == $value->id) {{'selected'}} @endif>{{ $value->grade_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('salary_grade_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">salary type<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="salary_type" name="salary_type"  class="form-control @error('salary_type') is-invalid @enderror">
                                        <option value="">===Select===</option>
                                        <option value="monthly"@if($edit_teacher->salary_type == 'monthly') {{'selected'}} @endif>Monthly</option>
                                        <option value="hourly"@if($edit_teacher->salary_type == 'hourly') {{'selected'}} @endif>Hourly</option>
                                    </select>
                                </div>
                                @error('salary_type')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">role<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="role_id" name="role_id"  class="form-control @error('role_id') is-invalid @enderror">
{{--                                        <option value="">===Select===</option>--}}
                                        @foreach($role as $key=>$value)
                                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('role_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">joining date<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input type="date" id="joining_date" name="joining_date" value="{{ $edit_teacher->joining_date }}" class="form-control @error('joining_date') is-invalid @enderror">
                                </div>
                                @error('joining_date')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">

                                <div class="input-group">
                                    <label style="text-transform:uppercase">Ressume</label>
                                    <div class="">
                                        <input  class="form-control"  name="resume" value="{{ $edit_teacher->resume }}" id="resume" type="file">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Other Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">is view on web?</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="is_view_on_web" name="is_view_on_web"  class="form-control">
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">facebook url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Facebook Url" id="facebook_url" value="{{ $edit_teacher->facebook_url }}" name="facebook_url"  class="form-control"  type="text" >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">linkedin url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Linkedin Url" id="linkedin_url" value="{{ $edit_teacher->linkedin_url }}" name="linkedin_url"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">twitter url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Twitter Url" id="twitter_url" value="{{ $edit_teacher->twitter_url }}" name="twitter_url"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">google plus url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Google Plus Url" id="google_plus_url" value="{{ $edit_teacher->google_plus_url }}"  name="google_plus_url"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">instagram url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input value="{{ $edit_teacher->instagram_url }}" placeholder="Instagram Url" id="instagram_url" name="instagram_url"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">pinterest url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input value="{{ $edit_teacher->pinterest_url }}" placeholder="Pinterest Url" id="pinterest_url" name="pinterest_url"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">youtube url</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input value="{{ $edit_teacher->youtube_url }}" placeholder="Youtube Url" id="youtube_url" name="youtube_url"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">other info</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="Other Info" name="other_info"  class="form-control" rows="2">{{ $edit_teacher->other_info }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <label style="text-transform:uppercase">Employee photo</label>
                                    <div class="">
                                        <input   class="form-control"  name="photo"  id="photo" type="file" title = "upload">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 " style="text-align: right;">
                                <label></label>
                            </div>
                            <div class="col-md-4" style="margin-top:10px">
                                <button type="submit" class="btn btn-success" >Update <i class="fas fa-location-arrow"></i></button>
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
