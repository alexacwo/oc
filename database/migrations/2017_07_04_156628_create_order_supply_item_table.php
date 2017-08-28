<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderSupplyItemTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_supply_item', function(Blueprint $table)
        {
            $table->increments('id');
            $table->integer('order_id')->unsigned();
            $table->integer('supply_item_id')->unsigned();

            $table->foreign('order_id')->references('id')->on('orders');
            $table->foreign('supply_item_id')->references('id')->on('supply_items');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('order_supply_item', function (Blueprint $table) {
            //
        });
    }
}
