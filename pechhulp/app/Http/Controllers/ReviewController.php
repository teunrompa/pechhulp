<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Review;

class ReviewController extends Controller
{
    public function index(){
        $reviews = Review::all();
        return view('review.index', [
            'reviews' => $reviews,
        ]);
    }
}
