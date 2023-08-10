@extends('main_master')
@section('content')
@section('title')
    Add Book
@endsection
<div class="container mt-5">
    <h2>Add Book</h2>
    <form action="{{ route('store.book') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Book Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Book Name">
        </div>

        <div class="form-group">
            <label for="exampleFormControlSelect1">Author</label>
            <select class="form-control" name="author_id" id="exampleFormControlSelect1">
                @foreach ($authors as $author)
                    <option value="{{ $author->id }}">{{ $author->name_surname }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="exampleFormControlSelect1">Publisher</label>
            <select class="form-control" name="publisher_id" id="exampleFormControlSelect1">
                @foreach ($publishers as $publisher)
                    <option value="{{ $publisher->id }}">{{ $publisher->name }}</option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection
