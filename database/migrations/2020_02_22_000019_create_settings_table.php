<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_settings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('school_code')->nullable();
            $table->string('school_name');
            $table->string('address');
            $table->string('phone');
            $table->string('email');
            $table->string('currency');
            $table->string('currency_symbol');
            $table->string('language');
            $table->text('footer');
            $table->string('logo')->nullable();
            $table->string('session_start_month');
            $table->string('session_end_month');

            $table->string('running_year');
            $table->string('school_fax')->nullable();
            $table->string('school_geocode');
            $table->tinyInteger('enable_rtl');
            $table->tinyInteger('enable_frontend');
            $table->tinyInteger('final_result_type');

            $table->string('default_time_zone');
            $table->string('sms_date_format');
            $table->string('facebook_url')->nullable();
            $table->string('twitter_url')->nullable();
            $table->string('linkedin_url')->nullable();
            $table->string('google_plus_url')->nullable();
            $table->string('youtube_url')->nullable();
            $table->string('instagram_url')->nullable();
            $table->string('pinterest_url')->nullable();
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
        Schema::dropIfExists('a1_settings');
    }
}
