<?php

use App\Livewire\{
    Dashboard,
    Profile
};

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;

// Unprotected Routes
Route::controller(AuthController::class)->group(function () {
    Route::get('/my-admin', 'loadLogin')->name('load.login');
    Route::post('/login', 'postLogin')->name('post.login');
    Route::get('/login', function () {
        return redirect()->route('load.login');
    })->name('login');
    Route::get('/admin/dashboard', function () {
        return redirect()->route('load.login');
    });
});

// Protected Routes
Route::group(['prefix' => 'admin/', 'middleware' => ['web', 'auth', 'is_admin']], function () {
    Route::controller(AuthController::class)->group(function () {
        Route::get('dashboard', 'dashboard')->name('dashboard');

        Route::post('update-profile', 'updateProfile')->name('update.profile');
        Route::get('logout', 'logout')->name('logout');
    });

    // Livewire Routes
    Route::get('dashboad', Dashboard::class)->name('dashboard');
    Route::get('profile', Profile::class)->name('profile');
});

Route::fallback(function () {
    return view('errors.404');
});
