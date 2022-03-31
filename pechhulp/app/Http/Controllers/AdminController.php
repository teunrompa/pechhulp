<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

use App\Models\Garage;
use App\Models\SupportCall;
use App\Models\Review;

use Carbon\Carbon;

class AdminController extends Controller
{
    public function index(){
        $garages = Garage::all();

        //Get the completed support calls
        $completedSupportCalls = SupportCall::select(['garages.name', DB::raw('COUNT(support_call.id) as amount')])
            ->join('garages', 'garages.id', 'support_call.garage_id')
            ->where('status', 'Done')
            ->groupBy('garages.name')->get();

        //get the reviews
        $reviews = Review::select('rating')->get();

        return view('admin.index', [
            'garages' => $garages,
            'completedSupportCalls' => $completedSupportCalls,
            'reviews' => $reviews
        ]);
    }
}
