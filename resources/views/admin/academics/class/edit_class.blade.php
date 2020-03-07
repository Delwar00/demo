@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center" style="min-height:700px">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header">edit class</span>
                          <a  href="{{ route('class.index') }}"  class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>

                </div>
                <div class="card-body">
                    <form action="{{ route('class.update',$class_info->id) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row"  >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">class name<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-6 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Class Name" value="{{ $class_info->name }}" id="name" name="name"  class="form-control @error('name') is-invalid @enderror"  type="text" >
                                </div>
                                @error('name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row"  >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">numeric name<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-6 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Numeric Name" value="{{ $class_info->numeric_name }}" id="numeric_name" name="numeric_name"  class="form-control @error('numeric_name') is-invalid @enderror"  type="text" >
                                </div>
                                @error('numeric_name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row"  >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">teacher name<span style="color:red;font-size:17px">  *</span></label>
                            </div>
                            <div class="col-md-6 all">
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="teacher_id" name="teacher_id"  class="form-control @error('teacher_id') is-invalid @enderror">
                                        <option value="">==Select One==</option>
                                        @foreach($teacher as $key=>$value)
                                            <option value="{{ $value->id }}"@if($class_info->teacher_id == $value->id) {{'selected'}} @endif>{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('teacher_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                        </div><br>
                        <div class="row" >
                            <div class="col-md-2"></div>
                            <div class="col-md-2" style="text-align: left;">
                                <label style="text-transform:uppercase">note</label>
                            </div>
                            <div class="col-md-6 all">
                                <div class="input-group all1" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Note" id="note" name="note" class="form-control" cols="30" rows="4" >{{ $class_info->note }}</textarea>
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
