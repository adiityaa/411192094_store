<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePenjualanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penjualan', function (Blueprint $table) {
            $table->increments('id')->length(11);
            $table->string('no_penjualan')->length(15);
            $table->date('tanggal');
            $table->string('kode_pelanggan')->length(25);
            $table->string('kode_barang')->length(25);
            $table->integer('jumlah_barang')->length(11);
            $table->integer('harga_barang')->length(11)->nullable();
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
        Schema::dropIfExists('penjualan');
    }
}
