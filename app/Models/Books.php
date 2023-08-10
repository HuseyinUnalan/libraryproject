<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Books extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function author()
    {
        return $this->belongsTo(Authors::class, 'author_id', 'id');
    }

    public function publisher()
    {
        return $this->belongsTo(Publishers::class, 'publisher_id', 'id');
    }

    public function bookcomments()
    {
        return $this->hasMany(Comments::class, 'book_id', 'id');
    }
}
