<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalaryGradesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_salary_grades', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('grade_name');
            $table->double('basic_salary',10,2);
            $table->double('house_rent',10,2)->nullable();
            $table->double('transport',10,2)->nullable();
            $table->double('medical',10,2)->nullable();
            $table->double('over_time_hourly_rate',10,2)->nullable();
            $table->double('provident_fund',10,2)->nullable();
            $table->double('hourly_rate',10,2);
            $table->double('total_allowance',10,2)->nullable();
            $table->double('total_deduction',10,2)->nullable();
            $table->double('gross_salary',10,2)->nullable();
            $table->double('net_salary',10,2)->nullable();
            $table->text('note')->nullable();
            $table->string('user_agent');
            $table->text('activity');
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
        Schema::dropIfExists('a1_salary_grades');
    }
}
