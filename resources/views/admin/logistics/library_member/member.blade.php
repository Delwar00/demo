@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <br>
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
{{--                    <i class="fas fa-table mr-1"></i>user role--}}
{{--                    <a href="" class="btn btn-primary pull-right" style="float:right;text-transform:uppercase">add user role</a><br><br> <legend><center><h2><b>Manage Department</b></h2></center></legend><br>--}}
                    <legend><center><h2 style="text-transform:uppercase"><b>library member list</b></h2></center></legend><br>
                    <div class="" align="right">
                        <a href="{{ route('member.nonMemberList') }}" class="back btn btn-info"><span class="glyphicon glyphicon-plus"></span>&nbsp&nbspNon member list</a>
                    </div>
                    <br>

                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="DataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr style="text-transform:uppercase">
                                <th>#Id</th>
                                <th>photo</th>
                                <th>name</th>
                                <th>class</th>
                                <th>section</th>
                                <th>roll no</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($class_info as $key => $value)
                                <tr>
                                    <td>{{ ++$key }}</td>
                                    <td>{{ 1 }}</td>
                                    <td>{{ 1 }}</td>
                                    <td>{{ $value->sName }}</td>
                                    <td>{{ $value->cName }}</td>
                                    <td>{{ $value->tName }}</td>
                                    <td>
{{--                                        <a href="{{ route('member.edit',$value->id) }}" class="">--}}
{{--                                            <i class="text-info fa fa-edit"></i>--}}
{{--                                        </a>--}}
{{--                                        <form method="DELETE" action="{{ route('member.destroy',$value->id) }}" style="display: inline; float: none;">--}}
{{--                                            <button title="Delete Data"  onclick="return confirm('WARNING! Are You Sure to Delete?')" type="submit" >--}}
{{--                                                <i class="text-danger fa fa-trash"></i>--}}
{{--                                            </button>--}}
{{--                                        </form>--}}
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
