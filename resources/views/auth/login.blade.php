@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg border-0 rounded-lg mt-5 " style="padding-left:30px;padding-right:30px">
                <div class="card-header"><h3 class="text-center font-weight-light my-4" style="color:black;font-weight:bold"><strong>SMT ADMIN SIGN-IN</strong></h3></div>
                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Email</label>
                            <input class="form-control @error('email') is-invalid @enderror py-4" name="email" id="inputEmailAddress" type="email" value="{{ old('email') }}" required autocomplete="email" autofocus />
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label class="small mb-1" for="inputPassword">Password</label>
                            <input class="form-control @error('password') is-invalid @enderror py-4" id="inputPassword" type="password" name="password" required autocomplete="current-password" />

                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" name="remember"  {{ old('remember') ? 'checked' : '' }} />
                                <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                            </div>

                        </div>
                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
{{--                            <a class="small" href="password.html">Forgot Password?</a>--}}
{{--                            <a class="btn btn-primary" href="index.html">Login</a>--}}
                            <button type="submit" class="btn btn-primary"> SignIn </button>
                        </div>
                    </form>
                </div>
                <div class="card-footer text-center">
{{--                    <div class="small"><a href="register.html">Need an account? Sign up!</a></div>--}}
                    <div class="small">
                        @if (Route::has('password.request'))
                            <a  href="{{ route('password.request') }}" style="color:grey">
                                Forgot Password?
                            </a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
