<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLanguagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_languages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('label');
            $table->longText('english');
            $table->longText('bengali');
            $table->longText('spanish');
            $table->longText('arabic');
            $table->longText('hindi');
            $table->longText('urdu');
            $table->longText('chinese');
            $table->longText('japanese');
            $table->longText('portuguese');
            $table->longText('russian');
            $table->longText('french');
            $table->longText('korean');
            $table->longText('german');
            $table->longText('italian');
            $table->longText('thai');
            $table->longText('hungarian');
            $table->longText('dutch');
            $table->longText('latin');
            $table->longText('indonesian');
            $table->longText('turkish');
            $table->longText('greek');
            $table->longText('persian');
            $table->longText('malay');
            $table->longText('telugu');
            $table->longText('tamil');
            $table->longText('gujarati');
            $table->longText('polish');
            $table->longText('ukrainian');
            $table->longText('panjabi');
            $table->longText('romanian');
            $table->longText('burmese');
            $table->longText('yoruba');
            $table->longText('hausa');

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
        Schema::dropIfExists('a1_languages');
    }
}
