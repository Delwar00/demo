<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalaryPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('d1_salary_payments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('salary_grade_id')->nullable()->unsigned();
            $table->foreign('salary_grade_id')
                ->references('id')
                ->on('a1_salary_grades')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('expenditure_id')->nullable()->unsigned();
            $table->foreign('expenditure_id')
                ->references('id')
                ->on('c1_expenditures')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->integer('salary_type');
            $table->string('salary_month');
            $table->double('basic_salary',10,2);
            $table->double('house_rent',10,2);
            $table->double('transport',10,2);
            $table->double('medical',10,2);
            $table->double('bonus',10,2);
            $table->double('over_time_hourly_rate',10,2);
            $table->double('over_time_total_hour',10,2);
            $table->double('over_time_amount',10,2);
            $table->double('provident_fund',10,2);
            $table->double('penalty',10,2);
            $table->double('hourly_rate',10,2);
            $table->double('total_hour',10,2);
            $table->double('gross_salary',10,2);
            $table->double('total_allowance',10,2);
            $table->double('total_deduction',10,2);
            $table->double('net_salary',10,2);
            $table->double('payment_method',10,2);
            $table->double('cheque_no',10,2);
            $table->double('bank_name',10,2);
            $table->double('payment_to',10,2);
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
        Schema::dropIfExists('d1_salary_payments');
    }
}
