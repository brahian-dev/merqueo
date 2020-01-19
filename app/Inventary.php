<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inventary extends Model
{
    protected $fillable = [
        'inventary_quantity',
        'inventary_date',
        'product_id'
    ];

    protected $hidden = [
      'created_at',
      'updated_at'
    ];

    public static function getAll($date = null) {
        $query = Inventary::query();
        $query->join('products', 'products.product_id', '=', 'inventaries.product_id');

        if ($date && strpos($date, '-')) {
            $query->where('date', '=', $date);
        } else if ($date && !strpos($date, '-')) {
            return false;
        }
        $query->where('date', '=', '2020-03-03');

        return $query->get();
    }

    public function product(){
        return $this->belongsTo(Product::class);
    }
}
