@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <legend><center><h2 style="text-transform:uppercase;font-size:20px"><b>teacher Details</b></h2></center></legend>
                </div>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-info collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <strong>Basic Information</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <strong>Social Information</strong>
                                </button>
                            </h2>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <table class="table table-striped table-bordered " >
                                    <tr>
                                        <th>Title</th>
                                        <th>Value</th>
                                        <th>Title</th>
                                        <th>Value</th>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">name</td>
                                        <td>{{ $teacher->name }}</td>
                                        <td style="text-transform: capitalize">national_id</td>
                                        <td>{{ $teacher->national_id }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">national_id</td>
                                        <td>{{ $teacher->national_id }}</td>
                                        <td style="text-transform: capitalize">phone</td>
                                        <td>{{ $teacher->phone }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">present address</td>
                                        <td>{{ $teacher->present_address }}</td>
                                        <td style="text-transform: capitalize">permanent address</td>
                                        <td>{{ $teacher->permanent_address }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">gender</td>
                                        <td>{{ $teacher->gender }}</td>
                                        <td style="text-transform: capitalize">blood group</td>
                                        <td>{{ $teacher->blood_group }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">Date of birth</td>
                                        <td>{{ $teacher->dob }}</td>
                                        <td style="text-transform: capitalize">religion</td>
                                        <td>{{ $teacher->religion }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">joining date</td>
                                        <td>{{ $teacher->joining_date }}</td>
                                        <td style="text-transform: capitalize">resign date</td>
                                        <td>{{ $teacher->resign_date }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">salary type</td>
                                        <td>{{ $teacher->salary_type }}</td>
                                        <td style="text-transform: capitalize">responsibility</td>
                                        <td>{{ $teacher->responsibility }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">email</td>
                                        <td>{{ $teacher->user->email }}</td>
                                        <td style="text-transform: capitalize">photo</td>
                                        <td>{{ $teacher->photo }}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card">

                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <table class="table table-striped table-bordered " >
                                    <tr>
                                        <th>Title</th>
                                        <th>Value</th>
                                        <th>Title</th>
                                        <th>Value</th>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">facebook url</td>
                                        <td>{{ $teacher->facebook_url }}</td>
                                        <td style="text-transform: capitalize">linkedin url</td>
                                        <td>{{ $teacher->linkedin_url }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">twitter url</td>
                                        <td>{{ $teacher->twitter_url }}</td>
                                        <td style="text-transform: capitalize">google plus url</td>
                                        <td>{{ $teacher->google_plus_url }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">instagram url</td>
                                        <td>{{ $teacher->instagram_url }}</td>
                                        <td style="text-transform: capitalize">youtube url</td>
                                        <td>{{ $teacher->youtube_url }}</td>
                                    </tr><tr>
                                        <td style="text-transform: capitalize">pinterest url</td>
                                        <td>{{ $teacher->pinterest_url }}</td>
                                        <td style="text-transform: capitalize">is view on web</td>
                                        <td>
                                            @if($teacher->is_view_on_web==1)
                                                Yes
                                                @else
                                                No
                                            @endif
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
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
