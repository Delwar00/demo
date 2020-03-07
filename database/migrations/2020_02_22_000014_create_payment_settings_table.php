<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_payment_settings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('paypal_api_username');
            $table->string('paypal_api_password');
            $table->string('paypal_api_signature');
            $table->string('paypal_email');
            $table->tinyInteger('paypal_demo');
            $table->double('paypal_extra_charge',10,2);
            $table->tinyInteger('paypal_status');
            $table->string('stripe_secret');
            $table->tinyInteger('stripe_demo');
            $table->double('stripe_extra_charge',10,2);
            $table->tinyInteger('stripe_status');
            $table->string('payumoney_key');
            $table->string('payumoney_salt');
            $table->tinyInteger('payumoney_demo');
            $table->double('payu_extra_charge',10,2);
            $table->tinyInteger('payumoney_status');
            $table->string('ccavenue_key');
            $table->string('ccavenue_salt');
            $table->tinyInteger('ccavenue_demo');
            $table->double('ccavenue_extra_charge',10,2);
            $table->tinyInteger('ccavenue_status');
            $table->string('paytm_merchant_key');
            $table->string('paytm_merchant_mid');
            $table->string('paytm_merchant_website');
            $table->tinyInteger('paytm_demo');
            $table->double('paytm_extra_charge',10,2);
            $table->tinyInteger('paytm_status');
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
        Schema::dropIfExists('a1_payment_settings');
    }
}
