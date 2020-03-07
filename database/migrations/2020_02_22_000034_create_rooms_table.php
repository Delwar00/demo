<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('b1_rooms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('hostel_id')->nullable()->unsigned();
            $table->foreign('hostel_id')
                ->references('id')
                ->on('a1_hostels')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('room_no');
            $table->string('room_type');
            $table->string('total_seat');
            $table->decimal('cost',10,2)->nullable();
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
        Schema::dropIfExists('b1_rooms');
    }
}
