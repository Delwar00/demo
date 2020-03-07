@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center" style="min-height:700px">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >edit guardian</span>
                          <a  href="{{ route('guardian.index') }}"  class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('guardian.update',$guardian->id) }}" method="post">
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
                                    <input  placeholder="Name" id="name" value="{{ $guardian->name }}" name="name"  class="form-control @error('name') is-invalid @enderror"  type="text" >
                                    <input  name="user_id"  class="form-control"  type="hidden" >
                                </div>
                                @error('name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Phone<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Phone" value="{{ $guardian->phone }}"  name="phone"  class="form-control @error('phone') is-invalid @enderror"  type="text" >
                                </div>
                                @error('phone')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">profession<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Profession" name="profession"  value="{{ $guardian->profession }}" class="form-control @error('profession') is-invalid @enderror"  type="text" >
                                </div>
                                @error('profession')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">religion</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Religion" value="{{ $guardian->religion }}" id="religion" name="religion"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">present address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="Present Address" name="present_address"  class="form-control" rows="2">{{ $guardian->present_address }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">permanent address</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="Permanent Address" name="permanent_address"  class="form-control" rows="2">{{ $guardian->permanent_address }}</textarea>
                                </div>
                            </div>
                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Academic Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">National id</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="National Id" value="{{ $guardian->national_id }}"  name="national_id"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Role<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select name="role_id" id="role_id" class="form-control @error('role_id') is-invalid @enderror">
                                        {{--                                        <option value="">==Select One==</option>--}}
                                        @foreach($role as $value)
                                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('role_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">email<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Email" type="text"  value="{{ $guardian->user->email }}" name="email"  class="form-control @error('email') is-invalid @enderror">
                                </div>
                                @error('email')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Password<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Password" type="password"  name="password"  class="form-control @error('password') is-invalid @enderror">
                                </div>
                                @error('password')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>

                        </div>
                        <h5 class="col-md-12 alert alert-secondary">Other Information:</h5>
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">other info</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="Other Info" name="other_info"  class="form-control" rows="2">{{ $guardian->other_info }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <label style="text-transform:uppercase">Guardian photo</label>
                                    <div class="">
                                        <input  class="form-control"  value="{{ $guardian->photo }}" name="photo"  id="photo" type="file" title = "upload">
                                    </div>
                                </div>
                            </div>
                            <br><br><br><br>

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
