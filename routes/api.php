<?php

use App\Http\Controllers\Auth\ApiAuthController;
use App\Http\Controllers\TaskController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => ['cors', 'json.response']], function () {

    // public routes
    Route::post('/login', [ApiAuthController::class,'login'])->name('login.api');
    Route::post('/register',[ApiAuthController::class,'register'])->name('register.api');
    Route::middleware('auth:api')->group(function () {
        // our routes to be protected
        Route::get('tasks',[TaskController::class,'index']);
        Route::post('tasks',[TaskController::class,'store']);
        Route::get('tasks/complete/{id}',[TaskController::class,'updateStatus']);
        Route::put('tasks/{id}',[TaskController::class,'update']);
        Route::delete('tasks/{id}',[TaskController::class,'destroy']);
        Route::post('/logout', [ApiAuthController::class,'logout'])->name('logout.api');

    });
});
