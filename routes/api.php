<?php

use App\Http\Controllers\Api\CategoriesController;
use App\Http\Controllers\Api\SettingController;
use App\Http\Controllers\website\PostController;
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

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::get('/',function ()
{
 return 1;
});

Route::get('/settings', [SettingController::class, 'index']);
Route::get('/nav-categories', [CategoriesController::class, 'navbarCategories']);
Route::get('/index-page-categories', [CategoriesController::class, 'indexPageCategoriesWithPost']);
