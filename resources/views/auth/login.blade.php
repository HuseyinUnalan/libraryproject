@extends('main_master')
@section('content')
@section('title')
    Library | Login Page
@endsection
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <img src="{{ asset('upload/login.png') }}" class="img-fluid" alt="">
        </div>

        <div class="col-md-6">
            <h2>Login</h2>
            <hr>
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter password"
                        name="password">
                </div>
                <div class="form-group form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" id="remember_me" name="remember"> Remember
                        me
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Log in</button>
            </form>
        </div>

    </div>
</div>
@endsection
