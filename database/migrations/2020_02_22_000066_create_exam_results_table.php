<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExamResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('f1_exam_results', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('exam_id')->nullable()->unsigned();
            $table->foreign('exam_id')
                ->references('id')
                ->on('b1_exams')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('class_id')->nullable()->unsigned();
            $table->foreign('class_id')
                ->references('id')
                ->on('d1_classes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('section_id')->nullable()->unsigned();
            $table->foreign('section_id')
                ->references('id')
                ->on('e1_sections')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('student_id')->nullable()->unsigned();
            $table->foreign('student_id')
                ->references('id')
                ->on('d1_students')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->integer('total_subject');
            $table->integer('total_mark');
            $table->integer('total_obtain_mark');
            $table->float('avg_grade_point', 5, 2);
            $table->integer('grade_id');
            $table->string('result_status');
            $table->string('remark');
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
        Schema::dropIfExists('f1_exam_results');
    }
}
