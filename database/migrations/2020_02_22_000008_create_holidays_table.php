<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHolidaysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_holidays', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->string('date_from');
            $table->string('date_to');
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
        Schema::dropIfExists('a1_holidays');
    }
}
