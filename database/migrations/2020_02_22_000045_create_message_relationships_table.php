<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMessageRelationshipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_message_relationships', function (Blueprint $table) {
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
            $table->integer('owner_id');
            $table->bigInteger('role_id')->nullable()->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->tinyInteger('is_trash');
            $table->smallInteger('is_draft');
            $table->tinyInteger('is_favorite');
            $table->tinyInteger('is_read');
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
        Schema::dropIfExists('message_relationships');
    }
}
