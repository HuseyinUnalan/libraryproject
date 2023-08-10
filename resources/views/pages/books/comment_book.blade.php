@extends('main_master')
@section('content')
@section('title')
    {{ $books->name }} Comments
@endsection
<div class="container mt-5">
    <h2>Reviews of the book {{ $books->name }}</h2>
    <p>Author : <b>{{ $books->author->name_surname }}</b> <br> Publisher: <b>{{ $books->publisher->name }}</b> </p>

    <div id="accordion">
        @php
            $bookcomments = $books->bookcomments;
        @endphp
        @foreach ($bookcomments as $bookcomment)
            <div class="card mb-3">
                <div class="card-header" id="heading{{ $bookcomment->id }}">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse"
                            data-target="#collapse{{ $bookcomment->id }}" aria-expanded="false"
                            aria-controls="collapse{{ $bookcomment->id }}">
                            {{ $bookcomment->user->name }} Comment
                        </button>
                    </h5>
                </div>
                <div id="collapse{{ $bookcomment->id }}" class="collapse"
                    aria-labelledby="heading{{ $bookcomment->id }}" data-parent="#accordion">
                    <div class="card-body">
                        {{ $bookcomment->comment }}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
