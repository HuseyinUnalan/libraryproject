@extends('main_master')
@section('content')
@section('title')
    Library | Register Page
@endsection
<div class="container mt-5">
    <h2>Register</h2>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <div class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="email" name="name" placeholder="Name">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                </div>
            </div>

        </div>

        <div class="row">


            <div class="col-md-6">
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                </div>
            </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label for="pwd">Confirm Password:</label>
                    <input type="password" class="form-control" id="password_confirmation"
                        placeholder="Confirm Password" name="password_confirmation">
                </div>
            </div>

        </div>

        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>
@endsection
