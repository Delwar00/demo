<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMarkEmailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('e1_mark_emails', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('exam_id')->nullable()->unsigned();
            $table->foreign('exam_id')
                ->references('id')
                ->on('b1_exams')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('class_id')->nullable()->unsigned();
            $table->foreign('class_id')
                ->references('id')
                ->on('d1_classes')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('role_id')->nullable()->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->text('receivers');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('sender_role_id')->nullable()->unsigned();
            $table->foreign('sender_role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('subject');
            $table->text('body');
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
        Schema::dropIfExists('e1_mark_emails');
    }
}
