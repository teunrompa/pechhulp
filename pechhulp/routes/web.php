<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GarageController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PechMeldingController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, "index"])->name("home");

Route::get('/dashboard', [DashboardController::class, "index"])->name("dashboard");

Route::get('/garages', [GarageController::class, "index"])->name("garages");

Route::get('/reviews', [ReviewController::class, "index"])->name("reviews");

Route::get('/admin', [AdminController::class, "index"])->name("admin")->middleware(["admin"]);

Route::get('/pechmelding', [PechMeldingController::class, "index"])->name("pechmelding")->middleware(["auth"]);
Route::put('/pechmelding', [PechMeldingController::class, "store"])->middleware(["auth"]);

require __DIR__.'/auth.php';
