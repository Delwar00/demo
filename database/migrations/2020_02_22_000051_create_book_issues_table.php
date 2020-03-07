<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookIssuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('d1_book_issues', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('academic_year_id');
            $table->integer('library_member_id');
            $table->integer('book_id');
            $table->string('issue_date');
            $table->string('due_date');
            $table->string('return_date');
            $table->tinyInteger('is_returned');
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
        Schema::dropIfExists('d1_book_issues');
    }
}
