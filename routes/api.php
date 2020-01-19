<?php

use Illuminate\Http\Request;

// Inventory

Route::resource('inventory', 'Inventary\InventaryController')->only(['index', 'show']);

// Product

Route::resource('product', 'Product\ProductController');

// Provider

Route::resource('provider', 'Provider\ProviderController');

// Order

Route::resource('order', 'Order\OrderController');

// User

Route::resource('user', 'User\UserController');
