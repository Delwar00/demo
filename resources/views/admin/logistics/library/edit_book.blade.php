@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >edit manage employee</span>
                          <a  href="{{ route('book.index') }}" class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>

                </div>
                <div class="card-body">
                    <form action="{{ route('book.update',$book->id) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">book title<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input  placeholder="Book Title" id="title" value="{{ $book->title }}" name="title"  class="form-control @error('title') is-invalid @enderror"  type="text" >
                                </div>
                                @error('name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">book id</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Book Id" disabled value="{{ $book->custom_id }}" id="custom_id"   name="custom_id"  class="form-control"  type="text" >
                                </div>

                            </div>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">isbn no</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Isbn No" id="isbn_no" name="isbn_no"  value="{{ $book->isbn_no }}" class="form-control"  type="text" >
                                </div>

                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">edition</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Edition" id="phone" name="edition"  value="{{ $book->edition }}" class="form-control"  type="text" >
                                </div>
                            </div><br><br><br><br>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">author</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Author" value="{{ $book->author }}" id="author" name="author"  class="form-control"  type="text" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">language</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Language" id="language" name="language" value="{{ $book->language }}"  class="form-control"  type="text" >
                                </div>

                            </div><br><br><br><br>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">price</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Price" id="price" value="{{ $book->price }}" name="price"  class="form-control"  type="text" >
                                </div>

                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Quantity<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Quantity" value="{{ $book->qty }}" id="qty" name="qty"  class="form-control @error('qty') is-invalid @enderror"  type="text" >
                                </div>
                                @error('qty')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-3">

                                <div class="input-group">
                                    <label style="text-transform:uppercase">Almira No</label>
                                    <div class="">
                                        <input  class="form-control"  value="{{ $book->rack_no }}" name="rack_no"  id="rack_no" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">book cover</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input type="file" id="cover" value="{{ $book->cover }}" name="cover"  class="form-control">
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
