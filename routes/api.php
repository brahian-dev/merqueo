<?php

use Illuminate\Http\Request;

// Inventory

Route::resource('inventory', 'Inventary\InventaryController')->only(['index', 'show', 'store']);

// Product

Route::resource('product', 'Product\ProductController')->only(['store']);

// Provider

Route::resource('provider', 'Provider\ProviderController')->only(['store']);

// Order

Route::resource('order', 'Order\OrderController')->only(['index', 'show', 'store']);

// User

Route::resource('user', 'User\UserController');
