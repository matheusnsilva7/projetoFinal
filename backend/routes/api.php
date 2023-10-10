<?php

use App\Http\Controllers\LinkController;
use App\Http\Controllers\LogController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Auth;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\MemberController;
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

Route::get("/users", [UserController::class, "index"]);
Route::post("/users", [UserController::class, "store"]);
Route::get("/users/{id}", [UserController::class, "show"]);
Route::patch("/users/{id}", [UserController::class, "update"]);
Route::delete("/users/{id}", [UserController::class, "destroy"]);

Route::get("/roles", [RoleController::class, "index"]);
Route::post("/roles", [RoleController::class, "store"]);
Route::get("/roles/{id}", [RoleController::class, "show"]);
Route::patch("/roles/{id}", [RoleController::class, "update"]);
Route::delete("/roles/{id}", [RoleController::class, "destroy"]);

Route::get("/links", [LinkController::class, "index"]);
Route::post("/links", [LinkController::class, "store"]);
Route::get("/links/{id}", [LinkController::class, "show"]);
Route::patch("/links/{id}", [LinkController::class, "update"]);
Route::delete("/links/{id}", [LinkController::class, "destroy"]);

Route::get("/log", [LogController::class, "index"]);
Route::post("/log", [LogController::class, "store"]);
Route::get("/log/{id}", [LogController::class, "show"]);
Route::patch("/log/{id}", [LogController::class, "update"]);
Route::delete("/log/{id}", [LogController::class, "destroy"]);

Route::get("/members", [MemberController::class, "index"]);
Route::post("/members", [MemberController::class, "store"]);
Route::get("/members/{id}", [MemberController::class, "show"]);
Route::patch("/members/{id}", [MemberController::class, "update"]);
Route::delete("/members/{id}", [MemberController::class, "destroy"]);



Route::post('/login', [LoginController::class, 'login']);
Route::post('/register', [RegisterController::class, 'register']);
Route::post('/logout', [LoginController::class, 'logout']);
Route::get('/checkAuthStatus', [LoginController::class, 'checkAuthStatus']);

//Route::post('/register', 'App\Http\Controllers\Auth\RegisterController@register');

//Route::post('/login', 'App\Http\Controllers\Auth\LoginController@login');

//Route::post('/logout', 'App\Http\Controllers\Auth\LoginController@logout');
