<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';

    protected $fillable = [
      'order_id',
      'order_priority',
      'order_address',
      'order_deliverable',
      'user_id'
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }
}
