<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('e1_subjects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('class_id')->nullable()->unsigned();
            $table->foreign('class_id')
                ->references('id')
                ->on('d1_classes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('teacher_id')->nullable()->unsigned();
            $table->foreign('teacher_id')
                ->references('id')
                ->on('c1_teachers')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('type')->nullable();
            $table->string('name');
            $table->string('code')->nullable();
            $table->string('author')->nullable();
            $table->integer('pass_mark');
            $table->integer('full_mark');
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
        Schema::dropIfExists('e1_subjects');
    }
}
