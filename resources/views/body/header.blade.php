<nav class="navbar navbar-expand-sm bg-info navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link text-white" href="{{ route('index') }}">Home Page</a>
        </li>


        @auth
            @php
                $id = Auth::user()->id;
                $userData = App\Models\User::find($id);
            @endphp
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbardrop" data-toggle="dropdown">
                    Book Transactions
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="{{ route('add.book') }}">Add Book</a>
                    <a class="dropdown-item" href="{{ route('all.book') }}">Book List</a>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbardrop" data-toggle="dropdown">
                    Author Transactions
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="{{ route('add.author') }}">Add Author </a>
                    <a class="dropdown-item" href="{{ route('all.author') }}">Author List</a>
                </div>
            </li>


            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbardrop" data-toggle="dropdown">
                    Publisher Transactions
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="{{ route('add.publisher') }}">Add Publisher </a>
                    <a class="dropdown-item" href="{{ route('all.publisher') }}">Publisher List</a>
                </div>
            </li>


            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbardrop" data-toggle="dropdown">
                    {{ $userData->name }}
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="{{ route('user.logout') }}">Logout</a>
                </div>
            </li>
        @else
            <li class="nav-item ">
                <a class="nav-link" href="{{ route('register') }}">Register</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{ route('login') }}">Login</a>
            </li>

        @endauth







    </ul>


</nav>
