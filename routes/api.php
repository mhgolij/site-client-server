<?php

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
Route::any('/requestToJoin',function(Request $request){
    $data = $request->email;
    info($data);
    return response()->json(["status"=>"success"]);
})->middleware('cors');
Route::any('/sendReq', function (Request $request) {
    info($request->all());
    return response()->json(["status" =>"success"]);
})->middleware('cors');
