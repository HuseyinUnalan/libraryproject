<?php

use App\Http\Controllers\MainController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/main', function () {
    return view('welcome');
})->name('main');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::get('/', [MainController::class, 'Index'])->name('index');

Route::middleware(['auth'])->group(function () {

    Route::get('add/book', [MainController::class, 'AddBook'])->name('add.book');
    Route::post('store/book', [MainController::class, 'StoreBook'])->name('store.book');
    Route::get('all/book', [MainController::class, 'AllBook'])->name('all.book');
    Route::get('book/comments/{id}', [MainController::class, 'BookComment'])->name('book.comments');


    Route::get('add/publisher', [MainController::class, 'AddPublisher'])->name('add.publisher');
    Route::post('store/publisher', [MainController::class, 'StorePublisher'])->name('store.publisher');
    Route::get('all/publisher', [MainController::class, 'AllPublisher'])->name('all.publisher');
    Route::get('publisher/books/{id}', [MainController::class, 'PublisherBooks'])->name('publisher.books');

    Route::get('add/author', [MainController::class, 'AddAuthor'])->name('add.author');
    Route::post('store/author', [MainController::class, 'StoreAuthor'])->name('store.author');
    Route::get('all/author', [MainController::class, 'AllAuthor'])->name('all.author');
    Route::get('author/books/{id}', [MainController::class, 'AuthorBooks'])->name('author.books');

    Route::post('store/comment', [MainController::class, 'AddComment'])->name('store.comment');


    Route::get('logout', [MainController::class, 'Logout'])->name('user.logout');
});
