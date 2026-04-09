<?php

use Illuminate\Support\Facades\Route;
use Laravel\Fortify\Features;

Route::inertia('/', 'Portfolio')->name('home');

require __DIR__.'/settings.php';
