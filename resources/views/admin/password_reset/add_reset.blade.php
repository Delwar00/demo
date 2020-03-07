@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <br>
                <div class="card-header" style="text-transform:uppercase">
{{--                    <i class="fas fa-table mr-1"></i>user role--}}
{{--                    <a href="" class="btn btn-primary pull-right" style="float:right;text-transform:uppercase">add user role</a><br><br> <legend><center><h2><b>Manage Department</b></h2></center></legend><br>--}}
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  style="color:rgba(0,0,0,0.81);float:left;text-transform:uppercase;font-size:20px" >add User role</span>
                          <a  href="{{ route('reset.index') }}" class="btn btn-info pull-right" style="float:right">Back</a>
                        </span>
                      </span>
                    </h3>
                    <br>

                </div>
                <div class="card-body">
                    <form action="{{ route('reset.store') }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row"  >
                            <div class="col-md-2" style="text-align: right;">

                            </div>
                            <div class="col-md-2" style="text-align: right;">
                                <label style=";text-transform:uppercase">user type<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select  name="role_id" id="role_id" class="form-control @error('role_id') is-invalid @enderror">
                                        <option value>==Select One==</option>
                                        @foreach($role as $key=>$role_info)
                                            <option value="{{ $role_info->id }}">{{ $role_info->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('role_id')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row"  >
                            <div class="col-md-4 " style="text-align: right;">
                                <label style="text-transform:uppercase">user<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select  name="user"  id="user" class="form-control @error('user') is-invalid @enderror">
                                        <option value>==Select One==</option>

                                    </select>
                                </div>
                                @error('user')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row" >
                            <div class="col-md-4 " style="text-align: right;">
                                <label style="text-transform:uppercase">password<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input type="password" name="password"  class="form-control @error('note') is-invalid @enderror">
                                </div>
                                @error('note')
                                <span class="invalid-feedback " role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row" >
                            <div class="col-md-4 " style="text-align: right;">
                                <label style="text-transform:uppercase">conform password<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input type="password" name="conform_password"  class="form-control @error('conform_password') is-invalid @enderror">
                                </div>
                                @error('conform_password')
                                <span class="invalid-feedback " role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 " style="text-align: right;">
                                <label></label>
                            </div>
                            <div class="col-md-4" style="margin-top:10px">
                                <button type="submit" class="btn btn-success" >Add<span class="glyphicon glyphicon-send"></span></button>
                                <button type="reset" class="btn btn-danger" >RESET<span class="glyphicon glyphicon-remove"></span></button>
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
@section('scripts')
    <script>
        //Depends on role to get user name
        $(document).ready(function(){
            $('#role_id').on('change',function() {
                var role_id = $(this).val();
                 // alert(role_id);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type:'POST',
                    url:'/user/list',
                    data: {role_id: role_id},
                    success: function (data) {
                        var x=0,txt='';
                        txt = "<option value>" + "---Select---" + "</option>";
                        for (x in data) {
                            txt += "<option value="+data[x].id+">" + data[x].email + "</option>";
                        }
                        //console.log(data);
                        $( "#user" ).html(txt);

                    }
                });
            });
        });
    </script>
@endsection
