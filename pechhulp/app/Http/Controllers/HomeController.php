<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContractType;

class HomeController extends Controller
{
    public function index(){
        $contactTypes = ContractType::all();
        return view('home.index', [
            "contractTypes" => $contactTypes,
        ]);
    }
}
