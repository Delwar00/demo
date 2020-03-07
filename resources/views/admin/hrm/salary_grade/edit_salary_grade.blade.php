@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card-header" style="text-transform:uppercase;margin-top:18px">
                    <h3>
                      <span  class=" col-md-12 well">
                        <span  >
                            <span  class="all-header" >edit salary grade</span>
                          <a  href="{{ route('salaryGrade.index') }}" class="back btn btn-info pull-right" style="float:right">
                              <i class="far fa-arrow-alt-circle-left lol"></i> Back</a>
                        </span>
                      </span>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('salaryGrade.update',$edit_salary_grade) }}" method="post">
                        @csrf
                        @if(session('status'))
                            <div class="alert alert-info">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row" style="margin-bottom:20px">
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">grade name<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Name" id="grade_name" value="{{ $edit_salary_grade->grade_name }}" name="grade_name"  class="form-control @error('grade_name') is-invalid @enderror"  type="text" >
                                </div>
                                @error('grade_name')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">basic salary<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Basic Salary" value="{{ $edit_salary_grade->basic_salary }}" id="basic_salary" name="basic_salary"  class="form-control @error('basic_salary') is-invalid @enderror"  type="number" >
                                </div>
                                @error('basic_salary')
                                <div class="error">{{ $message }}</div>
                                @enderror
                            </div><br><br><br><br>

                            <div class="col-md-3">
                                <label style="text-transform:uppercase">house rent</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="House Rent" value="{{ $edit_salary_grade->house_rent }}" id="house_rent" name="house_rent"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Transport Allowance</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Transport Allowance" value="{{ $edit_salary_grade->transport }}" id="transport" name="transport"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">medical Allowance</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="medical Allowance" value="{{ $edit_salary_grade->medical }}" id="medical" name="medical"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">over time hourly rate</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Over Time Hourly Rate" value="{{ $edit_salary_grade->over_time_hourly_rate }}" id="over_time_hourly_rate" name="over_time_hourly_rate"  class="form-control"  type="number" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Provident Fund</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Provident Fund" value="{{ $edit_salary_grade->provident_fund }}" id="provident_fund" name="provident_fund"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Hourly Rate<span style="color:red;font-size:17px">  *</span></label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Hourly Rate" value="{{ $edit_salary_grade->hourly_rate }}" id="hourly_rate" name="hourly_rate"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Total Allowance</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Total Allowance" value="{{ $edit_salary_grade->total_allowance }}" id="total_allowance" name="total_allowance"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Total Deduction</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Total Deduction" value="{{ $edit_salary_grade->total_deduction }}" id="total_deduction" name="total_deduction"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">Gross Salary</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Gross Salary" value="{{ $edit_salary_grade->gross_salary }}" id="gross_salary" name="gross_salary"  class="form-control"  type="number" >
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label style="text-transform:uppercase">net salary</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <input placeholder="Net Salary" value="{{ $edit_salary_grade->net_salary }}" id="net_salary" name="net_salary"  class="form-control"  type="number" >
                                </div>
                            </div><br><br><br><br>
                            <div class="col-md-6">
                                <label style="text-transform:uppercase">note</label>
                                <div class="input-group all1">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                    <textarea placeholder="Note" id="note" name="note"  class="form-control" rows="2">{{ $edit_salary_grade->note }}</textarea>

                                </div>
                            </div>
                            <br><br><br><br>


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
