<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransportMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_transport_members', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('route_id')->nullable()->unsigned();
            $table->foreign('route_id')
                ->references('id')
                ->on('a1_routes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('route_stop_id')->nullable()->unsigned();
            $table->foreign('route_stop_id')
                ->references('id')
                ->on('b1_route_stops')
                ->onUpdate('cascade')
                ->onDelete('restrict');
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
        Schema::dropIfExists('c1_transport_members');
    }
}
