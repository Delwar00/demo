@extends('layouts.app')
<style>
    .dt-button {
        color: #fff;
        background-color: #17A2B8;
        border-color: #46b8da;
        display: inline-block;
        padding: 3px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: 400;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-image: none;
        border: 1px solid transparent;
    }
    .dt-buttons{
        width:50%;
        position: absolute;
        /*color:red;*/
    }
</style>
@section('content')
    <div class="container">
        <div class="row justify-content-center" style="min-height:700px">
            <div class="col-md-12" >
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                            <span  class="all-header" >advanced student admission</span>
                          <a  href="{{ route('advanced.add') }}" class="back btn btn-info pull-right" style="float:right">
                             <i class="lol fas fa-plus"></i>
                              Add addmission
                          </a>
                        </span>
                    </h3>

                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="DataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr style="text-transform:uppercase">
                                <th>#Id</th>
                                <th>photo</th>
                                <th>name</th>
                                <th>group</th>
                                <th>session year</th>
                                <th>class</th>
                                <th>section</th>
                                <th>roll no</th>
                                <th>email</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($enrollment as $key => $value)
                                @if($value->academic_year_id==Null)
                                    @else
                                    <tr>
                                        <td>{{ ++$key }}</td>
                                        <td>{{ $value->student->photo }}</td>
                                        <td>{{ $value->student->name }}</td>
                                        <td>{{ $value->student->group }}</td>
                                        <td>{{ $value->academicYear->session_year }}</td>
                                        <td>{{ $value->class->name }}</td>
                                        <td>{{ $value->section->name }}</td>
                                        <td>{{ $value->roll_no }}</td>
                                        <td>{{ $value->student->user->email }}</td>
                                        <td>
                                            <a title="View Data" style="text-decoration:none !important" href="{{ route('advanced.show',$value->student_id) }}" class="">
                                                <i class="text-info fa fa-eye text-success"></i>
                                            </a>
                                            <a title="Edit Data" style="text-decoration:none !important" href="{{ route('advanced.edit',$value->student_id) }}" class="">
                                                <i class="text-info fa fa-edit"></i>
                                            </a>
                                            <form method="DELETE" action="{{ route('advanced.destroy',$value->id) }}" style="display: inline; float: none;">
                                                <button style="border:0" title="Delete Data"  onclick="return confirm('WARNING! Are You Sure to Delete?')" type="submit" >
                                                    <i class="text-danger fa fa-trash"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                @endif

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
