@extends('main_master')
@section('content')
@section('title')
    Author List
@endsection
<div class="container mt-5">
    <h2>Author List</h2>
    <table class="table mt-5">
        <thead>
            <tr>
                <th>Author Name Surname</th>
                <th>Added User</th>
                <th>Transactions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($authors as $author)
                <tr>
                    <td>{{ $author->name_surname }}</td>
                    <td>{{ $author->user->name }}</td>
                    <td>
                        <a href="{{ route('author.books', $author->id) }}" class="btn btn-info" title="Author's Books">
                            <i class="fa fa-eye"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
