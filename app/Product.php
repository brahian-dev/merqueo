<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $table = 'products';
    protected $primaryKey = 'product_id';

    public static function productWorst() {
        $query = Inventary::query();
        $query->select('products.product_id', 'products.product_name', 'inventaries.inventary_quantity');
        $query->join('products', 'products.product_id', '=', 'inventaries.product_id');
        $query->where('date', '=', '2019-03-01');
        $query->where('inventary_quantity', '>', 0);
        $query->max('inventary_quantity');

        return $query->get();
    }

    public static function productBest() {
        $query = Inventary::query();
        $query->select('products.product_id', 'products.product_name', 'inventaries.inventary_quantity');
        $query->join('products', 'products.product_id', '=', 'inventaries.product_id');
        $query->where('date', '=', '2019-03-01');
        $query->where('inventary_quantity', '<=', 10);
        $query->min('inventary_quantity');

        return $query->get();
    }

    public static function getProductsOrder($id) {
        $query = Product::query();
        $query->select('order_product.order_id', 'products.product_id', 'products.product_name', 'order_product.quantity');
        $query->join('order_product', 'order_product.product_id', '=', 'products.product_id');
        $query->where('order_product.order_id', '=', $id);

        return $query->get();
    }

    protected $fillable = [
      'product_id',
      'product_name'
    ];
}
