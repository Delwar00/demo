<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSmsSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_sms_settings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('clickatell_username');
            $table->string('clickatell_password');
            $table->string('clickatell_api_key');
            $table->string('clickatell_from_number');
            $table->tinyInteger('clickatell_status');
            $table->string('twilio_account_sid');
            $table->string('twilio_auth_token');
            $table->string('twilio_from_number');
            $table->string('clickatell_mo_no');
            $table->tinyInteger('twilio_status');
            $table->string('bulk_username');
            $table->string('bulk_password');
            $table->tinyInteger('bulk_status');
            $table->string('msg91_auth_key');
            $table->string('msg91_sender_id');
            $table->string('msg91_status');
            $table->string('plivo_auth_id');
            $table->string('plivo_auth_token');
            $table->string('plivo_from_number');
            $table->tinyInteger('plivo_status');
            $table->string('textlocal_username');
            $table->string('textlocal_hash_key');
            $table->string('textlocal_sender_id');
            $table->tinyInteger('textlocal_status');
            $table->string('smscountry_username');
            $table->string('smscountry_password');
            $table->string('smscountry_sender_id');
            $table->tinyInteger('smscountry_status');
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
        Schema::dropIfExists('a1_sms_settings');
    }
}
