@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <br>
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
{{--                    <i class="fas fa-table mr-1"></i>user role--}}
{{--                    <a href="" class="btn btn-primary pull-right" style="float:right;text-transform:uppercase">add user role</a><br><br> <legend><center><h2><b>Manage Department</b></h2></center></legend><br>--}}
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >add library book issue</span>
                          <a  href="{{ route('issue.index') }}"  class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                    <br>

                </div>
                <div class="card-body">
                    <form action="{{ route('issue.store') }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Select book<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="blood_group" name="blood_group"  class="form-control">
                                        <option value="">===Select===</option>
                                        @foreach($book as $key=>$value)
                                            <option value="">{{ $value->title }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('title')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">isbn no</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Isbn No" id="isbn_no" disabled name="isbn_no"  value="{{ old('isbn_no') }}" class="form-control"  type="text" >
                                </div>

                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">edition</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Edition" disabled id="phone" name="edition"  value="{{ old('edition') }}" class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">author</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Author" disabled value="{{ old('author') }}" id="author" name="author"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">language</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Language" disabled id="language" name="language" value="{{ old('language') }}"  class="form-control"  type="text" >
                                </div>

                            </div>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">price</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Price" disabled id="price" value="{{ old('price') }}" name="price"  class="form-control"  type="text" >
                                </div>

                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Quantity</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Quantity" disabled  id="qty" name="qty"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">almira no</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Rack No" disabled  id="rack_no" name="rack_no"  class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">book cover</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input type="file" disabled id="cover" value="{{ old('cover') }}" name="cover"  class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">due date</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input  id="due_date" name="due_date"  class="form-control"  type="date" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Library Member<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select id="library_member_id" name="library_member_id"  class="form-control">
                                        <option value="">===Select===</option>
                                        @foreach($library_member as $key=>$value)
                                            <option value="">{{ $value->title }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('library_member_id')
                                <div class="error">{{ $message }}</div>
                                @enderror
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
