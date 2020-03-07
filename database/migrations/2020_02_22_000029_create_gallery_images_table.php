<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGalleryImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //yes
    public function up()
    {
        Schema::create('b1_gallery_images', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('gallery_id')->nullable()->unsigned();
            $table->foreign('gallery_id')
                ->references('id')
                ->on('a1_galleries')
                ->onUpdate('cascade')
                ->onDelete('restrict');
            $table->string('image');
            $table->string('caption')->nullable();
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
        Schema::dropIfExists('b1_gallery_images');
    }
}
