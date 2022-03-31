<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PechMeldingController extends Controller
{

    public function index(){
        return view('pechmelding.index');
    }

    public function store(Request $request){
        dd($request);
    }
}
