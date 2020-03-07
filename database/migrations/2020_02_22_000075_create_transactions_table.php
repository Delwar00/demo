<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('f1_transactions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('invoice_id')->nullable()->unsigned();
            $table->foreign('invoice_id')
                ->references('id')
                ->on('e1_invoices')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->decimal('amount',10,2);
            $table->string('payment_method');
            $table->string('bank_name');
            $table->string('cheque_no');
            $table->string('transaction_id');
            $table->string('payment_date');
            $table->string('pum_first_name');
            $table->string('pum_email');
            $table->string('pum_phone');
            $table->string('stripe_card_number');
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
        Schema::dropIfExists('f1_transactions');
    }
}
