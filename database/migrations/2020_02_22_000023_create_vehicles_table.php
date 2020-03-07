<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVehiclesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_vehicles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('number');
            $table->string('model')->nullable();
            $table->string('driver')->nullable();
            $table->string('license')->nullable();
            $table->string('contact');
            $table->tinyInteger('is_allocated');
            $table->text('note')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->integer('created_by')->nullable();
            $table->integer('modified_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('a1_vehicles');
    }
}
