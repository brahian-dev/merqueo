<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $primaryKey = 'order_id';

    protected $fillable = [
      'order_id',
      'order_priority',
      'order_address',
      'order_deliverable',
      'user_id'
    ];

    public static function productsEnlisted() {
        $query = order_product::query();
        $query->select('products.product_name', 'order_product.quantity', 'order_product.transporter_name');
        $query->join('products', 'products.product_id', '=', 'order_product.product_id');

        return $query->get();
    }

    public function user() {
        return $this->belongsTo(User::class);
    }
}
