<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggan extends Model
{
    public $table = "pelanggan";
    public $timestamps = false;
    protected $fillable = [
        'kode_pelanggan', 'nama_pelanggan', 'alamat', 'nama_kota', 'no_telepon'
    ];
}
