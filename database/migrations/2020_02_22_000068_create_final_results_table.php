<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFinalResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('f1_final_results', function (Blueprint $table) {
            $table->bigIncrements('id');
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
            $table->string('total_subject');
            $table->string('total_mark');
            $table->string('total_obtain_mark');
            $table->float('avg_grade_point',5,2);
            $table->bigInteger('grade_id')->nullable()->unsigned();
            $table->foreign('grade_id')
                ->references('id')
                ->on('a1_grades')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('result_status');
            $table->string('merit_rank_in_class');
            $table->string('merit_rank_in_section');
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
        Schema::dropIfExists('f1_final_results');
    }
}
