<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('d1_classes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('teacher_id')->nullable()->unsigned();
            $table->foreign('teacher_id')
                ->references('id')
                ->on('c1_teachers')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('name');
            $table->integer('numeric_name');
            $table->double('monthly_tution_fee')->nullable();
            $table->double('admission_fee')->nullable();
            $table->double('exam_fee')->nullable();
            $table->double('certificate_fee')->nullable();
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
        Schema::dropIfExists('d1_classes');
    }
}
