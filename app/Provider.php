<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Provider extends Model
{
    protected $table = 'providers';
    protected $primaryKey = 'provider_id';

    protected $fillable = [
        'provider_id',
        'provider_name'
    ];
}
