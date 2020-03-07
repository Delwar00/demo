<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('d1_students', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('admission_no');
            $table->string('admission_date');
            $table->bigInteger('guardian_id')->nullable()->unsigned();
            $table->foreign('guardian_id')
                ->references('id')
                ->on('c1_guardians')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('relation_with')->nullable();
            $table->string('registration_no')->nullable();
            $table->string('group')->nullable();
            $table->string('name');
            $table->string('phone');
            $table->string('present_address')->nullable();
            $table->string('permanent_address')->nullable();
            $table->string('gender');
            $table->string('blood_group')->nullable();
            $table->string('religion')->nullable();
            $table->string('dob');
            $table->integer('age')->nullable();
            $table->string('photo')->nullable();
            $table->text('other_info')->nullable();
            $table->tinyInteger('is_library_member')->nullable();
            $table->tinyInteger('is_hostel_member')->nullable();
            $table->tinyInteger('is_transport_member')->nullable();
            $table->bigInteger('discount_id')->nullable()->unsigned();
            $table->foreign('discount_id')
                ->references('id')
                ->on('a1_discounts')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('previous_school')->nullable();
            $table->integer('previous_class')->nullable();
            $table->string('transfer_certificate')->nullable();
            $table->text('health_condition')->nullable();
            $table->string('national_id')->nullable();
            $table->string('second_language')->nullable();
            $table->string('father_name')->nullable();
            $table->string('father_phone')->nullable();
            $table->string('father_education')->nullable();
            $table->string('father_profession')->nullable();
            $table->string('father_designation')->nullable();
            $table->string('father_photo')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('mother_phone')->nullable();
            $table->string('mother_education')->nullable();
            $table->string('mother_profession')->nullable();
            $table->string('mother_designation')->nullable();
            $table->string('mother_photo')->nullable();
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
        Schema::dropIfExists('d1_students');
    }
}
