@extends('barangs.layout')

@section('content')
<div class="row align-items-md-center">
    <div class="col-lg-6">
        <h2>Tambah Barang</h2>
    </div>
    <div class="col-lg-6">
        <a class="btn btn-primary" href="{{ route('barangs.index') }}">Kembali</a>
    </div>
</div>

@if ($errors->any())
<div class="alert alert-danger">
    <strong>Whoops!</strong> Ada kesalahan pada masukkan form .<br><br>
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<form action="{{ route('barangs.store') }}" method="POST">
    @csrf

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Kode Barang :</strong>
                <?php
                $kode = 'B';
                $angka = mt_rand(0000, 9999);

                $kodeBarang = $kode . $angka;
                ?>
                <input type="text" name="kode_barang" class="form-control" value="{{$kodeBarang}}" readonly>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Barang :</strong>
                <input type="text" name="nama_barang" class="form-control" placeholder="Nama Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Deskripsi :</strong>
                <textarea class="form-control" name="deskripsi" rows="4"></textarea>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Stok Barang :</strong>
                <input type="number" name="stok_barang" class="form-control" placeholder="Stok Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Harga Barang :</strong>
                <input type="number" name="harga_barang" class="form-control" placeholder="Harga Barang">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>

</form>
@endsection