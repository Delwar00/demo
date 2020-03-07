@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <legend><center><h2 style="text-transform:uppercase;font-size:20px"><b>Salary grade Details</b></h2></center></legend>
                </div>
                <div class="card-body">

                    <table class="table table-striped table-bordered " >
                        <tr>
                            <th>Name</th>
                            <th>Value</th>
                        </tr>
                        <tr>
                            <td>Grade Name:</td>
                            <td> {{ $salary_grade_view->grade_name }}</td>
                        </tr>
                        <tr>
                            <td>Basic Salary:</td>
                            <td> {{ $salary_grade_view->basic_salary }}</td>
                        </tr><tr>
                            <td>House Rent:</td>
                            <td> {{ $salary_grade_view->house_rent }}</td>
                        </tr>
                        <tr>
                            <td>Transport Allowance:</td>
                            <td> {{ $salary_grade_view->transport }}</td>
                        </tr>
                        <tr>
                            <td>Medical Allowance:</td>
                            <td> {{ $salary_grade_view->medical }}</td>
                        </tr>
                        <tr>
                            <td>Over Time Hourly Rate:</td>
                            <td>{{ $salary_grade_view->over_time_hourly_rate }}</td>
                        </tr><tr>
                            <td>Provident Fund:</td>
                            <td>{{ $salary_grade_view->provident_fund }}</td>
                        </tr><tr>
                            <td>Hourly Rate:</td>
                            <td>{{ $salary_grade_view->hourly_rate }}</td>
                        </tr> <tr>
                            <td>Total Allowance:</td>
                            <td>{{ $salary_grade_view->total_allowance }}</td>
                        </tr><tr>
                            <td>total_deduction:</td>
                            <td>{{ $salary_grade_view->total_deduction }}</td>
                        </tr><tr>
                            <td>Gross Salary:</td>
                            <td>{{ $salary_grade_view->gross_salary }}</td>
                        </tr><tr>
                            <td>Net Salary:</td>
                            <td>{{ $salary_grade_view->net_salary }}</td>
                        </tr>
                        <tr>
                            <td>Note:</td>
                            <td>{{ $salary_grade_view->note }}</td>
                        </tr>

                    </table>
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
