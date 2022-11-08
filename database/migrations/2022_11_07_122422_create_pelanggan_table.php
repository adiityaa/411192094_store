<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePelangganTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelanggan', function (Blueprint $table) {
            $table->increments('id')->length(11);
            $table->string('kode_pelanggan')->length(10);
            $table->string('nama_pelanggan')->length(200)->nullable();
            $table->text('alamat')->nullable();
            $table->string('nama_kota')->length(25);
            $table->string('no_telepon')->length(15)->nullable();
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pelanggan');
    }
}
