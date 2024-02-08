<?php

use App\Http\Controllers\FabriekController;
use App\Http\Controllers\KlantController;
use App\Http\Controllers\MachinesController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PlanningController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductielijnController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function () {
    return response()->json(['message' => 'Alive and kicking']);
});

Route::get('/klanten', [KlantController::class, 'index']);
Route::get('/klanten/{id}', [KlantController::class, 'show']);

Route::get('/fabrieken', [FabriekController::class, 'index']);
Route::get('/fabrieken/{id}', [FabriekController::class, 'show']);

Route::get('/machines', [MachinesController::class, 'index']);
Route::get('/machines/{id}', [MachinesController::class, 'show']);

Route::get('/orders', [OrderController::class, 'index']);
Route::get('/orders/{id}', [OrderController::class, 'show']);

Route::get('/orders', [OrderController::class, 'index']);
Route::get('/orders/{id}', [OrderController::class, 'show']);

Route::get('/plannings', [PlanningController::class, 'index']);
Route::get('/plannings/{id}', [PlanningController::class, 'show']);

Route::get('/producten', [ProductController::class, 'index']);
Route::get('/producten/{id}', [ProductController::class, 'show']);

Route::get('/productielijnen', [ProductielijnController::class, 'index']);
Route::get('/productielijnen/{id}', [ProductielijnController::class, 'show']);
