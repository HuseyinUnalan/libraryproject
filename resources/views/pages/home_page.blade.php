@extends('main_master')
@section('content')
@section('title')
    Home Page
@endsection
<div class="container mt-5">
    <h4>TR</h4>
    <p>
        Merhaba, bu projede kütüphanedeki tüm kitapları, kitapların yazarlarını, kitapları yayınlayanları görebilir ve
        yeni yazar, yayıncı ve kitap ekleye bilirsiniz. Ayrıca bir yazara ait kitapları yazarlar sayfasında yazarın
        isminin yanındaki göze tıklayarak o yazara ait kitapları görebilir aynı şekilde yayıncıların yayınladıkları
        kitaplar için de yayıncılar sayfasında yayıncının isminin yanındaki göze tıklayarak yayıncının kitaplarını
        görebilirsiniz ve kitabı, yazarı, yayıncıyı ve yorumu ekleyen kullanıcını ismini de görebilirsiniz. Kayıt olan
        kullanıcı giriş yaparak kitap, yazar, yayıncı ve yorum ekleyebilir ve diğer kullanıcıların eklediği kayıtları
        görebilir. <b> Bu proje Laravel JetStream ile beraber yapılmıştır. </b>
    </p>

    <h4>EN</h4>
    <p>
        Hello, in this project you can see all the books in the library, the authors of the books, the publishers of the
        books and you can add new authors, publishers and books. You can also see the books of an author by clicking the
        eye next to the author's name on the authors page, and you can see the books of that author by clicking the eye
        next to the publisher's name on the publishers page for the books published by the publishers, and you can see
        the book, author, publisher and the name of the user who added the comment. The registered user can add books,
        authors, publishers and comments by logging in and can see the records added by other users. <b> The project was
            built with Laravel JetStream.
    </p>
</div>
@endsection
