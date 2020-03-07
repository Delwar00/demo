@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <legend><center><h2 style="text-transform:uppercase"><b style="font-size:23px">manage activity log</b></h2></center></legend>
                </div><br>
                <div class="col-md-12">
                    <form action="" method="post">
                        @csrf
                        <div class="row"  >
                            <div class="col-md-4">
                                <label style="text-transform:uppercase">user type<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select  name="session_year"  class="form-control @error('session_year') is-invalid @enderror">
                                        @foreach($user_role as $key=>$value)
                                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('session_year')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 ">
                                <label style="text-transform:uppercase">user<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <select  name="session_year"  class="form-control @error('session_year') is-invalid @enderror">

                                    </select>
                                </div>
                                @error('session_year')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-2" style="margin-top:30px">
                                <button type="submit" class="btn btn-success" >Search<span class="glyphicon glyphicon-send"></span></button>
                            </div>
                        </div>
                </div>
                </form>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="DataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr style="text-transform:uppercase">
                                <th>#Id</th>
                                <th>Role Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Note</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($activity as $key => $value)
                                <tr>
                                    <td>{{ ++$key }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ '0'.$value->phone }}</td>
                                    <td>{{ $value->userEmail }}</td>
                                    <td>{{ $value->activity }}</td>
                                    <td>
                                        <form method="DELETE" action="{{ route('activity.destroy',$value->id) }}" style="display: inline; float: none;">
                                            <button style="border:0" title="Delete Data"  onclick="return confirm('WARNING! Are You Sure to Delete?')" type="submit" >
                                                <i class="text-danger fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            @if(session('status'))
                                <div class="alert alert-info">
                                    {{ session('status') }}
                                </div>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
{{--    pdf generator--}}
    <script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>

    <script>
        @section('custom_datatable')
            "paging": true,
            "ordering":  true,
            "pagingType": "full_numbers",
            "searching": true,
            dom: 'Bfrtip',
            buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
        @stop
    </script>



@endsection
