<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/categories', function () {
    $categories = DB::table('categories')->whereNull('parent_id')->select("name","id")->get()->toArray();
    return response()->json( $categories);
})->middleware('cors');
Route::get('/categories/{id}', function ($id) {
    $categories = DB::table('categories')->where('parent_id',$id)->select("name","id")->get()->toArray();
    return response()->json( $categories);
})->middleware('cors');
Route::get('/category/{id}', function ($id) {
    $category = DB::table('categories')
    ->join("posts","posts.category_id","categories.id")
    ->where("categories.id",$id)->where("code","post")
    ->select("posts.title",'categories.name as cat_title',
    "posts.slug","posts.image", "posts.id as post_id",
    "mid_title","description")->get()->toArray();
    return response()->json( $category);
})->middleware('cors');
Route::get('/sliders/{code}', function ($code) {
    $sliders = DB::table('sliders')->where('code',$code)
    ->select("code","url","id")->get()->toArray();
    return response()->json( $sliders);
})->middleware('cors');
Route::get('/posts', function (Request $request) {
    $posts = DB::table('posts')
    ->where('code',$request->code ?? "post")
    ->select(
        "image","title","mid_title","full_text",
        "description","slug","id")
        ->take($request->limit ?? 3)->get()
        ->toArray();
    return response()->json( $posts);
})->middleware('cors');
Route::get('/post/{slug}', function ($slug) {

    $posts = DB::table('posts')
    ->where('code',"post")
    ->select(
        "image","title","mid_title","full_text",
        "description","slug","id")
        ->where("slug",$slug)->first();
    return response()->json( $posts);
})->middleware('cors');
