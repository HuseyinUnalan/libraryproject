<?php

namespace App\Http\Controllers;

use App\Models\Authors;
use App\Models\Books;
use App\Models\Comments;
use App\Models\Publishers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
    public function Index()
    {
        return view('pages.home_page');
    }

    // Books Area
    public function AllBook()
    {
        $books = Books::latest()->get();
        return view('pages.books.all_books', compact('books'));
    }

    public function AddBook()
    {
        $authors = Authors::latest()->get();
        $publishers = Publishers::latest()->get();
        return view('pages.books.add_book', compact('authors', 'publishers'));
    }

    public function StoreBook(Request $request)
    {
        Books::insert([

            'name' => $request->name,
            'user_id' => Auth::id(),
            'author_id' => $request->author_id,
            'publisher_id' => $request->publisher_id,
        ]);

        $notification = array(
            'message' => 'Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }


    public function BookComment($id)
    {
        $books = Books::findOrFail($id);
        return view('pages.books.comment_book', compact('books'));
    }

    // Publishers Area
    public function AllPublisher()
    {
        $publishers = Publishers::latest()->get();
        return view('pages.publishers.all_publisher', compact('publishers'));
    }

    public function AddPublisher()
    {
        return view('pages.publishers.add_publisher');
    }

    public function StorePublisher(Request $request)
    {
        Publishers::insert([

            'name' => $request->name,
            'user_id' => Auth::id(),

        ]);

        $notification = array(
            'message' => 'Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function PublisherBooks($id)
    {
        $publisher = Publishers::findOrFail($id);
        $publisherbooks = Books::where('publisher_id', $id)->get();
        return view('pages.publishers.publisher_books', compact('publisher', 'publisherbooks'));
    }


    // Authors Area
    public function AllAuthor()
    {
        $authors = Authors::latest()->get();
        return view('pages.authors.all_author', compact('authors'));
    }

    public function AddAuthor()
    {
        return view('pages.authors.add_author');
    }

    public function StoreAuthor(Request $request)
    {
        Authors::insert([

            'name_surname' => $request->name_surname,
            'user_id' => Auth::id(),

        ]);

        $notification = array(
            'message' => 'Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function AuthorBooks($id)
    {
        $author = Authors::findOrFail($id);
        $authorbooks = Books::where('author_id', $id)->get();

        return view('pages.authors.author_books', compact('author', 'authorbooks'));
    }

    // Add Commnet

    public function AddComment(Request $request)
    {
        Comments::insert([
            'comment' => $request->comment,
            'book_id' => $request->book_id,
            'user_id' => Auth::id(),
        ]);

        return response()->json(['message' => 'Inserted Successfully']);
    }


    // Logout
    public function Logout(Request $request)
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
