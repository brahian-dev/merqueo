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
            $query->where('inventaries.date', '=', $date);
        } else if ($date && !strpos($date, '-')) {
            return false;
        }
        $query->where('inventaries.date', '=', '2019-03-01');

        return $query->get();
    }

    public static function getInventoryAfter() {
        $query = Inventary::query();
        $query->join('products', 'products.product_id', '=', 'inventaries.product_id');
        $query->where('inventaries.date', '=', '2019-03-02');

        return $query->get();
    }

    public function product(){
        return $this->belongsTo(Product::class);
    }
}
