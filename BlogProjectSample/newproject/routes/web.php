<?php

use App\Http\Controllers\BiztroxController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

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

Route::get('/',[BiztroxController::class, 'index'])->name('home');
Route::get('/blog-category/{id}',[BiztroxController::class, 'category'])->name('blog-category');
Route::get('/blog-detail/{id}',[BiztroxController::class, 'detail'])->name('blog-detail');

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    
    Route::get('/add-category', [CategoryController::class, 'index'])->name('category.add');
    Route::post('/new-category', [CategoryController::class, 'create'])->name('category.new');
    Route::get('/manage-category', [CategoryController::class, 'manage'])->name('category.manage');
    Route::get('/edit-category/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/update-category/{id}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/delete-category/{id}', [CategoryController::class, 'delete'])->name('category.delete');

    Route::get('/add-blog', [BlogController::class, 'index'])->name('blog.add');
    Route::post('/new-blog', [BlogController::class, 'create'])->name('blog.new');
    Route::get('/manage-blog', [BlogController::class, 'manage'])->name('blog.manage');
    Route::get('/detail-blog-info/{id}', [BlogController::class, 'detail'])->name('blog.detail');
    Route::get('/update-blog-status/{id}', [BlogController::class, 'updateStatus'])->name('blog.status');
    Route::get('/edit-blog/{id}', [BlogController::class, 'edit'])->name('blog.edit');
    Route::post('/update-blog/{id}', [BlogController::class, 'update'])->name('blog.update');
    Route::get('/delete-blog/{id}', [BlogController::class, 'delete'])->name('blog.delete');
    
    Route::get('/add-user', [UserController::class, 'index'])->name('user.add');
    Route::post('/new-user', [UserController::class, 'create'])->name('user.new');
    Route::get('/manage-user', [UserController::class, 'manage'])->name('user.manage');
    Route::get('/edit-user/{id}', [UserController::class, 'edit'])->name('user.edit');
    Route::post('/update-user/{id}', [UserController::class, 'update'])->name('user.update');
    Route::get('/delete-user/{id}', [UserController::class, 'delete'])->name('user.delete');
});
