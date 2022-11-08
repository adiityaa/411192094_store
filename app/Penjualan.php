<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penjualan extends Model
{
    public $table = "penjualan";
    public $timestamps = false;
    protected $fillable = [
        'no_penjualan', 'tanggal', 'kode_pelanggan', 'kode_barang', 'jumlah_barang', 'harga_barang'
    ];
}
