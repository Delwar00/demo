<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('a1_books', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('custom_id');
            $table->string('title');
            $table->string('isbn_no')->nullable();
            $table->string('edition')->nullable();
            $table->string('author')->nullable();
            $table->string('language')->nullable();
            $table->decimal('price')->nullable();
            $table->integer('qty');
            $table->string('cover')->nullable();
            $table->string('rack_no')->nullable();
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
        Schema::dropIfExists('a1_books');
    }
}
