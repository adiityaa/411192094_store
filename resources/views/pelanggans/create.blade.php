@extends('pelanggans.layout')

@section('content')
<div class="row align-items-md-center">
    <div class="col-lg-6">
        <h2>Tambah Pelanggan</h2>
    </div>
    <div class="col-lg-6">
        <a class="btn btn-primary" href="{{ route('pelanggans.index') }}">Kembali</a>
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

<form action="{{ route('pelanggans.store') }}" method="POST">
    @csrf

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Kode Pelanggan :</strong>
                <?php
                $kode = 'P';
                $angka = mt_rand(0000, 9999);

                $kodepelanggan = $kode . $angka;
                ?>
                <input type="text" name="kode_pelanggan" class="form-control" value="{{$kodepelanggan}}" readonly>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Pelanggan :</strong>
                <input type="text" name="nama_pelanggan" class="form-control" placeholder="Nama Pelanggan">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Alamat :</strong>
                <textarea class="form-control" name="alamat" rows="4"></textarea>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nama Kota :</strong>
                <input type="text" name="nama_kota" class="form-control" placeholder="Nama Kota">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>No Telepon :</strong>
                <input type="number" name="no_telepon" class="form-control" placeholder="Nomor Telepon">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>

</form>
@endsection