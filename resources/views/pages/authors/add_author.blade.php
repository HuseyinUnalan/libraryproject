@extends('main_master')
@section('content')
@section('title')
    Add Author
@endsection
<div class="container mt-5">
    <h2>Add Author</h2>
    <form action="{{ route('store.author') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Name Surname:</label>
            <input type="text" class="form-control" id="name" name="name_surname" placeholder="Author Name Surname">
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection
