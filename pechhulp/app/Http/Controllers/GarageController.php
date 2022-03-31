<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Garage;

class GarageController extends Controller
{
    public function index(){
        $garages = Garage::all();
        return view('garage.index', [
            "garages" => $garages,
        ]);
    }
}
