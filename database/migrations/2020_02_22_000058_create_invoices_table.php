<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('e1_invoices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('income_head_id')->nullable()->unsigned();
            $table->foreign('income_head_id')
                ->references('id')
                ->on('b1_income_heads')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('custom_invoice_id');
            $table->string('invoice_type');
            $table->tinyInteger('is_applicable_discount');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('class_id')->nullable()->unsigned();
            $table->foreign('class_id')
                ->references('id')
                ->on('d1_classes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('student_id')->nullable()->unsigned();
            $table->foreign('student_id')
                ->references('id')
                ->on('d1_students')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('month');
            $table->double('gross_amount',10,2);
            $table->double('net_amount',10,2);
            $table->decimal('discount',10,2);
            $table->string('paid_status');
            $table->double('temp_amount',10,2);
            $table->string('date');
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
        Schema::dropIfExists('e1_invoices');
    }
}
