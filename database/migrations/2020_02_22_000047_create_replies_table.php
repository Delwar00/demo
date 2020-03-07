<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRepliesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_replies', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('message_id')->nullable()->unsigned();
            $table->foreign('message_id')
                ->references('id')
                ->on('b1_messages')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('sender_id')->nullable()->unsigned();
            $table->foreign('sender_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('receiver_id')->nullable()->unsigned();
            $table->foreign('receiver_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->text('body');
            $table->string('attachment');
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
        Schema::dropIfExists('c1_replies');
    }
}
