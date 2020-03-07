@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <legend><center><h2 style="text-transform:uppercase;font-size:20px"><b>student Details</b></h2></center></legend>
                </div>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-info collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <strong>Basic Information</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <strong>Guardian Information</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                   <strong>Parent Information</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    <strong>Attendance</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    <strong>Exam Mark</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    <strong>Payment</strong>
                                </button>
                                <button class="btn btn-default collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    <strong>Activity</strong>
                                </button>

                            </h2>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <table class="table table-striped table-bordered " >
                                    <tr>
                                        <th>Name</th>
                                        <th>Value</th>
                                        <th>Name</th>
                                        <th>Value</th>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">admission no:</td>
                                        <td> {{ $student->admission_no }}</td>
                                        <td style="text-transform: capitalize">name:</td>
                                        <td> {{ $student->name }}</td>
                                    </tr><tr>
                                        <td style="text-transform: capitalize">admission date</td>
                                        <td> {{ $student->admission_date }}</td>
                                        <td style="text-transform: capitalize">birth date:</td>
                                        <td> {{ $student->dob }}</td>

                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">gender:</td>
                                        <td>
                                            @if($student->gender==1)
                                                Male
                                            @else
                                                Female
                                            @endif
                                        </td>
                                        <td style="text-transform: capitalize">blood group:</td>
                                        <td> {{ $student->blood_group }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">phone:</td>
                                        <td>{{ $student->phone }}</td>
                                        <td style="text-transform: capitalize">email:</td>
                                        <td> {{ $user_info->email }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">national id:</td>
                                        <td>{{ $student->national_id }}</td>
                                        <td style="text-transform: capitalize">permanent address:</td>
                                        <td>{{ $student->permanent_address }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">present address:</td>
                                        <td>{{ $student->present_address }}</td>
                                        <td style="text-transform: capitalize">section:</td>
                                        <td> {{ $section->name }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">class:</td>
                                        <td>{{ $class_info->name }}</td>
                                        <td style="text-transform: capitalize">registration no:</td>
                                        <td> {{ $student->registration_no }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">roll no:</td>
                                        <td>{{ $student->enrollment->roll_no }}</td>
                                        <td style="text-transform: capitalize">second language:</td>
                                        <td> {{ $student->second_language }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">discount id:</td>
                                        <td>{{ $student->discount_id }}</td>
                                        <td style="text-transform: capitalize">previous class:</td>
                                        <td style="color:red"> </td>
{{--                                        {{ $student->className }}--}}

                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">previous school:</td>
                                        <td>{{ $student->previous_school }}</td>
                                        <td style="text-transform: capitalize">health condition:</td>
                                        <td> {{ $student->health_condition }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">photo:</td>
                                        <td>{{ $student->photo }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">other info:</td>
                                        <td>{{ $student->other_info }}</td>
                                        <td style="text-transform: capitalize">photo:</td>
                                        <td>{{ $student->photo }}</td>
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
                                        <th>Name</th>
                                        <th>Value</th>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">blood group:</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">religion:</td>
                                        <td>{{ $student->religion }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">guardian id:</td>
                                        <td>{{ $student->guardian_id }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">relation with:</td>
                                        <td>{{ $student->relation_with }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">phone:</td>
                                        <td>{{ $student->phone }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">national id:</td>
                                        <td>{{ $student->national_id }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">present address:</td>
                                        <td>{{ $student->present_address }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">permanent address:</td>
                                        <td>{{ $student->permanent_address }}</td>
                                    </tr>


                                    <tr>
                                        <td style="text-transform: capitalize">date of birth:</td>
                                        <td> {{ $student->dob }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">blood group:</td>
                                        <td>{{ $student->blood_group }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">guardian id:</td>
                                        <td>{{ $student->guardian_id }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">relation with:</td>
                                        <td>{{ $student->relation_with }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">phone:</td>
                                        <td>{{ $student->phone }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">permanent address:</td>
                                        <td>{{ $student->permanent_address }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">section id:</td>
                                        <td>{{ $student->section_id }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">registration no:</td>
                                        <td>{{ $student->registration_no }}</td>
                                    </tr><tr>
                                        <td style="text-transform: capitalize">role id:</td>
                                        <td>{{ $student->role_id }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">second language:</td>
                                        <td>{{ $student->second_language }}</td>
                                    </tr>

                                    <tr>
                                        <td style="text-transform: capitalize">previous class:</td>
                                        <td>{{ $student->previous_class }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">transfer certificate:</td>
                                        <td>{{ $student->transfer_certificate }}</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card">

                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                <table class="table table-striped table-bordered " >
                                    <tr>
                                        <td style="text-transform: capitalize">father name:</td>
                                        <td>{{ $student->father_name }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">father phone:</td>
                                        <td>{{ $student->father_phone }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">father_education:</td>
                                        <td>{{ $student->father_education }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">father profession:</td>
                                        <td>{{ $student->father_profession }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">father designation:</td>
                                        <td>{{ $student->father_designation }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">father photo:</td>
                                        <td>{{ $student->father_photo }}</td>
                                    </tr><tr>
                                        <td style="text-transform: capitalize">mother name:</td>
                                        <td>{{ $student->mother_name }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">mother phone:</td>
                                        <td>{{ $student->mother_phone }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">mother education:</td>
                                        <td>{{ $student->mother_education }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">mother profession:</td>
                                        <td>{{ $student->mother_profession }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">mother designation:</td>
                                        <td>{{ $student->mother_designation }}</td>
                                    </tr>
                                    <tr>
                                        <td style="text-transform: capitalize">mother photo:</td>
                                        <td>{{ $student->mother_photo }}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div><div class="card">
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                            <div class="card-body">
                                4Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                        <div class="card-body">
                            5Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                        <div class="card-body">
                            6Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
                        <div class="card-body">
                            7Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
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
