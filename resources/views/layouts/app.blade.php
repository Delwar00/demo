
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="author" content="" />
    <title>Dashboard </title>
    <style>
        .error {
            color: #c30505;
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/css/select2.min.css" rel="stylesheet" />
    <link href="{{ asset('/admin_layout/css/styles.css')}}" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
@auth
<div class="header-area" >
    <div class="col-md-2">

    </div>
    <div class="col-md-8">

    </div>
    <div class="header-text" style="font-size:14px;padding-bottom:40px">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="header-email">
                        <span style="color:white" class="fa fa-envelope"></span><span style="color:white;padding-right:10px"> info@mien-it.com</span>
                        <span style="color:white" class="fa fa-clock"></span><span style="color:white"> Tue Feb 25 2020</span>
                    </div>
                </div>
                <div class="col-md-4">

                </div>
                <div class="col-md-5 text-center">
                    <div class="header-right">
                        <span style="color:white" class="fa fa-globe"></span><span style="color:white;padding-right:10px">Web</span>
                        <span style="color:white" class="fa fa-user"></span ><span style="color:white;padding-right:10px">Welcome SuperAdmin<span>
                        <a href="{{ route('logout') }}" style="text-decoration:none;padding-left:10px;color:white;padding-right:10px" onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">Logout</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                        <span  style="color:white">Support Center<span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-menu ">
        <div class="container-fluid">
            <div class="row">
                <nav >
                    <div id="logo">
                        <img style="" src="{{ asset('/admin_layout/assets/img/SMT_WEB_LOGO.png')}}" alt="">
                        <span style="">MIEN SMT</span>

                    </div>
                    <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu">
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-1" class="toggle">Admin</label>
                            <a href="#"><span class="fa fa-user"></span> Admin <span class="fa fa-angle-down"></span> </a>
                            <input type="checkbox" id="drop-1"/>
                            <ul>
                                <li><a class="nav-link" href="#">Profile </a></li>
                                <li><a class="nav-link" href="{{ route('year.index') }}">Academic Year </a></li>
                                <li><a class="nav-link" href="{{ route('role.index') }}">User Role </a></li>
                                <li><a class="nav-link" href="#">Role Permission <br></a></li>
                                <li><a class="nav-link" href="#">Manage User </a></li>
                                <li><a class="nav-link" href="{{ route('reset.add') }}">Reset User Password </a></li>
                                <li><a class="nav-link" href="#">Reset User Email </a></li>
                                <li><a class="nav-link" href="#">Backup </a></li>
                                <li><a class="nav-link" href="#">Email Template </a></li>
                                <li><a class="nav-link" href="#">SMS Template </a></li>
                                <li><a class="nav-link" href="{{ route('activity.index') }}">Activity Log </a></li>
                                <li><a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">Logout </a></li>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </ul>

                        </li>
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-3" class="toggle">Setting</label>
                            <a href="#"><span class="fa fa-cog"></span> Setting <span class="fa fa-angle-down"></span></a>
                            <input type="checkbox" id="drop-3"/>
                            <ul>
                                <li><a class="nav-link" href="#">General Setting </a></li>
                                <li><a class="nav-link" href="#">Payment Setting </a></li>
                                <li><a class="nav-link" href="#">Sms Setting </a></li>
                                <li><a class="nav-link" href="#">Theme </a></li>
                                <li><a class="nav-link" href="#">Language </a></li>
                            </ul>

                        </li>
                        <li>

                            <!-- First Tier Drop Down -->
                            <label for="drop-2" class="toggle">Academics</label>
                            <a href="#"><span class="fa fa-graduation-cap"></span> Academics <span class="fa fa-angle-down"></span></a>
                            <input type="checkbox" id="drop-2"/>
                            <ul>
                                <li><a class="nav-link" href="{{ route('teacher.index') }}">Teacher </a></li>
                                <li><a class="nav-link" href="{{ route('class.index') }}">Class </a></li>
                                <li>

                                    <!-- Second Tier Drop Down -->
                                    <label for="drop-5" class="toggle">Section</label>
                                    <a href="#">Section<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-5"/>

                                    <ul>
                                        @foreach($class as $value)
                                            <li><a href="{{ route('class.show',$value->id) }}">{{ $value->name }}</a></li>

                                        @endforeach
                                    </ul>
                                </li>

                                <li><a class="nav-link" href="#">Subject </a></li>
                                <li><a class="nav-link" href="#">Syllabus </a></li>
                                <li><a class="nav-link" href="#">Class Routine </a></li>
                                <li><a class="nav-link" href="{{ route('guardian.index') }}">Guardian </a></li>
                                <li>

                                    <!-- Second Tier Drop Down -->
                                    <label for="drop-4" class="toggle">Student</label>
                                    <a href="#">Student<span style="float:right" class=" fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-4"/>

                                    <ul>
                                        <li><a href="{{ route('student.index') }}">Admit Student</a></li>
                                        <li><a href="{{ route('advanced.index') }}">Advanced Admission</a></li>
                                        <li><a href="#">Bulk Admission</a></li>
                                        <li><a href="#">Student Activity</a></li>
                                    </ul>
                                </li>
                                <li>

                                    <!-- Second Tier Drop Down -->
                                    <label for="drop-5" class="toggle">Attendance</label>
                                    <a href="#">Attendance<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-5"/>

                                    <ul>
                                        <li><a href="#">Student Attendance</a></li>
                                        <li><a href="#">Teacher Attendance</a></li>
                                        <li><a href="#">Employee Attendance</a></li>
                                        <li><a href="#">Absent Email</a></li>
                                        <li><a href="#">Absent SMS</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>


                        <li>

                            <!-- First Tier Drop Down -->
                            <label for="drop-6" class="toggle">Exam</label>
                            <a href="#"><span class="fas fa-thumbtack"></span> Exam <span class="fa fa-angle-down"></span></a>
                            <input type="checkbox" id="drop-6"/>
                            <ul>
                                <li>
                                    <label for="drop-7" class="toggle">Exam Style</label>
                                    <a href="#">Exam Style<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-7"/>
                                    <ul>
                                        <li><a href="#">Exam Grade</a></li>
                                        <li><a href="#">Exam Term</a></li>
                                    </ul>
                                </li>
                                <li><a class="nav-link" href="#">Exam Schedule </a></li>
                                <li><a class="nav-link" href="#">Exam Suggestion </a></li>
                                <li><a class="nav-link" href="#">Exam Attendance </a></li>
                                <li><a class="nav-link" href="#">Exam Mark </a></li>
                                <li><a class="nav-link" href="#">Exam Term Result </a></li>
                                <li><a class="nav-link" href="#">Exam Final Result </a></li>
                                <li><a class="nav-link" href="#">Exam Merit List </a></li>
                                <li><a class="nav-link" href="#">Student Mark Sheet </a></li>
                                <li><a class="nav-link" href="#"> Student Result Card </a></li>

                            </ul>
                        </li>
                        <li>

                            <!-- First Tier Drop Down -->
                            <label for="drop-6" class="toggle">Logistics</label>
                            <a href="#"><span class="fa fa-book"></span> Logistics <span class="fa fa-angle-down"></span></a>
                            <input type="checkbox" id="drop-6"/>
                            <ul>
                                <li>
                                    <label for="drop-7" class="toggle">Library</label>
                                    <a href="#">Library<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-7"/>
                                    <ul>
                                        <li><a href="{{ route('book.index') }}">Book</a></li>
                                        <li><a href="{{ route('member.index') }}">Library Member</a></li>
                                        <li><a href="{{ route('issue.index') }}">Issue & Return</a></li>
                                    </ul>
                                </li>
                                <li>



                                    <label for="drop-7" class="toggle">Transport</label>
                                    <a href="#">Transport<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-7"/>
                                    <ul>
                                        <li><a href="#">Vehicle</a></li>
                                        <li><a href="#">Manage Route</a></li>
                                        <li><a href="#">Transport Member</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <label for="drop-7" class="toggle">Hostel</label>
                                    <a href="#">Hostel<span style="float:right" class="fa fa-angle-right"></span></a>
                                    <input type="checkbox" id="drop-7"/>
                                    <ul>
                                        <li><a href="#">Manage Hostel</a></li>
                                        <li><a href="#">Manage Room</a></li>
                                        <li><a href="#">Manage Member</a></li>
                                    </ul>
                                </li>
                                <li><a class="nav-link" href="">Inventory</a></li>

                            </ul>
                        </li>
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-8" class="toggle">HRM</label>
                            <a href="#"><span class="fa fa-user-md"></span> HRM <span class="fa fa-angle-down"></span> </a>
                            <input type="checkbox" id="drop-8"/>
                            <ul>
                                <li><a class="nav-link" href="{{ route('designation.index') }}">Manage Designation </a></li>
                                <li><a class="nav-link" href="{{ route('employee.index') }}">Manage Employee </a></li>
                                <li><a class="nav-link" href="{{ route('salaryGrade.index') }}">Salary Grade </a></li>
                                <li><a class="nav-link" href="#"> Salary </a></li>
                                <li><a class="nav-link" href="#">Payment </a></li>

                            </ul>
                        </li>

                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-8" class="toggle">Accounts</label>
                            <a href="#"><span class="fas fa-dollar-sign"></span> Accounts <span class="fa fa-angle-down"></span> </a>
                            <input type="checkbox" id="drop-8"/>

                            <ul>
                                <li><a class="nav-link" href="#">Discount </a></li>
                                <li><a class="nav-link" href="#">Fee Type </a></li>
                                <li><a class="nav-link" href="#">Fee Collection </a></li>
                                <li><a class="nav-link" href="#">Manage Invoice </a></li>
                                <li><a class="nav-link" href="#">Due Fee </a></li>
                                <li><a class="nav-link" href="#">Due Fee Email </a></li>
                                <li><a class="nav-link" href="#">Due Fee SMS </a></li>
                                <li><a class="nav-link" href="#">Income Head </a></li>
                                <li><a class="nav-link" href="#">Income </a></li>
                                <li><a class="nav-link" href="#">Expenditure Head </a></li>
                                <li><a class="nav-link" href="#">Expenditure</a></li>

                            </ul>
                        </li>
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-8" class="toggle">Process</label>
                            <a href="#"><span class="fa fa-envelope"></span> Process <span class="fa fa-angle-down"></span> </a>
                            <input type="checkbox" id="drop-8"/>
                            <ul>
                                <li><a class="nav-link" href="#">Message </a></li>
                                <li><a class="nav-link" href="#">Promotion </a></li>
                                <li><a class="nav-link" href="#">Mail and SMS </a></li>
                                <li><a class="nav-link" href="#">Announcements </a></li>
                                <li><a class="nav-link" href="#">Event </a></li>
                                <li><a class="nav-link" href="#">Visitor Info </a></li>
                                <li><a class="nav-link" href="#">Front End </a></li>
                                <li><a class="nav-link" href="#">Certificate Type </a></li>
                                <li><a class="nav-link" href="#">Generate Certificate</a></li>
                            </ul>
                        </li>
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-8" class="toggle">Reports</label>
                            <a href="#"><span class="fa fa-list"></span> Reports <span class="fa fa-angle-down"></span> </a>
                            <input type="checkbox" id="drop-8"/>
                            <ul>
                                <li><a class="nav-link" href="#">Income Report </a></li>
                                <li><a class="nav-link" href="#">Expenditure Reports </a></li>
                                <li><a class="nav-link" href="#">Invoice Report </a></li>
                                <li><a class="nav-link" href="#">Due Fee Report </a></li>
                                <li><a class="nav-link" href="#">Fee Collection Report </a></li>
                                <li><a class="nav-link" href="#">Accounting Balance Report </a></li>
                                <li><a class="nav-link" href="#">Library Report </a></li>
                                <li><a class="nav-link" href="#">Student Attendance </a></li>
                                <li><a class="nav-link" href="#">Studnet Yearly Attendance </a></li>
                                <li><a class="nav-link" href="#">Teacher Attendance </a></li>
                                <li><a class="nav-link" href="#">Teacher Yearly Attendance </a></li>
                                <li><a class="nav-link" href="#">Employee Attendance </a></li>
                                <li><a class="nav-link" href="#">Employee Yearly Attendance </a></li>
                                <li><a class="nav-link" href="#">Student Report </a></li>
                                <li><a class="nav-link" href="#">Student Invoice Report </a></li>
                                <li><a class="nav-link" href="#">Student Activity Report </a></li>
                                <li><a class="nav-link" href="#">Payroll Report </a></li>
                                <li><a class="nav-link" href="#">Daily Transaction Report </a></li>
                                <li><a class="nav-link" href="#">Daily Statement Report </a></li>
                                <li><a class="nav-link" href="#">Exam Result Report </a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <div class="col-md-2">

    </div>
</div>

    @endauth
    <div id="layoutSidenav_content">
        <main class="outer">
            @yield('content')
        </main>
        @auth

        @endauth
        @auth
        <footer class="" style="background-color:#023F2E;padding:10px 0">
            <div class="container-fluid" >
                <div class="d-flex align-items-center justify-content-between small" >
                    <div class="text-muted">Copyright &copy; Your Website 2019</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
        @endauth
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/admin_layout/js/scripts.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('admin_layout/assets/demo/chart-area-demo.js')}}"></script>
<script src="{{ asset('/admin_layout/assets/demo/datatables-demo.js')}}"></script>
<script src="{{ asset('/admin_layout/assets/demo/chart-bar-demo.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(this).attr("autocomplete", "off");
        $('#DataTable').DataTable({
            @yield('custom_datatable')
        });
    });

</script>
<script>
    $(function () {
        $(".datepicker").datepicker({
            autoclose: true,
            todayHighlight: true,
            format: 'dd-mm-yyyy',
        });
    });
</script>
@yield('scripts')

</body>
</html>
