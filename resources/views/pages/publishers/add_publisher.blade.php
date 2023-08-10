@extends('main_master')
@section('content')
@section('title')
    Add Publisher
@endsection
<div class="container mt-5">
    <h2>Add Publisher</h2>
    <form action="{{ route('store.publisher') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Publisher Name">
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection
