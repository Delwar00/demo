<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmailTemplatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('b1_email_templates', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('role_id')->nullable()->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('title');
            $table->text('template');
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
        Schema::dropIfExists('b1_email_templates');
    }
}
