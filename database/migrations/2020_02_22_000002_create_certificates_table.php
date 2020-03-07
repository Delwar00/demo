<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCertificatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_certificates', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('theme');
            $table->string('top_title');
            $table->string('sub_title_left')->nullable();
            $table->string('sub_title_middle')->nullable();
            $table->string('sub_title_right')->nullable();
            $table->text('main_text');
            $table->string('footer_left')->nullable();
            $table->string('footer_middle')->nullable();
            $table->string('footer_right')->nullable();
            $table->string('background')->nullable();
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
        Schema::dropIfExists('a1_certificates');
    }
}
