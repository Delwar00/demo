<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRouteStopsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('b1_route_stops', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('route_id')->nullable()->unsigned();
            $table->foreign('route_id')
                ->references('id')
                ->on('a1_routes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('stop_name');
            $table->string('stop_km');
            $table->double('stop_fare',10,2);
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
        Schema::dropIfExists('b1_route_stops');
    }
}
