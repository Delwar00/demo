@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center" style="min-height:700px">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >Edit academic year</span>
                          <a  href="{{ route('year.index') }}" class="btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('year.update',$edit_year->id) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row"  >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">role name<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input id="session_year" name="session_year" value="{{ $edit_year->session_year }}" class="form-control @error('session_year') is-invalid @enderror"  type="text" >
                                </div>
                                @error('session_year')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row" >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">note</label>
                            </div>
                            <div class="col-md-4 all">
                                <div class="input-group all1" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea id="note" name="note"  class="form-control" cols="30" rows="4" > {{ $edit_year->note }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 " style="text-align: right;">
                                <label></label>
                            </div>
                            <div class="col-md-4" style="margin-top:10px">
                                <button type="submit" class="btn btn-success" >Update <i class="fas fa-location-arrow"></i></button>
                                <button type="reset" class="btn btn-danger" >RESET<i class="fas fa-times"></i></button>
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
