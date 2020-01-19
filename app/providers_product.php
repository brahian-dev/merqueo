<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class providers_product extends Model
{
    protected $table = 'provider_product';
    protected $primaryKey = 'provider_id';
    public $timestamps = false;

    protected $fillable = [
      'provider_id',
      'product_id'
    ];
}
