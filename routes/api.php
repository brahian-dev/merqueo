<?php

use Illuminate\Http\Request;

// Inventory

Route::resource('inventory', 'Inventary\InventaryController')->only(['index', 'show', 'store']);
Route::get('productInventary', 'Inventary\InventaryController@productInventary');

// Product

Route::resource('product', 'Product\ProductController')->only(['show', 'store', 'index']);
Route::get('productWorst', 'Product\ProductController@productWorst');
Route::get('productBest', 'Product\ProductController@productBest');

// Provider

Route::resource('provider', 'Provider\ProviderController')->only(['store']);

// Order

Route::resource('order', 'Order\OrderController')->only(['index', 'show', 'store']);

Route::get('productsEnlisted', 'Order\OrderController@Enlisted');
