<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_teachers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('national_id')->nullable();
            $table->bigInteger('salary_grade_id')->nullable()->unsigned();
            $table->foreign('salary_grade_id')
                ->references('id')
                ->on('a1_salary_grades')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('salary_type');
            $table->string('responsibility');
            $table->string('name');
            $table->string('phone');
            $table->string('present_address')->nullable();
            $table->string('permanent_address')->nullable();
            $table->string('gender');
            $table->string('blood_group')->nullable();
            $table->string('religion')->nullable();
            $table->string('dob');
            $table->string('joining_date');
            $table->string('resign_date')->nullable();
            $table->string('photo')->nullable();
            $table->string('resume')->nullable();
            $table->string('facebook_url')->nullable();
            $table->string('linkedin_url')->nullable();
            $table->string('twitter_url')->nullable();
            $table->string('google_plus_url')->nullable();
            $table->string('instagram_url')->nullable();
            $table->string('youtube_url')->nullable();
            $table->string('pinterest_url')->nullable();
            $table->tinyInteger('is_view_on_web')->nullable();
            $table->text('other_info')->nullable();
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
        Schema::dropIfExists('teachers');
    }
}
