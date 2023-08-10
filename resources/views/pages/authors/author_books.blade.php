@extends('main_master')
@section('content')
@section('title')
    {{ $author->name_surname }} Books
@endsection
<div class="container mt-5">
    <h2>{{ $author->name_surname }}</h2>
    <table class="table mt-5">
        <thead>
            <tr>
                <th>Book Name</th>
                <th>Author Name Surname</th>
                <th>Publisher Name</th>
                <th>Added User</th>
                <th>Transactions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($authorbooks as $authorbook)
                <tr>
                    <td>{{ $authorbook->name }}</td>
                    <td>{{ $authorbook->author->name_surname }}</td>
                    <td>{{ $authorbook->publisher->name }}</td>
                    <td>{{ $authorbook->user->name }}</td>
                    <td>
                        <button type="button" class="btn btn-success open-modal" data-toggle="modal" data-target="#myModal"
                            data-book-id="{{ $authorbook->id }}" data-book-name="{{ $authorbook->name }}"
                            title="Add Comment">
                            <i class="fa fa-comment"></i>
                        </button>


                        <a href="{{ route('book.comments', $authorbook->id) }}" class="btn btn-info"
                            title="Book Comments">
                            <i class="fa fa-eye"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<div class="container">

    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="bookName"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <form>
                        @csrf
                        <input type="hidden" id="bookId" name="book_id">
                        <div class="form-group">
                            <label for="comment">Comment:</label>
                            <textarea name="comment" class="form-control" id="comment" cols="30" rows="4"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.open-modal').click(function() {
            var bookId = $(this).data('book-id');
            var bookName = $(this).data('book-name');

            $('#myModal .modal-title').text('Comment for ' + bookName);
            $('#myModal input[name="book_id"]').val(bookId);
        });

        $('#myModal form').submit(function(event) {
            event.preventDefault();

            var comment = $('#comment').val();
            var bookId = $('#bookId').val();
            var user_id = {{ Auth::id() }}; // Kullanıcı kimliğini almak için

            AddComment(comment, user_id, bookId);
        });

        function AddComment(comment, user_id, book_id) {
            $.ajax({
                type: 'POST',
                url: '{{ route('store.comment') }}',
                data: {
                    '_token': '{{ csrf_token() }}',
                    'comment': comment,
                    'user_id': user_id,
                    'book_id': book_id,
                },
                success: function(response) {
                    alert(response.message);
                },
                error: function(xhr) {
                    alert('Hata!');
                    console.error();
                }
            });
        }
    });
</script>
@endsection
