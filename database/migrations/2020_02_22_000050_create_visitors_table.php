<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVisitorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('c1_visitors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('academic_year_id')->nullable()->unsigned();
            $table->foreign('academic_year_id')
                ->references('id')
                ->on('a1_academic_years')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('role_id')->nullable()->unsigned();
            $table->foreign('role_id')
                ->references('id')
                ->on('a1_roles')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->bigInteger('user_id')->nullable()->unsigned();
            $table->foreign('user_id')
                ->references('id')
                ->on('b1_users')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('name');
            $table->string('phone');
            $table->string('coming_from');
            $table->string('reason');
            $table->string('check_in');
            $table->string('check_out');
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
        Schema::dropIfExists('c1_visitors');
    }
}
