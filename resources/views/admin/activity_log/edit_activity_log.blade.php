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
                            <span  class="all-header" >Edit User role</span>
                          <a  href="{{ route('role.index') }}" class="btn btn-info pull-right" style="float:right">Back</a>
                        </span>
                      </span>
                    </h3>
                    <br>

                </div>
                <div class="card-body">
                    <form action="{{ route('role.update',$edit_user_role->id) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row"  >
                            <div class="col-md-4 " style="text-align: right;">
                                <label style="text-transform:uppercase">role name<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input id="name" name="name" value="{{ $edit_user_role->name }}" class="form-control @error('name') is-invalid @enderror"  type="text" required>
                                </div>
                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row" >
                            <div class="col-md-4 " style="text-align: right;">
                                <label style="text-transform:uppercase">note<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="note" name="note"  class="form-control @error('note') is-invalid @enderror" cols="30" rows="4" required> {{ $edit_user_role->note }}</textarea>
                                </div>
                                @error('note')
                                <span class="invalid-feedback" role="alert">
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
                                <button type="submit" class="btn btn-success" >Update<span class="glyphicon glyphicon-send"></span></button>
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
