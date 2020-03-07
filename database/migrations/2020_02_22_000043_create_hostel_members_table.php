<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHostelMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_hostel_members', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('custom_member_id');
            $table->bigInteger('hostel_id')->nullable()->unsigned();
            $table->foreign('hostel_id')
                ->references('id')
                ->on('a1_hostels')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('room_id')->nullable()->unsigned();
            $table->foreign('room_id')
                ->references('id')
                ->on('b1_rooms')
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
        Schema::dropIfExists('c1_hostel_members');
    }
}
