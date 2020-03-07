<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePrivilegesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_privileges', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('role_id')->nullable()->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('operation_id')->nullable()->unsigned();
            $table->foreign('operation_id')
                ->references('id')
                ->on('b1_operations')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->tinyInteger('is_add');
            $table->tinyInteger('is_edit');
            $table->tinyInteger('is_view');
            $table->tinyInteger('is_delete');
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
        Schema::dropIfExists('c1_privileges');
    }
}
