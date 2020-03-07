<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOperationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('b1_operations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('module_id')->nullable()->unsigned();
            $table->foreign('module_id')
                ->references('id')
                ->on('a1_modules')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('operation_name');
            $table->string('operation_slug');
            $table->tinyInteger('is_view_vissible');
            $table->tinyInteger('is_add_vissible');
            $table->tinyInteger('is_edit_vissible');
            $table->tinyInteger('is_delete_vissible');
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
        Schema::dropIfExists('b1_operations');
    }
}
