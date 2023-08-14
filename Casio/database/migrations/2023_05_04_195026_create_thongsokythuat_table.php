<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thongsokythuat', function (Blueprint $table) {
            $table->id();

            //các thuộc tính của bảng
            $table->string('TenTS');
            $table->string('MoTa');
            $table->string('MaSP');

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
        Schema::dropIfExists('thongsokythuat');
    }
};
