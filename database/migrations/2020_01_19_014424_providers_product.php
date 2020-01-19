<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ProvidersProduct extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('provider_product', function (Blueprint $table) {
          $table->unsignedBigInteger('provider_id');
          $table->unsignedBigInteger('product_id');

          $table->foreign('provider_id')->references('provider_id')->on('providers')->onDelete('cascade');
          $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('provider_product');
    }
}
