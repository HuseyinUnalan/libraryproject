@extends('main_master')
@section('content')
@section('title')
    Publisher List
@endsection
<div class="container mt-5">
    <h2>Publisher List</h2>
    <table class="table mt-5">
        <thead>
            <tr>
                <th>Publisher Name</th>
                <th>Added User</th>
                <th>Transactions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($publishers as $publisher)
                <tr>
                    <td>{{ $publisher->name }}</td>
                    <td>{{ $publisher->user->name }}</td>
                    <td>
                        <a href="{{ route('publisher.books', $publisher->id) }}" class="btn btn-info"
                            title="Published Books"><i class="fa fa-eye"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
